
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GC_LOCK_ASSERT () ;
 char buffer_data ;
 scalar_t__ buffer_valid ;
 int gxemul_cons_readable () ;

__attribute__((used)) static char
gxemul_cons_read(void)
{

 GC_LOCK_ASSERT();

 while (!gxemul_cons_readable());
 buffer_valid = 0;
 return (buffer_data);
}
