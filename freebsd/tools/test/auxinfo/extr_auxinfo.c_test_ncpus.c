
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_NPROCESSORS_CONF ;
 int printf (char*,int ) ;
 int sysconf (int ) ;

__attribute__((used)) static void
test_ncpus(void)
{

 printf("NCPUs: %ld\n", sysconf(_SC_NPROCESSORS_CONF));
}
