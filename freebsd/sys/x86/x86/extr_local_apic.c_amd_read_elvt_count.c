
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ APIC_ELVT_MAX ;
 int APIC_EXTF_ELVT_MASK ;
 int APIC_EXTF_ELVT_SHIFT ;
 int amd_read_ext_features () ;
 int min (int,scalar_t__) ;

__attribute__((used)) static inline uint32_t
amd_read_elvt_count(void)
{
 uint32_t extf;
 uint32_t count;

 extf = amd_read_ext_features();
 count = (extf & APIC_EXTF_ELVT_MASK) >> APIC_EXTF_ELVT_SHIFT;
 count = min(count, APIC_ELVT_MAX + 1);
 return (count);
}
