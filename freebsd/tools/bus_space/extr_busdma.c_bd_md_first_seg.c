
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct obj** seg; } ;
struct TYPE_4__ {TYPE_1__ md; } ;
struct obj {int oid; TYPE_2__ u; } ;


 int BUSDMA_MD_BUS ;
 int BUSDMA_MD_PHYS ;
 int BUSDMA_MD_VIRT ;
 int EINVAL ;
 int ENXIO ;
 int OBJ_TYPE_MD ;
 int errno ;
 struct obj* obj_lookup (int,int ) ;

int
bd_md_first_seg(int mdid, int space)
{
 struct obj *md, *seg;

 md = obj_lookup(mdid, OBJ_TYPE_MD);
 if (md == ((void*)0))
  return (-1);

 if (space != BUSDMA_MD_BUS && space != BUSDMA_MD_PHYS &&
     space != BUSDMA_MD_VIRT) {
  errno = EINVAL;
  return (-1);
 }
 seg = md->u.md.seg[space];
 if (seg == ((void*)0)) {
  errno = ENXIO;
  return (-1);
 }
 return (seg->oid);
}
