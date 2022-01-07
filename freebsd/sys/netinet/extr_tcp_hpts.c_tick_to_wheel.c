
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NUM_OF_HPTSI_SLOTS ;

__attribute__((used)) static inline int
tick_to_wheel(uint32_t cts_in_wticks)
{




 return (cts_in_wticks % NUM_OF_HPTSI_SLOTS);
}
