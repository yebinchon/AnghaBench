
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUSTATES ;
 int CP_IDLE ;
 int cp_times_mib ;
 int errno ;
 int free (long*) ;
 long* malloc (size_t) ;
 int memcpy (long*,long*,size_t) ;
 int sysctl (int ,int,long*,size_t*,int *,int ) ;

__attribute__((used)) static int
read_usage_times(int *load)
{
 static long *cp_times = ((void*)0), *cp_times_old = ((void*)0);
 static int ncpus = 0;
 size_t cp_times_len;
 int error, cpu, i, total;

 if (cp_times == ((void*)0)) {
  cp_times_len = 0;
  error = sysctl(cp_times_mib, 2, ((void*)0), &cp_times_len, ((void*)0), 0);
  if (error)
   return (error);
  if ((cp_times = malloc(cp_times_len)) == ((void*)0))
   return (errno);
  if ((cp_times_old = malloc(cp_times_len)) == ((void*)0)) {
   free(cp_times);
   cp_times = ((void*)0);
   return (errno);
  }
  ncpus = cp_times_len / (sizeof(long) * CPUSTATES);
 }

 cp_times_len = sizeof(long) * CPUSTATES * ncpus;
 error = sysctl(cp_times_mib, 2, cp_times, &cp_times_len, ((void*)0), 0);
 if (error)
  return (error);

 if (load) {
  *load = 0;
  for (cpu = 0; cpu < ncpus; cpu++) {
   total = 0;
   for (i = 0; i < CPUSTATES; i++) {
       total += cp_times[cpu * CPUSTATES + i] -
    cp_times_old[cpu * CPUSTATES + i];
   }
   if (total == 0)
    continue;
   *load += 100 - (cp_times[cpu * CPUSTATES + CP_IDLE] -
       cp_times_old[cpu * CPUSTATES + CP_IDLE]) * 100 / total;
  }
 }

 memcpy(cp_times_old, cp_times, cp_times_len);

 return (0);
}
