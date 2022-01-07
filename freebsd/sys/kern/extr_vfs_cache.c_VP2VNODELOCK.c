
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mtx {int dummy; } ;


 uintptr_t ncvnodehash ;
 struct mtx* vnodelocks ;

__attribute__((used)) static inline struct mtx *
VP2VNODELOCK(struct vnode *vp)
{

 return (&vnodelocks[(((uintptr_t)(vp) >> 8) & ncvnodehash)]);
}
