
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int dummy; } ;


 int VOP_FSYNC (int ,int,int ) ;
 int bo2vnode (struct bufobj*) ;
 int curthread ;

int
bufsync(struct bufobj *bo, int waitfor)
{

 return (VOP_FSYNC(bo2vnode(bo), waitfor, curthread));
}
