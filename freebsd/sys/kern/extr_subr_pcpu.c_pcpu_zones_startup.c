
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UMA_ALIGN_PTR ;
 int UMA_ZONE_PCPU ;
 void* pcpu_zone_64 ;
 void* pcpu_zone_int ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
pcpu_zones_startup(void)
{

 pcpu_zone_int = uma_zcreate("int pcpu", sizeof(int),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_PCPU);
 pcpu_zone_64 = uma_zcreate("64 pcpu", sizeof(uint64_t),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_PCPU);
}
