
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int head; } ;
struct TYPE_3__ {scalar_t__ sy_auevent; } ;


 scalar_t__ AUE_NULL ;
 int EVCLASSMAP_HASH_TABLE_SIZE ;
 int EVCLASS_LOCK_INIT () ;
 int LIST_INIT (int *) ;
 int SYS_MAXSYSCALL ;
 int au_evclassmap_insert (scalar_t__,int ) ;
 TYPE_2__* evclass_hash ;
 TYPE_1__* sysent ;

void
au_evclassmap_init(void)
{
 int i;

 EVCLASS_LOCK_INIT();
 for (i = 0; i < EVCLASSMAP_HASH_TABLE_SIZE; i++)
  LIST_INIT(&evclass_hash[i].head);
 for (i = 0; i < SYS_MAXSYSCALL; i++) {
  if (sysent[i].sy_auevent != AUE_NULL)
   au_evclassmap_insert(sysent[i].sy_auevent, 0);
 }
}
