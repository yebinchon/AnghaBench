
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u_long ;
struct TYPE_5__ {int* nsegs; struct obj** seg; } ;
struct TYPE_4__ {void* size; void* address; } ;
struct TYPE_6__ {TYPE_2__ md; TYPE_1__ seg; } ;
struct obj {int refcnt; TYPE_3__ u; struct obj* parent; } ;


 int OBJ_TYPE_SEG ;
 int errno ;
 struct obj* obj_alloc (int ) ;

__attribute__((used)) static int
bd_md_add_seg(struct obj *md, int type, u_long addr, u_long size)
{
 struct obj *seg;

 seg = obj_alloc(OBJ_TYPE_SEG);
 if (seg == ((void*)0))
  return (errno);
 seg->refcnt = 1;
 seg->parent = md;
 seg->u.seg.address = addr;
 seg->u.seg.size = size;

 md->u.md.seg[type] = seg;
 md->u.md.nsegs[type] = 1;
 return (0);
}
