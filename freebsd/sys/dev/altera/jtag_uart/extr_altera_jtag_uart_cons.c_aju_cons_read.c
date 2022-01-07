
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AJU_CONSOLE_LOCK_ASSERT () ;
 char aju_cons_buffer_data ;
 scalar_t__ aju_cons_buffer_valid ;
 int aju_cons_readable () ;

__attribute__((used)) static char
aju_cons_read(void)
{

 AJU_CONSOLE_LOCK_ASSERT();

 while (!aju_cons_readable());
 aju_cons_buffer_valid = 0;
 return (aju_cons_buffer_data);
}
