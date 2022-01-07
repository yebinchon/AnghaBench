
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int IOAT_CHANSTS_ACTIVE ;
 int IOAT_CHANSTS_STATUS ;

__attribute__((used)) static inline boolean_t
is_ioat_active(uint64_t status)
{
 return ((status & IOAT_CHANSTS_STATUS) == IOAT_CHANSTS_ACTIVE);
}
