
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_t ;


 int sfence_vma () ;

__attribute__((used)) static __inline void
pmap_invalidate_all(pmap_t pmap)
{

 sfence_vma();
}
