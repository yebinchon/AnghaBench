
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;


 int free (int *) ;
 scalar_t__ kread (int ,int *,size_t) ;
 int kvm_counter_u64_fetch (int ,int ) ;
 int kvmd ;
 scalar_t__ kvmd_init () ;
 int * malloc (size_t) ;
 int xo_err (int,char*) ;
 int xo_warnx (char*) ;

int
kread_counters(u_long addr, void *buf, size_t size)
{
 uint64_t *c;
 u_long *counters;
 size_t i, n;

 if (kvmd_init() < 0)
  return (-1);

 if (size % sizeof(uint64_t) != 0) {
  xo_warnx("kread_counters: invalid counter set size");
  return (-1);
 }

 n = size / sizeof(uint64_t);
 if ((counters = malloc(n * sizeof(u_long))) == ((void*)0))
  xo_err(-1, "malloc");
 if (kread(addr, counters, n * sizeof(u_long)) < 0) {
  free(counters);
  return (-1);
 }

 c = buf;
 for (i = 0; i < n; i++)
  c[i] = kvm_counter_u64_fetch(kvmd, counters[i]);

 free(counters);
 return (0);
}
