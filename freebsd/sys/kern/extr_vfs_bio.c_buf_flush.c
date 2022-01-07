
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct bufdomain {int dummy; } ;


 int flushbufqueues (struct vnode*,struct bufdomain*,int,int) ;

__attribute__((used)) static int
buf_flush(struct vnode *vp, struct bufdomain *bd, int target)
{
 int flushed;

 flushed = flushbufqueues(vp, bd, target, 0);
 if (flushed == 0) {





  if (vp != ((void*)0) && target > 2)
   target /= 2;
  flushbufqueues(vp, bd, target, 1);
 }
 return (flushed);
}
