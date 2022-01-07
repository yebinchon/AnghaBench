
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_status (char*,char*,char const*) ;

void
skip(const char *reason)
{

 print_status("ok", "skip %s", reason);
}
