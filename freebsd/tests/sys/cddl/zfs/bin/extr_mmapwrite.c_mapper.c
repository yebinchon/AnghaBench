
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int exit (int) ;
 void* mmap (void*,int,int ,int,int,int ) ;
 int perror (char*) ;

__attribute__((used)) static void *
mapper(void *fdp)
{
 void *addr;
 int fd = *(int *)fdp;

 if ((addr =
     mmap(0, 8192, PROT_READ, MAP_SHARED, fd, 0)) == MAP_FAILED) {
  perror("mmap");
  exit(1);
 }
 for (;;) {
  if (mmap(addr, 8192, PROT_READ,
      MAP_SHARED|MAP_FIXED, fd, 0) == MAP_FAILED) {
   perror("mmap");
   exit(1);
  }
 }

 return ((void *)1);
}
