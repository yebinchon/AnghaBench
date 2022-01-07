
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int log_Printf (int ,char*,int,int,long) ;
 int write (int,void const*,size_t) ;

int
ID0write(int fd, const void *data, size_t len)
{
  int ret;

  ID0set0();
  ret = write(fd, data, len);
  log_Printf(LogID0, "%d = write(%d, data, %ld)\n", ret, fd, (long)len);
  ID0setuser();
  return ret;
}
