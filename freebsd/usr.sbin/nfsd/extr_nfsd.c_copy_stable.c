
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int LOG_ERR ;
 int SEEK_SET ;
 int fsync (int) ;
 int ftruncate (int,int ) ;
 int lseek (int,int ,int ) ;
 int read (int,char*,int) ;
 int syslog (int ,char*) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
copy_stable(int from_fd, int to_fd)
{
 int cnt, ret;
 static char buf[1024];

 ret = lseek(from_fd, (off_t)0, SEEK_SET);
 if (ret >= 0)
  ret = lseek(to_fd, (off_t)0, SEEK_SET);
 if (ret >= 0)
  ret = ftruncate(to_fd, (off_t)0);
 if (ret >= 0)
  do {
   cnt = read(from_fd, buf, 1024);
   if (cnt > 0)
    ret = write(to_fd, buf, cnt);
   else if (cnt < 0)
    ret = cnt;
  } while (cnt > 0 && ret >= 0);
 if (ret >= 0)
  ret = fsync(to_fd);
 if (ret < 0)
  syslog(LOG_ERR, "stable restart copy failure: %m");
}
