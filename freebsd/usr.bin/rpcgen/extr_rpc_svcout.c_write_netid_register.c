
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* vers_name; int vers_num; struct TYPE_9__* next; } ;
typedef TYPE_3__ version_list ;
struct TYPE_10__ {scalar_t__ val; struct TYPE_10__* next; } ;
typedef TYPE_4__ list ;
struct TYPE_7__ {TYPE_3__* versions; } ;
struct TYPE_8__ {TYPE_1__ pr; } ;
struct TYPE_11__ {scalar_t__ def_kind; char* def_name; TYPE_2__ def; } ;
typedef TYPE_5__ definition ;


 scalar_t__ DEF_PROGRAM ;
 int TRANSP ;
 int _errbuf ;
 TYPE_4__* defined ;
 int f_print (int ,char*,...) ;
 int fout ;
 int print_err_message (char*) ;
 int pvname (char*,int ) ;
 int sprintf (char*,char*,char const*,...) ;
 scalar_t__ tirpcflag ;

void
write_netid_register(const char *transp)
{
 list *l;
 definition *def;
 version_list *vp;
 const char *sp;
 char tmpbuf[32];

 sp = "";
 f_print(fout, "\n");
 f_print(fout, "%s\tnconf = getnetconfigent(\"%s\");\n", sp, transp);
 f_print(fout, "%s\tif (nconf == NULL) {\n", sp);
 (void) sprintf(_errbuf, "cannot find %s netid.", transp);
 sprintf(tmpbuf, "%s\t\t", sp);
 print_err_message(tmpbuf);
 f_print(fout, "%s\t\texit(1);\n", sp);
 f_print(fout, "%s\t}\n", sp);
 if (tirpcflag) {
  f_print(fout, "%s\t%s = svc_tli_create(RPC_ANYFD, ",
      sp, TRANSP);
  f_print(fout,"nconf, 0, RPC_MAXDATASIZE, RPC_MAXDATASIZE);\n");
 } else {
  f_print(fout,
      "%s\t%s = svc_tli_create(RPC_ANYFD, nconf, 0, 0, 0);\n",
      sp, TRANSP);
 }
 f_print(fout, "%s\tif (%s == NULL) {\n", sp, TRANSP);
 (void) sprintf(_errbuf, "cannot create %s service.", transp);
 print_err_message(tmpbuf);
 f_print(fout, "%s\t\texit(1);\n", sp);
 f_print(fout, "%s\t}\n", sp);

 for (l = defined; l != ((void*)0); l = l->next) {
  def = (definition *) l->val;
  if (def->def_kind != DEF_PROGRAM) {
   continue;
  }
  for (vp = def->def.pr.versions; vp != ((void*)0); vp = vp->next) {
   f_print(fout,
    "%s\t(void) rpcb_unset(%s, %s, nconf);\n",
    sp, def->def_name, vp->vers_name);
   f_print(fout,
    "%s\tif (!svc_reg(%s, %s, %s, ",
    sp, TRANSP, def->def_name, vp->vers_name);
   pvname(def->def_name, vp->vers_num);
   f_print(fout, ", nconf)) {\n");
   (void) sprintf(_errbuf,
    "unable to register (%s, %s, %s).",
    def->def_name, vp->vers_name, transp);
   print_err_message(tmpbuf);
   f_print(fout, "%s\t\texit(1);\n", sp);
   f_print(fout, "%s\t}\n", sp);
  }
 }
 f_print(fout, "%s\tfreenetconfigent(nconf);\n", sp);
}
