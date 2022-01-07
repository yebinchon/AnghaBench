
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_NPROCESSORS_ONLN ;
 int _SC_PAGESIZE ;
 int _SC_PHYS_PAGES ;
 int available_free_memory ;
 int free_memory ;
 int ncpu ;
 int nthreads ;
 int perror (char*) ;
 long sysconf (int ) ;

__attribute__((used)) static void
set_hw_params(void)
{
 long pages, psize;





 pages = sysconf(_SC_PHYS_PAGES);
 if (pages < 1) {
  perror("sysconf pages");
  pages = 1;
 }
 psize = sysconf(_SC_PAGESIZE);
 if (psize < 1) {
  perror("sysconf psize");
  psize = 4096;
 }
 free_memory = (unsigned long long) pages * (unsigned long long) psize;
 available_free_memory = free_memory / 2;

 if (available_free_memory < 1024)
  available_free_memory = 1024;
}
