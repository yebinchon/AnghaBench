
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct obj* next; } ;
struct TYPE_4__ {TYPE_1__ seg; } ;
struct obj {int oid; TYPE_2__ u; } ;


 int ENXIO ;
 int OBJ_TYPE_SEG ;
 int errno ;
 struct obj* obj_lookup (int,int ) ;

int
bd_md_next_seg(int mdid, int sid)
{
 struct obj *seg;

 seg = obj_lookup(sid, OBJ_TYPE_SEG);
 if (seg == ((void*)0))
  return (-1);

 seg = seg->u.seg.next;
 if (seg == ((void*)0)) {
  errno = ENXIO;
  return (-1);
 }
 return (seg->oid);
}
