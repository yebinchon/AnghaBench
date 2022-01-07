
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct malloc_type {int dummy; } ;


 int HASH_WAITOK ;
 void* phashinit_flags (int,struct malloc_type*,int *,int ) ;

void *
phashinit(int elements, struct malloc_type *type, u_long *nentries)
{

 return (phashinit_flags(elements, type, nentries, HASH_WAITOK));
}
