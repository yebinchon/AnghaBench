
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int ptr_arg; int (* ptr_event_cb ) (int ,int,int,int ) ;} ;


 TYPE_1__ console ;
 int stub1 (int ,int,int,int ) ;

void
console_ptr_event(uint8_t button, int x, int y)
{
 if (console.ptr_event_cb)
  (*console.ptr_event_cb)(button, x, y, console.ptr_arg);
}
