
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* procs; struct TYPE_12__* next; } ;
typedef TYPE_4__ version_list ;
struct TYPE_11__ {char* argname; TYPE_7__* decls; } ;
struct TYPE_13__ {int arg_num; TYPE_3__ args; struct TYPE_13__* next; } ;
typedef TYPE_5__ proc_list ;
struct TYPE_9__ {TYPE_4__* versions; } ;
struct TYPE_10__ {TYPE_1__ pr; } ;
struct TYPE_14__ {TYPE_2__ def; } ;
typedef TYPE_6__ definition ;
struct TYPE_15__ {int decl; struct TYPE_15__* next; } ;
typedef TYPE_7__ decl_list ;


 int f_print (int ,char*,...) ;
 int fout ;
 int newstyle ;
 int pdeclaration (char*,int *,int,char*) ;
 int storexdrfuncdecl (char*,int) ;

__attribute__((used)) static void
pargdef(definition *def)
{
 decl_list *l;
 version_list *vers;
 char *name;
 proc_list *plist;


 for (vers = def->def.pr.versions; vers != ((void*)0); vers = vers->next) {
   for (plist = vers->procs; plist != ((void*)0);
       plist = plist->next) {

    if (!newstyle || plist->arg_num < 2) {
     continue;
    }
    name = plist->args.argname;
    f_print(fout, "struct %s {\n", name);
    for (l = plist->args.decls;
        l != ((void*)0); l = l->next) {
     pdeclaration(name, &l->decl, 1,
           ";\n");
    }
    f_print(fout, "};\n");
    f_print(fout, "typedef struct %s %s;\n",
     name, name);
    storexdrfuncdecl(name, 1);
    f_print(fout, "\n");
   }
  }
}
