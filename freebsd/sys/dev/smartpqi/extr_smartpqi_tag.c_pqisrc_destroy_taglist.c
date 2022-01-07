
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pqisrc_softstate_t ;
struct TYPE_3__ {int max_elem; int lockcreated; int lock; int * elem_array; } ;
typedef TYPE_1__ pqi_taglist_t ;


 int DBG_FUNC (char*) ;
 int os_mem_free (int *,char*,int) ;
 int os_uninit_spinlock (int *) ;

void pqisrc_destroy_taglist(pqisrc_softstate_t *softs, pqi_taglist_t *taglist)
{
 DBG_FUNC("IN\n");
 os_mem_free(softs, (char *)taglist->elem_array,
  (taglist->max_elem * sizeof(uint32_t)));
 taglist->elem_array = ((void*)0);

     if(taglist->lockcreated==1){
         os_uninit_spinlock(&taglist->lock);
         taglist->lockcreated = 0;
     }

 DBG_FUNC("OUT\n");
}
