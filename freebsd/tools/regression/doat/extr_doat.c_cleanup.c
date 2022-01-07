
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int system (char*) ;

void
cleanup(void)
{
 system("/bin/sh -c 'rm -rf tmp'");
}
