
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int vers_name; struct TYPE_9__* next; } ;
typedef TYPE_3__ version_list ;
struct TYPE_10__ {scalar_t__ val; struct TYPE_10__* next; } ;
typedef TYPE_4__ list ;
struct TYPE_8__ {TYPE_3__* versions; } ;
struct TYPE_7__ {TYPE_2__ pr; } ;
struct TYPE_11__ {scalar_t__ def_kind; int def_name; TYPE_1__ def; } ;
typedef TYPE_5__ definition ;


 scalar_t__ DEF_PROGRAM ;
 TYPE_4__* defined ;
 int f_print (int ,char*,char const*,int ,int ) ;
 int fout ;

__attribute__((used)) static void
print_pmapunset(const char *space)
{
 list *l;
 definition *def;
 version_list *vp;

 for (l = defined; l != ((void*)0); l = l->next) {
  def = (definition *) l->val;
  if (def->def_kind == DEF_PROGRAM) {
   for (vp = def->def.pr.versions; vp != ((void*)0);
     vp = vp->next) {
    f_print(fout, "%s(void) pmap_unset(%s, %s);\n",
     space, def->def_name, vp->vers_name);
   }
  }
 }
}
