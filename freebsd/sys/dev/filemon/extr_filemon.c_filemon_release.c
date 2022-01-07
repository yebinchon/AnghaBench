
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filemon {int lock; int * cred; int refcnt; } ;


 int M_FILEMON ;
 int SA_UNLOCKED ;
 int crfree (int *) ;
 int free (struct filemon*,int ) ;
 scalar_t__ refcount_release (int *) ;
 int sx_assert (int *,int ) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
filemon_release(struct filemon *filemon)
{

 if (refcount_release(&filemon->refcnt) == 0)
  return;





 sx_assert(&filemon->lock, SA_UNLOCKED);

 if (filemon->cred != ((void*)0))
  crfree(filemon->cred);
 sx_destroy(&filemon->lock);
 free(filemon, M_FILEMON);
}
