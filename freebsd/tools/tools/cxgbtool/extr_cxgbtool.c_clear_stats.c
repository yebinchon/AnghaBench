
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHELSIO_CLEAR_STATS ;
 scalar_t__ doit (char const*,int ,int *) ;
 int err (int,char*) ;

__attribute__((used)) static int
clear_stats(int argc, char *argv[], int start_arg, const char *iff_name)
{
 (void) argc;
 (void) argv;
 (void) start_arg;

 if (doit(iff_name, CHELSIO_CLEAR_STATS, ((void*)0)) < 0)
   err(1, "clearstats");

 return 0;
}
