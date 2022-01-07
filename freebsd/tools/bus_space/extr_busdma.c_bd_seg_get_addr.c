
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int address; } ;
struct TYPE_4__ {TYPE_1__ seg; } ;
struct obj {TYPE_2__ u; } ;


 int EINVAL ;
 int OBJ_TYPE_SEG ;
 int errno ;
 struct obj* obj_lookup (int,int ) ;

int
bd_seg_get_addr(int sid, u_long *addr_p)
{
 struct obj *seg;

 if (addr_p == ((void*)0))
  return (EINVAL);

 seg = obj_lookup(sid, OBJ_TYPE_SEG);
 if (seg == ((void*)0))
  return (errno);

 *addr_p = seg->u.seg.address;
 return (0);
}
