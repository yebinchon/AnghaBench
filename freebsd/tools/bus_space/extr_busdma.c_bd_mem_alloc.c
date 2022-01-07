
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_5__ {int phys_nsegs; int bus_nsegs; uintptr_t phys_addr; uintptr_t bus_addr; int flags; int tag; } ;
struct TYPE_6__ {TYPE_1__ md; } ;
struct proto_ioc_busdma {int key; int request; TYPE_2__ u; int result; } ;
struct TYPE_7__ {int maxsz; } ;
struct TYPE_8__ {TYPE_3__ tag; } ;
struct obj {int refcnt; int oid; struct obj* parent; int fd; int key; TYPE_4__ u; } ;
typedef int ioc ;


 int BUSDMA_MD_BUS ;
 int BUSDMA_MD_PHYS ;
 int BUSDMA_MD_VIRT ;
 scalar_t__ MAP_FAILED ;
 int MAP_NOCORE ;
 int MAP_SHARED ;
 int OBJ_TYPE_MD ;
 int OBJ_TYPE_TAG ;
 int PROTO_IOC_BUSDMA ;
 int PROTO_IOC_BUSDMA_MEM_ALLOC ;
 int PROTO_IOC_BUSDMA_MEM_FREE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int assert (int) ;
 int bd_md_add_seg (struct obj*,int ,uintptr_t,int ) ;
 int ioctl (int ,int ,struct proto_ioc_busdma*) ;
 int memset (struct proto_ioc_busdma*,int ,int) ;
 scalar_t__ mmap (int *,int ,int,int,int ,uintptr_t) ;
 struct obj* obj_alloc (int ) ;
 int obj_free (struct obj*) ;
 struct obj* obj_lookup (int,int ) ;

int
bd_mem_alloc(int tid, u_int flags)
{
 struct proto_ioc_busdma ioc;
 struct obj *md, *tag;
 uintptr_t addr;
 int error;

 tag = obj_lookup(tid, OBJ_TYPE_TAG);
 if (tag == ((void*)0))
  return (-1);

 md = obj_alloc(OBJ_TYPE_MD);
 if (md == ((void*)0))
  return (-1);

 memset(&ioc, 0, sizeof(ioc));
 ioc.request = PROTO_IOC_BUSDMA_MEM_ALLOC;
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


 assert(ioc.u.md.phys_nsegs == 1);
 assert(ioc.u.md.bus_nsegs == 1);
 error = bd_md_add_seg(md, BUSDMA_MD_PHYS, ioc.u.md.phys_addr,
     tag->u.tag.maxsz);
 error = bd_md_add_seg(md, BUSDMA_MD_BUS, ioc.u.md.bus_addr,
     tag->u.tag.maxsz);

 addr = (uintptr_t)mmap(((void*)0), tag->u.tag.maxsz, PROT_READ | PROT_WRITE,
     MAP_NOCORE | MAP_SHARED, md->fd, ioc.u.md.phys_addr);
 if (addr == (uintptr_t)MAP_FAILED)
  goto fail;
 error = bd_md_add_seg(md, BUSDMA_MD_VIRT, addr, tag->u.tag.maxsz);

 return (md->oid);

 fail:
 memset(&ioc, 0, sizeof(ioc));
 ioc.request = PROTO_IOC_BUSDMA_MEM_FREE;
 ioc.key = md->key;
 ioctl(md->fd, PROTO_IOC_BUSDMA, &ioc);
 md->parent->refcnt--;
 obj_free(md);
 return (-1);
}
