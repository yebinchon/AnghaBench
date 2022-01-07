
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int daddr_t ;


 int cluster_wbuild (struct vnode*,long,int,int,int) ;
 int write_behind ;

__attribute__((used)) static __inline int
cluster_wbuild_wb(struct vnode *vp, long size, daddr_t start_lbn, int len,
    int gbflags)
{
 int r = 0;

 switch (write_behind) {
 case 2:
  if (start_lbn < len)
   break;
  start_lbn -= len;

 case 1:
  r = cluster_wbuild(vp, size, start_lbn, len, gbflags);

 default:

  break;
 }
 return(r);
}
