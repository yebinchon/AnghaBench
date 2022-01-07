
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EBUSY ;


 int MTX_DEF ;
 int SLIST_EMPTY (int *) ;
 int SLIST_INIT (int *) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int t3_list ;
 int t3_list_lock ;
 int t3_uld_list ;
 int t3_uld_list_lock ;

__attribute__((used)) static int
cxgbc_mod_event(module_t mod, int cmd, void *arg)
{
 int rc = 0;

 switch (cmd) {
 case 129:
  mtx_init(&t3_list_lock, "T3 adapters", 0, MTX_DEF);
  SLIST_INIT(&t3_list);




  break;

 case 128:
  mtx_lock(&t3_list_lock);
  if (!SLIST_EMPTY(&t3_list)) {
   rc = EBUSY;
   mtx_unlock(&t3_list_lock);
   break;
  }
  mtx_unlock(&t3_list_lock);
  mtx_destroy(&t3_list_lock);
  break;
 }

 return (rc);
}
