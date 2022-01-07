
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* dev_console_filename ;

void
ttyconsdev_select(const char *name)
{

 dev_console_filename = name;
}
