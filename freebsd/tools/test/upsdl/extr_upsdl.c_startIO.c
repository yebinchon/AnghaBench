
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int pagesize ;
 int perror (char*) ;
 int write (int,char*,int) ;

int startIO(int fd,char *buffer)
{
  ssize_t len;
  len = write(fd,buffer,2*pagesize);
  if (len == -1)
    {
      perror("write failed");
      return 1;
    }
  return 0;
}
