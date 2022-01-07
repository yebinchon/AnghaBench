
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ticks ;

__attribute__((used)) static inline uint64_t
ocs_get_os_ticks(void)
{
 return ticks;
}
