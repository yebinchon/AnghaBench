
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ TSTMP_GEQ (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline uint32_t
bbr_calc_time(uint32_t cts, uint32_t earlier_time) {






 if (TSTMP_GEQ(cts, earlier_time))
  return (cts - earlier_time);






 if (TSTMP_GEQ((cts + 10000), earlier_time))
  return (0);




 return (cts - earlier_time);
}
