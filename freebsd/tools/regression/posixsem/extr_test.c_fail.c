
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_status (char*,int *) ;

void
fail(void)
{

 print_status("not ok", ((void*)0));
}
