
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct obj* next; int size; scalar_t__ address; } ;
struct TYPE_4__ {struct obj** seg; } ;
struct TYPE_6__ {TYPE_2__ seg; TYPE_1__ md; } ;
struct obj {TYPE_3__ u; } ;


 int munmap (void*,int ) ;
 int obj_free (struct obj*) ;

__attribute__((used)) static int
bd_md_del_segs(struct obj *md, int type, int unmap)
{
 struct obj *seg, *seg0;

 for (seg = md->u.md.seg[type]; seg != ((void*)0); seg = seg0) {
  if (unmap)
   munmap((void *)seg->u.seg.address, seg->u.seg.size);
  seg0 = seg->u.seg.next;
  obj_free(seg);
 }
 return (0);
}
