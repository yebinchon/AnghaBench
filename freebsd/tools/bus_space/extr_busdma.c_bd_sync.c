
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_long ;
typedef int u_int ;
struct TYPE_3__ {void* size; void* base; int op; } ;
struct TYPE_4__ {TYPE_1__ sync; } ;
struct proto_ioc_busdma {TYPE_2__ u; int key; int request; } ;
struct obj {int fd; int key; } ;
typedef int ioc ;


 int OBJ_TYPE_MD ;
 int PROTO_IOC_BUSDMA ;
 int PROTO_IOC_BUSDMA_SYNC ;
 int errno ;
 int ioctl (int ,int ,struct proto_ioc_busdma*) ;
 int memset (struct proto_ioc_busdma*,int ,int) ;
 struct obj* obj_lookup (int,int ) ;

int
bd_sync(int mdid, u_int op, u_long ofs, u_long len)
{
 struct proto_ioc_busdma ioc;
 struct obj *md;

 md = obj_lookup(mdid, OBJ_TYPE_MD);
 if (md == ((void*)0))
  return (errno);

 memset(&ioc, 0, sizeof(ioc));
 ioc.request = PROTO_IOC_BUSDMA_SYNC;
 ioc.key = md->key;
 ioc.u.sync.op = op;
 ioc.u.sync.base = ofs;
 ioc.u.sync.size = len;
 if (ioctl(md->fd, PROTO_IOC_BUSDMA, &ioc) == -1)
  return (errno);

 return (0);
}
