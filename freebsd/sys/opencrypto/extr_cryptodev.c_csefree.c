
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csession {struct csession* mackey; struct csession* key; int lock; int cses; } ;


 int M_XDATA ;
 int crypto_freesession (int ) ;
 int free (struct csession*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
csefree(struct csession *cse)
{

 crypto_freesession(cse->cses);
 mtx_destroy(&cse->lock);
 if (cse->key)
  free(cse->key, M_XDATA);
 if (cse->mackey)
  free(cse->mackey, M_XDATA);
 free(cse, M_XDATA);
}
