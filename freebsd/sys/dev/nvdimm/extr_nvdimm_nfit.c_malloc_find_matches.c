
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int ACPI_TABLE_NFIT ;


 int M_NVDIMM ;
 int M_WAITOK ;
 int find_matches (int *,int ,int ,int ,int ,void**,int) ;
 void** mallocarray (int,int,int ,int ) ;

__attribute__((used)) static void
malloc_find_matches(ACPI_TABLE_NFIT *nfitbl, uint16_t type, uint16_t offset,
    uint64_t mask, uint64_t value, void ***ptrs, int *ptrs_len)
{
 int count;

 count = find_matches(nfitbl, type, offset, mask, value, ((void*)0), 0);
 *ptrs_len = count;
 if (count == 0) {
  *ptrs = ((void*)0);
  return;
 }
 *ptrs = mallocarray(count, sizeof(void *), M_NVDIMM, M_WAITOK);
 find_matches(nfitbl, type, offset, mask, value, *ptrs, *ptrs_len);
}
