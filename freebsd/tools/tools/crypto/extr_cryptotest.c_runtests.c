
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int timing ;
struct timeval {double tv_usec; scalar_t__ tv_sec; } ;
typedef int cryptostats ;
struct alg {int blocksize; char* name; scalar_t__ ishash; } ;
typedef int stats ;
typedef int otiming ;
typedef int mask ;
typedef int cpuset_t ;
struct TYPE_2__ {scalar_t__ count; } ;


 int CPU_LEVEL_WHICH ;
 int CPU_SET (int,int *) ;
 int CPU_WHICH_PID ;
 int CPU_ZERO (int *) ;
 int MAP_ANON ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int WAIT_MYPGRP ;
 int cpuset_setaffinity (int ,int ,int,int,int *) ;
 int exit (int ) ;
 int fflush (int ) ;
 scalar_t__ fork () ;
 void* mmap (int *,int,int,int,int,int ) ;
 int perror (char*) ;
 int printf (char*,double,...) ;
 int printt (char*,TYPE_1__*) ;
 int resetstats () ;
 int runtest (struct alg*,struct alg*,int,int,int ,struct timeval*) ;
 int stdout ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int*,int) ;
 scalar_t__ verbose ;
 int waitpid (int ,int*,int ) ;

void
runtests(struct alg *ealg, struct alg *alg, int count, int size, u_long cmd, int threads, int profile)
{
 int i, status;
 double t;
 void *region;
 struct timeval *tvp;
 struct timeval total;
 int otiming;

 if (size % alg->blocksize || (ealg && size % ealg->blocksize)) {
  if (verbose)
   printf("skipping blocksize %u 'cuz not a multiple of "
    "%s blocksize %u (or %s blocksize %u)\n",
    size, alg->name, alg->blocksize,
    ealg ? ealg->name : "n/a",
    ealg ? ealg->blocksize : 0);
  return;
 }

 region = mmap(((void*)0), threads * sizeof (struct timeval),
   PROT_READ|PROT_WRITE, MAP_ANON|MAP_SHARED, -1, 0);
 if (region == MAP_FAILED) {
  perror("mmap");
  return;
 }
 tvp = (struct timeval *) region;
 if (threads > 1) {
  for (i = 0; i < threads; i++)
   if (fork() == 0) {
    cpuset_t mask;
    CPU_ZERO(&mask);
    CPU_SET(i, &mask);
    cpuset_setaffinity(CPU_LEVEL_WHICH, CPU_WHICH_PID,
        -1, sizeof(mask), &mask);
    runtest(ealg, alg, count, size, cmd, &tvp[i]);
    exit(0);
   }
  while (waitpid(WAIT_MYPGRP, &status, 0) != -1)
   ;
 } else
  runtest(ealg, alg, count, size, cmd, tvp);

 t = 0;
 for (i = 0; i < threads; i++)
  t += (((double)tvp[i].tv_sec * 1000000 + tvp[i].tv_usec) / 1000000);
 if (t) {
  int nops = alg->ishash ? count : 2*count;

  nops *= threads;
  printf("%8.3lf sec, %7d %6s%s%6s crypts, %7d bytes, %8.0lf byte/sec, %7.1lf Mb/sec\n",
      t, nops, alg->name, ealg? "+" : "", ealg? ealg->name : "",
      size, (double)nops*size / t,
      (double)nops*size / t * 8 / 1024 / 1024);
 }
 fflush(stdout);
}
