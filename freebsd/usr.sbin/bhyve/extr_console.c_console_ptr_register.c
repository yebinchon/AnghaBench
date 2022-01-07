
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptr_event_func_t ;
struct TYPE_2__ {int ptr_priority; void* ptr_arg; int ptr_event_cb; } ;


 TYPE_1__ console ;

void
console_ptr_register(ptr_event_func_t event_cb, void *arg, int pri)
{
 if (pri > console.ptr_priority) {
  console.ptr_event_cb = event_cb;
  console.ptr_arg = arg;
  console.ptr_priority = pri;
 }
}
