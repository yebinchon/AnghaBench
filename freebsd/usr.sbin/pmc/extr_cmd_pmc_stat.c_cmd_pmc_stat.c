
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmc_stat_internal (int,char**,int ) ;

int
cmd_pmc_stat(int argc, char **argv)
{
 return (pmc_stat_internal(argc, argv, 0));
}
