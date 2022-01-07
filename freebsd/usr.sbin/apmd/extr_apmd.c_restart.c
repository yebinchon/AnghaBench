
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_config () ;
 int dump_config () ;
 int read_config () ;
 scalar_t__ verbose ;

void
restart(void)
{
 destroy_config();
 read_config();
 if (verbose)
  dump_config();
}
