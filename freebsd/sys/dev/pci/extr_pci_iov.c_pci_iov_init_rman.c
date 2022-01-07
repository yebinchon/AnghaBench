
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rm_descr; int rm_type; int rm_end; scalar_t__ rm_start; } ;
struct pcicfg_iov {int iov_flags; TYPE_1__ rman; int rman_name; } ;
typedef int device_t ;


 int IOV_RMAN_INITED ;
 int RMAN_ARRAY ;
 char* device_get_nameunit (int ) ;
 int rman_init (TYPE_1__*) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int
pci_iov_init_rman(device_t pf, struct pcicfg_iov *iov)
{
 int error;

 iov->rman.rm_start = 0;
 iov->rman.rm_end = ~0;
 iov->rman.rm_type = RMAN_ARRAY;
 snprintf(iov->rman_name, sizeof(iov->rman_name), "%s VF I/O memory",
     device_get_nameunit(pf));
 iov->rman.rm_descr = iov->rman_name;

 error = rman_init(&iov->rman);
 if (error != 0)
  return (error);

 iov->iov_flags |= IOV_RMAN_INITED;
 return (0);
}
