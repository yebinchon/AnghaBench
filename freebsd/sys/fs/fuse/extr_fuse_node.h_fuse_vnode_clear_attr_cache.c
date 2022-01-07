
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct TYPE_2__ {int attr_cache_timeout; } ;


 TYPE_1__* VTOFUD (struct vnode*) ;
 int bintime_clear (int *) ;

__attribute__((used)) static inline void
fuse_vnode_clear_attr_cache(struct vnode *vp)
{
 bintime_clear(&VTOFUD(vp)->attr_cache_timeout);
}
