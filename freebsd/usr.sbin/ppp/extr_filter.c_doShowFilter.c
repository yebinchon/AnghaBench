
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int p_name; } ;
struct prompt {int dummy; } ;
struct filterent {scalar_t__ f_action; int f_proto; int timeout; scalar_t__ f_finrst; scalar_t__ f_syn; scalar_t__ f_estab; int f_dstport; scalar_t__ f_dstop; int f_srcport; scalar_t__ f_srcop; int f_dsttype; int f_dst; int f_srctype; int f_src; scalar_t__ f_invert; } ;


 scalar_t__ A_NONE ;
 int MAXFILTERS ;
 int addrstr (int *,int ) ;
 int filter_Action2Nam (scalar_t__) ;
 int filter_Op2Nam (scalar_t__) ;
 struct protoent* getprotobynumber (int) ;
 scalar_t__ ncprange_isset (int *) ;
 int prompt_Printf (struct prompt*,char*,...) ;

__attribute__((used)) static void
doShowFilter(struct filterent *fp, struct prompt *prompt)
{
  struct protoent *pe;
  int n;

  for (n = 0; n < MAXFILTERS; n++, fp++) {
    if (fp->f_action != A_NONE) {
      prompt_Printf(prompt, "  %2d %s", n, filter_Action2Nam(fp->f_action));
      prompt_Printf(prompt, "%c ", fp->f_invert ? '!' : ' ');

      if (ncprange_isset(&fp->f_src))
        prompt_Printf(prompt, "%s ", addrstr(&fp->f_src, fp->f_srctype));
      else
        prompt_Printf(prompt, "any ");

      if (ncprange_isset(&fp->f_dst))
        prompt_Printf(prompt, "%s ", addrstr(&fp->f_dst, fp->f_dsttype));
      else
        prompt_Printf(prompt, "any ");

      if (fp->f_proto) {
        if ((pe = getprotobynumber(fp->f_proto)) == ((void*)0))
   prompt_Printf(prompt, "P:%d", fp->f_proto);
        else
   prompt_Printf(prompt, "%s", pe->p_name);

 if (fp->f_srcop)
   prompt_Printf(prompt, " src %s %d", filter_Op2Nam(fp->f_srcop),
    fp->f_srcport);
 if (fp->f_dstop)
   prompt_Printf(prompt, " dst %s %d", filter_Op2Nam(fp->f_dstop),
    fp->f_dstport);
 if (fp->f_estab)
   prompt_Printf(prompt, " estab");
 if (fp->f_syn)
   prompt_Printf(prompt, " syn");
 if (fp->f_finrst)
   prompt_Printf(prompt, " finrst");
      } else
 prompt_Printf(prompt, "all");
      if (fp->timeout != 0)
   prompt_Printf(prompt, " timeout %u", fp->timeout);
      prompt_Printf(prompt, "\n");
    }
  }
}
