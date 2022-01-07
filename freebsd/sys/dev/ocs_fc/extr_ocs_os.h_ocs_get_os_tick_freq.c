
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hz ;

__attribute__((used)) static inline uint32_t
ocs_get_os_tick_freq(void)
{
 return hz;
}
