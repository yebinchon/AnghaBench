
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {scalar_t__ p_proto; int p_name; } ;
struct filterent {scalar_t__ f_srcop; scalar_t__ f_dstop; int f_estab; int f_syn; int f_finrst; scalar_t__ f_srcport; scalar_t__ f_dstport; } ;


 scalar_t__ IPPROTO_TCP ;
 int LogWARN ;
 scalar_t__ OP_NONE ;
 void* ParsePort (char const* const,int ) ;
 void* filter_Nam2Op (char const* const) ;
 int log_Printf (int ,char*,...) ;
 int strcmp (char const* const,char*) ;

__attribute__((used)) static int
ParseUdpOrTcp(int argc, char const *const *argv, const struct protoent *pe,
              struct filterent *tgt)
{
  tgt->f_srcop = tgt->f_dstop = OP_NONE;
  tgt->f_estab = tgt->f_syn = tgt->f_finrst = 0;

  if (argc >= 3 && !strcmp(*argv, "src")) {
    tgt->f_srcop = filter_Nam2Op(argv[1]);
    if (tgt->f_srcop == OP_NONE) {
      log_Printf(LogWARN, "ParseUdpOrTcp: bad operator\n");
      return 0;
    }
    if (pe == ((void*)0))
      return 0;
    tgt->f_srcport = ParsePort(argv[2], pe->p_name);
    if (tgt->f_srcport == 0)
      return 0;
    argc -= 3;
    argv += 3;
  }

  if (argc >= 3 && !strcmp(argv[0], "dst")) {
    tgt->f_dstop = filter_Nam2Op(argv[1]);
    if (tgt->f_dstop == OP_NONE) {
      log_Printf(LogWARN, "ParseUdpOrTcp: bad operator\n");
      return 0;
    }
    if (pe == ((void*)0))
      return 0;
    tgt->f_dstport = ParsePort(argv[2], pe->p_name);
    if (tgt->f_dstport == 0)
      return 0;
    argc -= 3;
    argv += 3;
  }

  if (pe && pe->p_proto == IPPROTO_TCP) {
    for (; argc > 0; argc--, argv++)
      if (!strcmp(*argv, "estab"))
        tgt->f_estab = 1;
      else if (!strcmp(*argv, "syn"))
        tgt->f_syn = 1;
      else if (!strcmp(*argv, "finrst"))
        tgt->f_finrst = 1;
      else
        break;
  }

  if (argc > 0) {
    log_Printf(LogWARN, "ParseUdpOrTcp: bad src/dst port syntax: %s\n", *argv);
    return 0;
  }

  return 1;
}
