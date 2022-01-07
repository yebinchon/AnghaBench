
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcicfg_iov {int iov_schema; } ;
struct pci_iov_arg {int len; int config; } ;
typedef int nvlist_t ;


 int EINVAL ;
 int EMSGSIZE ;
 int M_SRIOV ;
 int M_WAITOK ;
 int NV_FLAG_IGNORE_CASE ;
 int copyin (int ,void*,int ) ;
 int free (void*,int ) ;
 void* malloc (int ,int ,int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_error (int *) ;
 int * nvlist_unpack (void*,int ,int ) ;
 int pci_iov_max_config ;
 int pci_iov_schema_validate_config (int ,int *) ;

__attribute__((used)) static int
pci_iov_parse_config(struct pcicfg_iov *iov, struct pci_iov_arg *arg,
    nvlist_t **ret)
{
 void *packed_config;
 nvlist_t *config;
 int error;

 config = ((void*)0);
 packed_config = ((void*)0);

 if (arg->len > pci_iov_max_config) {
  error = EMSGSIZE;
  goto out;
 }

 packed_config = malloc(arg->len, M_SRIOV, M_WAITOK);

 error = copyin(arg->config, packed_config, arg->len);
 if (error != 0)
  goto out;

 config = nvlist_unpack(packed_config, arg->len, NV_FLAG_IGNORE_CASE);
 if (config == ((void*)0)) {
  error = EINVAL;
  goto out;
 }

 error = pci_iov_schema_validate_config(iov->iov_schema, config);
 if (error != 0)
  goto out;

 error = nvlist_error(config);
 if (error != 0)
  goto out;

 *ret = config;
 config = ((void*)0);

out:
 nvlist_destroy(config);
 free(packed_config, M_SRIOV);
 return (error);
}
