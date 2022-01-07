
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct fuse_entry_out {scalar_t__ nodeid; TYPE_1__ attr; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int EINVAL ;
 scalar_t__ FUSE_NULL_ID ;
 scalar_t__ FUSE_ROOT_ID ;
 int IFTOVT (int ) ;

__attribute__((used)) static inline int
fuse_internal_checkentry(struct fuse_entry_out *feo, enum vtype vtyp)
{
 if (vtyp != IFTOVT(feo->attr.mode)) {
  return (EINVAL);
 }

 if (feo->nodeid == FUSE_NULL_ID) {
  return (EINVAL);
 }

 if (feo->nodeid == FUSE_ROOT_ID) {
  return (EINVAL);
 }

 return (0);
}
