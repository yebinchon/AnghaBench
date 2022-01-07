
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_long ;
typedef void* u_int ;
struct TYPE_7__ {void* datarate; void* nsegs; void* maxsegsz; void* maxsz; void* maxaddr; void* bndry; void* align; void* flags; } ;
struct TYPE_8__ {TYPE_3__ tag; } ;
struct proto_ioc_busdma {TYPE_4__ u; int result; int key; int request; } ;
struct TYPE_5__ {void* datarate; void* nsegs; void* maxsegsz; void* maxsz; void* maxaddr; void* bndry; void* align; } ;
struct TYPE_6__ {TYPE_1__ tag; } ;
struct obj {int refcnt; int fd; TYPE_2__ u; int key; struct obj* parent; } ;
typedef int ioc ;


 int OBJ_TYPE_TAG ;
 int PROTO_IOC_BUSDMA ;
 int PROTO_IOC_BUSDMA_TAG_CREATE ;
 int PROTO_IOC_BUSDMA_TAG_DERIVE ;
 int ioctl (int,int ,struct proto_ioc_busdma*) ;
 int memset (struct proto_ioc_busdma*,int ,int) ;
 struct obj* obj_alloc (int ) ;
 int obj_free (struct obj*) ;

__attribute__((used)) static struct obj *
bd_tag_new(struct obj *ptag, int fd, u_long align, u_long bndry,
    u_long maxaddr, u_long maxsz, u_int nsegs, u_long maxsegsz,
    u_int datarate, u_int flags)
{
 struct proto_ioc_busdma ioc;
 struct obj *tag;

 tag = obj_alloc(OBJ_TYPE_TAG);
 if (tag == ((void*)0))
  return (((void*)0));

 memset(&ioc, 0, sizeof(ioc));
 ioc.request = (ptag != ((void*)0)) ? PROTO_IOC_BUSDMA_TAG_DERIVE :
     PROTO_IOC_BUSDMA_TAG_CREATE;
 ioc.key = (ptag != ((void*)0)) ? ptag->key : 0;
 ioc.u.tag.align = align;
 ioc.u.tag.bndry = bndry;
 ioc.u.tag.maxaddr = maxaddr;
 ioc.u.tag.maxsz = maxsz;
 ioc.u.tag.nsegs = nsegs;
 ioc.u.tag.maxsegsz = maxsegsz;
 ioc.u.tag.datarate = datarate;
 ioc.u.tag.flags = flags;
 if (ioctl(fd, PROTO_IOC_BUSDMA, &ioc) == -1) {
  obj_free(tag);
  return (((void*)0));
 }
 tag->refcnt = 1;
 tag->fd = fd;
 tag->parent = ptag;
 tag->key = ioc.result;
 tag->u.tag.align = ioc.u.tag.align;
 tag->u.tag.bndry = ioc.u.tag.bndry;
 tag->u.tag.maxaddr = ioc.u.tag.maxaddr;
 tag->u.tag.maxsz = ioc.u.tag.maxsz;
 tag->u.tag.maxsegsz = ioc.u.tag.maxsegsz;
 tag->u.tag.nsegs = ioc.u.tag.nsegs;
 tag->u.tag.datarate = ioc.u.tag.datarate;
 return (tag);
}
