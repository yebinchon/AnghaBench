
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_3__ version_list ;
struct TYPE_7__ {TYPE_3__* versions; } ;
struct TYPE_8__ {TYPE_1__ pr; } ;
struct TYPE_10__ {scalar_t__ def_kind; int def_name; TYPE_2__ def; } ;
typedef TYPE_4__ definition ;


 scalar_t__ DEF_PROGRAM ;
 int write_sample_client (int ,TYPE_3__*) ;

int
write_sample_clnt(definition *def)
{
        version_list *vp;
 int count = 0;

 if (def->def_kind != DEF_PROGRAM)
   return(0);

 for (vp = def->def.pr.versions; vp != ((void*)0); vp = vp->next) {
   write_sample_client(def->def_name, vp);
   ++count;
 }
 return(count);
}
