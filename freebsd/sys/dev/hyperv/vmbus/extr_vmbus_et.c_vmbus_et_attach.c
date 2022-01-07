
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_3__ {char* et_name; int et_flags; int et_quality; int et_frequency; int et_min_period; int et_max_period; int et_start; } ;


 int DELAY (int) ;
 int ET_FLAGS_ONESHOT ;
 int ET_FLAGS_PERCPU ;
 int HYPERV_TIMER_FREQ ;
 int et_register (TYPE_1__*) ;
 int smp_rendezvous (int *,int ,int *,int *) ;
 TYPE_1__ vmbus_et ;
 int vmbus_et_config ;
 int vmbus_et_start ;

__attribute__((used)) static int
vmbus_et_attach(device_t dev)
{


 vmbus_et.et_name = "Hyper-V";
 vmbus_et.et_flags = ET_FLAGS_ONESHOT | ET_FLAGS_PERCPU;
 vmbus_et.et_quality = 1000;
 vmbus_et.et_frequency = HYPERV_TIMER_FREQ;
 vmbus_et.et_min_period = (0x00000001ULL << 32) / HYPERV_TIMER_FREQ;
 vmbus_et.et_max_period = (0xfffffffeULL << 32) / HYPERV_TIMER_FREQ;
 vmbus_et.et_start = vmbus_et_start;





 DELAY(100);
 smp_rendezvous(((void*)0), vmbus_et_config, ((void*)0), ((void*)0));

 return (et_register(&vmbus_et));
}
