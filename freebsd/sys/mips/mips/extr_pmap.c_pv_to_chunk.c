
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pv_chunk {int dummy; } ;
typedef scalar_t__ pv_entry_t ;


 scalar_t__ PAGE_MASK ;

__attribute__((used)) static __inline struct pv_chunk *
pv_to_chunk(pv_entry_t pv)
{

 return ((struct pv_chunk *)((uintptr_t)pv & ~(uintptr_t)PAGE_MASK));
}
