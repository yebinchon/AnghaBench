
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
 int _errbuf ;
 TYPE_4__* defined ;
 int f_print (int ,char*,...) ;
 int fout ;
 int print_err_message (char*) ;
 int pvname (char*,int ) ;
 int sprintf (int ,char*,char*,char*,char const*) ;

void
write_nettype_register(const char *transp)
{
 list *l;
 definition *def;
 version_list *vp;

 for (l = defined; l != ((void*)0); l = l->next) {
  def = (definition *) l->val;
  if (def->def_kind != DEF_PROGRAM) {
   continue;
  }
  for (vp = def->def.pr.versions; vp != ((void*)0); vp = vp->next) {
   f_print(fout, "\tif (!svc_create(");
   pvname(def->def_name, vp->vers_num);
   f_print(fout, ", %s, %s, \"%s\")) {\n",
    def->def_name, vp->vers_name, transp);
   (void) sprintf(_errbuf,
    "unable to create (%s, %s) for %s.",
     def->def_name, vp->vers_name, transp);
   print_err_message("\t\t");
   f_print(fout, "\t\texit(1);\n");
   f_print(fout, "\t}\n");
  }
 }
}
