
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_ioc_busdma {int key; int request; } ;
struct obj {int refcnt; int fd; TYPE_1__* parent; int key; } ;
typedef int ioc ;
struct TYPE_2__ {int refcnt; } ;


 int EBUSY ;
 int OBJ_TYPE_TAG ;
 int PROTO_IOC_BUSDMA ;
 int PROTO_IOC_BUSDMA_TAG_DESTROY ;
 int close (int ) ;
 int errno ;
 int ioctl (int ,int ,struct proto_ioc_busdma*) ;
 int memset (struct proto_ioc_busdma*,int ,int) ;
 int obj_free (struct obj*) ;
 struct obj* obj_lookup (int,int ) ;

int
bd_tag_destroy(int tid)
{
 struct proto_ioc_busdma ioc;
 struct obj *ptag, *tag;

 tag = obj_lookup(tid, OBJ_TYPE_TAG);
 if (tag == ((void*)0))
  return (errno);
 if (tag->refcnt > 1)
  return (EBUSY);

 memset(&ioc, 0, sizeof(ioc));
 ioc.request = PROTO_IOC_BUSDMA_TAG_DESTROY;
 ioc.key = tag->key;
 if (ioctl(tag->fd, PROTO_IOC_BUSDMA, &ioc) == -1)
  return (errno);

 if (tag->parent != ((void*)0))
  tag->parent->refcnt--;
 else
  close(tag->fd);
 obj_free(tag);
 return (0);
}
