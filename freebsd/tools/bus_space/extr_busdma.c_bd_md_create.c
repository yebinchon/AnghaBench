
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int flags; int tag; } ;
struct TYPE_4__ {TYPE_1__ md; } ;
struct proto_ioc_busdma {int result; TYPE_2__ u; int request; } ;
struct obj {int refcnt; int oid; int key; struct obj* parent; int fd; } ;
typedef int ioc ;


 int OBJ_TYPE_MD ;
 int OBJ_TYPE_TAG ;
 int PROTO_IOC_BUSDMA ;
 int PROTO_IOC_BUSDMA_MD_CREATE ;
 int ioctl (int ,int ,struct proto_ioc_busdma*) ;
 int memset (struct proto_ioc_busdma*,int ,int) ;
 struct obj* obj_alloc (int ) ;
 int obj_free (struct obj*) ;
 struct obj* obj_lookup (int,int ) ;

int
bd_md_create(int tid, u_int flags)
{
 struct proto_ioc_busdma ioc;
 struct obj *md, *tag;

 tag = obj_lookup(tid, OBJ_TYPE_TAG);
 if (tag == ((void*)0))
  return (-1);

 md = obj_alloc(OBJ_TYPE_MD);
 if (md == ((void*)0))
  return (-1);

 memset(&ioc, 0, sizeof(ioc));
 ioc.request = PROTO_IOC_BUSDMA_MD_CREATE;
 ioc.u.md.tag = tag->key;
 ioc.u.md.flags = flags;
 if (ioctl(tag->fd, PROTO_IOC_BUSDMA, &ioc) == -1) {
  obj_free(md);
  return (-1);
 }

 md->refcnt = 1;
 md->fd = tag->fd;
 md->parent = tag;
 tag->refcnt++;
 md->key = ioc.result;
 return (md->oid);
}
