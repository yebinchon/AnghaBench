
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intr_event_remove_handler (void*) ;

int
swi_remove(void *cookie)
{

 return (intr_event_remove_handler(cookie));
}
