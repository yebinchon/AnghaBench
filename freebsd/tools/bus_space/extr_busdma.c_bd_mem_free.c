
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_ioc_busdma {int key; int request; } ;
struct obj {TYPE_1__* parent; int fd; int key; } ;
typedef int ioc ;
struct TYPE_2__ {int refcnt; } ;


 int BUSDMA_MD_BUS ;
 int BUSDMA_MD_PHYS ;
 int BUSDMA_MD_VIRT ;
 int OBJ_TYPE_MD ;
 int PROTO_IOC_BUSDMA ;
 int PROTO_IOC_BUSDMA_MEM_FREE ;
 int bd_md_del_segs (struct obj*,int ,int) ;
 int errno ;
 int ioctl (int ,int ,struct proto_ioc_busdma*) ;
 int memset (struct proto_ioc_busdma*,int ,int) ;
 int obj_free (struct obj*) ;
 struct obj* obj_lookup (int,int ) ;

int
bd_mem_free(int mdid)
{
 struct proto_ioc_busdma ioc;
 struct obj *md;

 md = obj_lookup(mdid, OBJ_TYPE_MD);
 if (md == ((void*)0))
  return (errno);

 memset(&ioc, 0, sizeof(ioc));
 ioc.request = PROTO_IOC_BUSDMA_MEM_FREE;
 ioc.key = md->key;
 if (ioctl(md->fd, PROTO_IOC_BUSDMA, &ioc) == -1)
  return (errno);

 bd_md_del_segs(md, BUSDMA_MD_VIRT, 1);
 bd_md_del_segs(md, BUSDMA_MD_PHYS, 0);
 bd_md_del_segs(md, BUSDMA_MD_BUS, 0);
 md->parent->refcnt--;
 obj_free(md);
 return (0);
}
