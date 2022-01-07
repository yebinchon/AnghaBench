
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int nvlist_t ;


 int pci_iov_schema_int (int *,char const*,char*,int ,int ) ;

void
pci_iov_schema_add_uint64(nvlist_t *schema, const char *name, uint32_t flags,
    uint64_t defaultVal)
{

 pci_iov_schema_int(schema, name, "uint64_t", flags, defaultVal);
}
