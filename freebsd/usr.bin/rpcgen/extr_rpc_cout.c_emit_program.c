
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* procs; struct TYPE_13__* next; } ;
typedef TYPE_4__ version_list ;
struct TYPE_10__ {TYPE_7__* decls; } ;
struct TYPE_14__ {int arg_num; TYPE_1__ args; struct TYPE_14__* next; } ;
typedef TYPE_5__ proc_list ;
struct TYPE_11__ {TYPE_4__* versions; } ;
struct TYPE_12__ {TYPE_2__ pr; } ;
struct TYPE_15__ {TYPE_3__ def; } ;
typedef TYPE_6__ definition ;
struct TYPE_16__ {int decl; struct TYPE_16__* next; } ;
typedef TYPE_7__ decl_list ;


 int newstyle ;
 int print_prog_header (TYPE_5__*) ;
 int print_stat (int,int *) ;
 int print_trailer () ;

__attribute__((used)) static void
emit_program(definition *def)
{
 decl_list *dl;
 version_list *vlist;
 proc_list *plist;

 for (vlist = def->def.pr.versions; vlist != ((void*)0); vlist = vlist->next)
  for (plist = vlist->procs; plist != ((void*)0); plist = plist->next) {
   if (!newstyle || plist->arg_num < 2)
    continue;
   print_prog_header(plist);
   for (dl = plist->args.decls; dl != ((void*)0);
        dl = dl->next)
    print_stat(1, &dl->decl);
   print_trailer();
  }
}
