
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KASSERT (int,char*) ;
 int NUM_OF_HPTSI_SLOTS ;

__attribute__((used)) static inline int
hpts_tick(uint32_t wheel_tick, uint32_t plus)
{




 KASSERT(wheel_tick < NUM_OF_HPTSI_SLOTS, ("Invalid tick %u not on wheel", wheel_tick));
 return ((wheel_tick + plus) % NUM_OF_HPTSI_SLOTS);
}
