
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILESIZE ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int MS_INVALIDATE ;
 int MS_SYNC ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int S_IRWXU ;
 int fsync (int) ;
 void* mmap (int *,int ,int,int ,int,int ) ;
 int msync (void*,int ,int) ;
 int munmap (void*,int ) ;
 int open (char*,int,int ) ;
 int perror (char*) ;
 int wbuffer ;
 int write (int,int ,int ) ;

int prepareFile(char* filename,int* fdp)
{
  int fd;
  int len;
  int status;
  void *addr;

  fd = open(filename,O_CREAT | O_TRUNC | O_RDWR,S_IRWXU);
  if (fd == -1)
    {
      perror("Creating file");
      return fd;
    }

  len = write(fd,wbuffer,FILESIZE);
  if (len < 0)
    {
      perror("Write failed");
      return 1;
    }

  status = fsync(fd);
   if (status != 0)
    {
        perror("fsync failed");
 return 1;
    }

  addr = mmap(((void*)0),FILESIZE, PROT_READ | PROT_WRITE , MAP_SHARED, fd, 0);
  if (addr == MAP_FAILED)
    {
      perror("Mmap failed");
      return 1;
    }

  status = msync(addr,FILESIZE,MS_INVALIDATE | MS_SYNC);
  if (status != 0)
    {
        perror("Msync failed");
 return 1;
    }

  munmap(addr,FILESIZE);

  *fdp = fd;
  return 0;
}
