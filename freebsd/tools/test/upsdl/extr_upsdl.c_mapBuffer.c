
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 void* mmap (char*,int,int,int,int,int ) ;
 int pagesize ;
 int perror (char*) ;

int mapBuffer(char** bufferp,int fd1,int fd2)
{
  void* addr;
  char *buffer;

  addr = mmap(((void*)0),pagesize*2, PROT_READ | PROT_WRITE , MAP_SHARED, fd1, 0);
  if (addr == MAP_FAILED)
    {
      perror("Mmap failed");
      return 1;
    }

  buffer = addr;
  addr = mmap(buffer + pagesize,pagesize, PROT_READ | PROT_WRITE , MAP_FIXED |
MAP_SHARED, fd2, 0);

  if (addr == MAP_FAILED)
    {
      perror("Mmap2 failed");
      return 1;
    }
  *bufferp = buffer;
  return 0;
}
