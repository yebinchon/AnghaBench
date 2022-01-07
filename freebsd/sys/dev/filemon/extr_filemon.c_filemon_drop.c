
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filemon {int lock; } ;


 int filemon_release (struct filemon*) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static __inline void
filemon_drop(struct filemon *filemon)
{

 sx_xunlock(&filemon->lock);
 filemon_release(filemon);
}
