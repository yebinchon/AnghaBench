
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enl_head; } ;


 int EVNAMEMAP_HASH_TABLE_SIZE ;
 int EVNAMEMAP_LOCK_INIT () ;
 int LIST_INIT (int *) ;
 int au_evnamemap_init_preload () ;
 TYPE_1__* evnamemap_hash ;

void
au_evnamemap_init(void)
{
 int i;

 EVNAMEMAP_LOCK_INIT();
 for (i = 0; i < EVNAMEMAP_HASH_TABLE_SIZE; i++)
  LIST_INIT(&evnamemap_hash[i].enl_head);
 au_evnamemap_init_preload();
}
