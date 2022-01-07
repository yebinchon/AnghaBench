
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;



__attribute__((used)) static inline boolean_t
uftdi_baud_within_tolerance(uint64_t speed, uint64_t target)
{
 return ((speed >= (target * 100) / 103) &&
     (speed <= (target * 100) / 97));
}
