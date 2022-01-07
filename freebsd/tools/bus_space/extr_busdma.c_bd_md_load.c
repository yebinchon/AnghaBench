
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct TYPE_3__ {uintptr_t virt_addr; uintptr_t phys_addr; uintptr_t bus_addr; int virt_size; int flags; } ;
struct TYPE_4__ {TYPE_1__ md; } ;
struct proto_ioc_busdma {TYPE_2__ u; int key; int request; } ;
struct obj {int fd; int key; } ;
typedef int ioc ;


 int BUSDMA_MD_BUS ;
 int BUSDMA_MD_PHYS ;
 int BUSDMA_MD_VIRT ;
 int OBJ_TYPE_MD ;
 int PROTO_IOC_BUSDMA ;
 int PROTO_IOC_BUSDMA_MD_LOAD ;
 int bd_md_add_seg (struct obj*,int ,uintptr_t,int ) ;
 int errno ;
 int ioctl (int ,int ,struct proto_ioc_busdma*) ;
 int memset (struct proto_ioc_busdma*,int ,int) ;
 struct obj* obj_lookup (int,int ) ;

int
bd_md_load(int mdid, void *buf, u_long len, u_int flags)
{
 struct proto_ioc_busdma ioc;
 struct obj *md;
 int error;

 md = obj_lookup(mdid, OBJ_TYPE_MD);
 if (md == ((void*)0))
  return (errno);

 memset(&ioc, 0, sizeof(ioc));
 ioc.request = PROTO_IOC_BUSDMA_MD_LOAD;
 ioc.key = md->key;
 ioc.u.md.flags = flags;
 ioc.u.md.virt_addr = (uintptr_t)buf;
 ioc.u.md.virt_size = len;
 if (ioctl(md->fd, PROTO_IOC_BUSDMA, &ioc) == -1)
  return (errno);

 error = bd_md_add_seg(md, BUSDMA_MD_VIRT, ioc.u.md.virt_addr, len);
 error = bd_md_add_seg(md, BUSDMA_MD_PHYS, ioc.u.md.phys_addr, len);
 error = bd_md_add_seg(md, BUSDMA_MD_BUS, ioc.u.md.bus_addr, len);
 return (error);
}
