
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filemon {int refcnt; } ;


 int refcount_acquire (int *) ;

__attribute__((used)) static __inline struct filemon *
filemon_acquire(struct filemon *filemon)
{

 if (filemon != ((void*)0))
  refcount_acquire(&filemon->refcnt);
 return (filemon);
}
