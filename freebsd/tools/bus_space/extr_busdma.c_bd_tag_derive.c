
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct obj {int oid; int refcnt; int fd; } ;


 int OBJ_TYPE_TAG ;
 struct obj* bd_tag_new (struct obj*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct obj* obj_lookup (int,int ) ;

int
bd_tag_derive(int ptid, u_long align, u_long bndry, u_long maxaddr,
    u_long maxsz, u_int nsegs, u_long maxsegsz, u_int datarate, u_int flags)
{
 struct obj *ptag, *tag;

 ptag = obj_lookup(ptid, OBJ_TYPE_TAG);
 if (ptag == ((void*)0))
  return (-1);

 tag = bd_tag_new(ptag, ptag->fd, align, bndry, maxaddr, maxsz, nsegs,
     maxsegsz, datarate, flags);
 if (tag == ((void*)0))
  return (-1);
 ptag->refcnt++;
 return (tag->oid);
}
