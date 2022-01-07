
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;



 int M_DEVBUF ;
 int * ctxmith ;
 int free (int *,int ) ;
 int lp_tables_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * txmith ;

__attribute__((used)) static int
lp_module_handler(module_t mod, int what, void *arg)
{

 switch (what) {
 case 128:
  mtx_lock(&lp_tables_lock);
  if (txmith != ((void*)0)) {
   free(txmith, M_DEVBUF);
   txmith = ((void*)0);
  }
  if (ctxmith != ((void*)0)) {
   free(ctxmith, M_DEVBUF);
   ctxmith = ((void*)0);
  }
  mtx_unlock(&lp_tables_lock);
  break;
 case 130:
 case 129:
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
