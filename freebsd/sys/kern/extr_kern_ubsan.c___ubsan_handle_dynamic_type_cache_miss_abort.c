
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CDynamicTypeCacheMissData {int dummy; } ;


 int ASSERT (struct CDynamicTypeCacheMissData*) ;
 int HandleDynamicTypeCacheMiss (int,struct CDynamicTypeCacheMissData*,unsigned long,unsigned long) ;

void
__ubsan_handle_dynamic_type_cache_miss_abort(struct CDynamicTypeCacheMissData *pData, unsigned long ulPointer, unsigned long ulHash)
{

 ASSERT(pData);

 HandleDynamicTypeCacheMiss(0, pData, ulPointer, ulHash);
}
