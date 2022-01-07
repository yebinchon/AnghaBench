
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {TYPE_1__* rcb; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_12__ {int max_elem; int lockcreated; int * elem_array; int lockname; int lock; scalar_t__ tail; scalar_t__ head; scalar_t__ num_elem; } ;
typedef TYPE_3__ pqi_taglist_t ;
struct TYPE_10__ {int tag; } ;


 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int INVALID_ELEM ;
 int LOCKNAME_SIZE ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int os_init_spinlock (TYPE_2__*,int *,int ) ;
 int * os_mem_alloc (TYPE_2__*,int) ;
 int os_mem_free (TYPE_2__*,char*,int) ;
 int os_strlcpy (int ,char*,int ) ;
 int pqisrc_put_tag (TYPE_3__*,int) ;

int pqisrc_init_taglist(pqisrc_softstate_t *softs, pqi_taglist_t *taglist,
    uint32_t max_elem)
{
 int ret = PQI_STATUS_SUCCESS;
 int i = 0;

 DBG_FUNC("IN\n");

 taglist->max_elem = max_elem;
 taglist->num_elem = 0;
 taglist->head = 0;
 taglist->tail = 0;
 taglist->elem_array = os_mem_alloc(softs,
   (max_elem * sizeof(uint32_t)));
 if (!(taglist->elem_array)) {
  DBG_FUNC("Unable to allocate memory for taglist\n");
  ret = PQI_STATUS_FAILURE;
  goto err_out;
 }

     os_strlcpy(taglist->lockname, "tag_lock", LOCKNAME_SIZE);
     ret = os_init_spinlock(softs, &taglist->lock, taglist->lockname);
     if(ret){
         DBG_ERR("tag lock initialization failed\n");
         taglist->lockcreated=0;
         goto err_lock;
 }
     taglist->lockcreated = 1;


 for (i=1; i <= max_elem; i++) {
  softs->rcb[i].tag = INVALID_ELEM;
  pqisrc_put_tag(taglist, i);
 }

 DBG_FUNC("OUT\n");
 return ret;

err_lock:
    os_mem_free(softs, (char *)taglist->elem_array,
        (taglist->max_elem * sizeof(uint32_t)));
 taglist->elem_array = ((void*)0);
err_out:
 DBG_FUNC("OUT failed\n");
 return ret;
}
