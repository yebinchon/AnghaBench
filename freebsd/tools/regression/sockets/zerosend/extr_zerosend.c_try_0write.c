
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int err (int,char*,char const*) ;
 int errx (int,char*,char const*,scalar_t__) ;
 scalar_t__ write (int,char*,int ) ;

__attribute__((used)) static void
try_0write(const char *test, int fd)
{
 ssize_t len;
 char ch;

 ch = 0;
 len = write(fd, &ch, 0);
 if (len < 0)
  err(1, "%s: try_0write", test);
 if (len != 0)
  errx(1, "%s: try_0write: returned %zd", test, len);
}
