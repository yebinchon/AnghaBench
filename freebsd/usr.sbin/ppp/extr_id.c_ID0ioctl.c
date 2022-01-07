
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID0set0 () ;
 int ID0setuser () ;
 int LogID0 ;
 int ioctl (int,unsigned long,void*) ;
 int log_Printf (int ,char*,int,int,unsigned long,void*) ;

int
ID0ioctl(int fd, unsigned long req, void *arg)
{
  int ret;

  ID0set0();
  ret = ioctl(fd, req, arg);
  log_Printf(LogID0, "%d = ioctl(%d, %lu, %p)\n", ret, fd, req, arg);
  ID0setuser();
  return ret;
}
