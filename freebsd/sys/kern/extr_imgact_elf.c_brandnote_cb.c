
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brandnote_cb_arg {int osrel; TYPE_1__* brandnote; } ;
typedef int boolean_t ;
struct TYPE_2__ {int flags; int (* trans_osrel ) (int const*,int ) ;} ;
typedef int Elf_Note ;


 int BN_TRANSLATE_OSREL ;
 int TRUE ;
 int stub1 (int const*,int ) ;

__attribute__((used)) static boolean_t
brandnote_cb(const Elf_Note *note, void *arg0, boolean_t *res)
{
 struct brandnote_cb_arg *arg;

 arg = arg0;





 *res = (arg->brandnote->flags & BN_TRANSLATE_OSREL) != 0 &&
     arg->brandnote->trans_osrel != ((void*)0) ?
     arg->brandnote->trans_osrel(note, arg->osrel) : TRUE;

 return (TRUE);
}
