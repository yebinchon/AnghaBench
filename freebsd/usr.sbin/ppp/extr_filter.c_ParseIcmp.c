
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filterent {int f_srcport; void* f_dstop; void* f_srcop; } ;


 int LogWARN ;
 void* OP_EQ ;
 void* OP_NONE ;
 int log_Printf (int ,char*) ;
 int strcmp (char const* const,char*) ;
 int strtol (char const* const,char**,int ) ;

__attribute__((used)) static int
ParseIcmp(int argc, char const *const *argv, struct filterent *tgt)
{
  int type;
  char *cp;

  switch (argc) {
  case 0:

    tgt->f_srcop = tgt->f_dstop = OP_NONE;
    break;

  case 3:
    if (!strcmp(*argv, "src") && !strcmp(argv[1], "eq")) {
      type = strtol(argv[2], &cp, 0);
      if (cp == argv[2]) {
 log_Printf(LogWARN, "ParseIcmp: type is expected.\n");
 return 0;
      }
      tgt->f_srcop = OP_EQ;
      tgt->f_srcport = type;
      tgt->f_dstop = OP_NONE;
    }
    break;

  default:
    log_Printf(LogWARN, "ParseIcmp: bad icmp syntax.\n");
    return 0;
  }
  return 1;
}
