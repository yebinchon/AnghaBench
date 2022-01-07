
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_iov_schema {size_t len; scalar_t__ error; int schema; } ;
struct TYPE_4__ {TYPE_1__* iov; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
struct cdev {struct pci_devinfo* si_drv1; } ;
struct TYPE_3__ {int iov_schema; } ;


 scalar_t__ EMSGSIZE ;
 int ENOMEM ;
 int Giant ;
 int M_NVLIST ;
 int copyout (void*,int ,size_t) ;
 int free (void*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 void* nvlist_pack (int ,size_t*) ;

__attribute__((used)) static int
pci_iov_get_schema_ioctl(struct cdev *cdev, struct pci_iov_schema *output)
{
 struct pci_devinfo *dinfo;
 void *packed;
 size_t output_len, size;
 int error;

 packed = ((void*)0);

 mtx_lock(&Giant);
 dinfo = cdev->si_drv1;
 packed = nvlist_pack(dinfo->cfg.iov->iov_schema, &size);
 mtx_unlock(&Giant);

 if (packed == ((void*)0)) {
  error = ENOMEM;
  goto fail;
 }

 output_len = output->len;
 output->len = size;
 if (size <= output_len) {
  error = copyout(packed, output->schema, size);

  if (error != 0)
   goto fail;

  output->error = 0;
 } else





  output->error = EMSGSIZE;

 error = 0;

fail:
 free(packed, M_NVLIST);

 return (error);
}
