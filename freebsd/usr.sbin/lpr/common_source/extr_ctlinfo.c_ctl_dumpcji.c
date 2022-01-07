
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cji_priv; int cji_headruser; int cji_mailto; int cji_jobname; int cji_fname; int cji_curqueue; int cji_class; int cji_acctuser; int cji_accthost; } ;
struct cjprivate {TYPE_1__ pub; int cji_buff; } ;
struct cjobinfo {struct cjprivate* cji_priv; } ;
typedef int FILE ;


 int PRINTSTR (char*,int ) ;
 int ctl_dbgline ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;

void
ctl_dumpcji(FILE *dbg_stream, const char *heading, struct cjobinfo *cjinf)
{
 struct cjprivate *cpriv;
 char *astr;

 if (cjinf == ((void*)0)) {
  fprintf(dbg_stream,
      "ctl_dumpcji: ptr to cjobinfo for '%s' is NULL\n",
      heading);
  return;
 }
 cpriv = cjinf->cji_priv;

 fprintf(dbg_stream, "ctl_dumpcji: Dump '%s' of cjobinfo at %p->%p\n",
     heading, (void *)cjinf, cpriv->cji_buff);

 astr = cpriv->pub.cji_accthost; ctl_dbgline++; fprintf(dbg_stream, "%4d] %12s = ", ctl_dbgline, "accthost.H"); if (astr == ((void*)0)) fprintf(dbg_stream, "NULL\n"); else fprintf(dbg_stream, "%p -> %s\n", astr, astr);
 astr = cpriv->pub.cji_acctuser; ctl_dbgline++; fprintf(dbg_stream, "%4d] %12s = ", ctl_dbgline, "acctuser.P"); if (astr == ((void*)0)) fprintf(dbg_stream, "NULL\n"); else fprintf(dbg_stream, "%p -> %s\n", astr, astr);
 astr = cpriv->pub.cji_class; ctl_dbgline++; fprintf(dbg_stream, "%4d] %12s = ", ctl_dbgline, "class.C"); if (astr == ((void*)0)) fprintf(dbg_stream, "NULL\n"); else fprintf(dbg_stream, "%p -> %s\n", astr, astr);
 astr = cpriv->pub.cji_curqueue; ctl_dbgline++; fprintf(dbg_stream, "%4d] %12s = ", ctl_dbgline, "cf-qname"); if (astr == ((void*)0)) fprintf(dbg_stream, "NULL\n"); else fprintf(dbg_stream, "%p -> %s\n", astr, astr);
 astr = cpriv->pub.cji_fname; ctl_dbgline++; fprintf(dbg_stream, "%4d] %12s = ", ctl_dbgline, "cf-fname"); if (astr == ((void*)0)) fprintf(dbg_stream, "NULL\n"); else fprintf(dbg_stream, "%p -> %s\n", astr, astr);
 astr = cpriv->pub.cji_jobname; ctl_dbgline++; fprintf(dbg_stream, "%4d] %12s = ", ctl_dbgline, "jobname.J"); if (astr == ((void*)0)) fprintf(dbg_stream, "NULL\n"); else fprintf(dbg_stream, "%p -> %s\n", astr, astr);
 astr = cpriv->pub.cji_mailto; ctl_dbgline++; fprintf(dbg_stream, "%4d] %12s = ", ctl_dbgline, "mailto.M"); if (astr == ((void*)0)) fprintf(dbg_stream, "NULL\n"); else fprintf(dbg_stream, "%p -> %s\n", astr, astr);
 astr = cpriv->pub.cji_headruser; ctl_dbgline++; fprintf(dbg_stream, "%4d] %12s = ", ctl_dbgline, "headruser.L"); if (astr == ((void*)0)) fprintf(dbg_stream, "NULL\n"); else fprintf(dbg_stream, "%p -> %s\n", astr, astr);

 ctl_dbgline++;
 fprintf(dbg_stream, "%4d] %12s = ", ctl_dbgline, "*cjprivate");
 if (cpriv->pub.cji_priv == ((void*)0))
  fprintf(dbg_stream, "NULL !!\n");
 else
  fprintf(dbg_stream, "%p\n", (void *)cpriv->pub.cji_priv);

 fprintf(dbg_stream, "|- - - - --> Dump '%s' complete\n", heading);


 fflush(dbg_stream);


}
