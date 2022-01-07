
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int err (int,char*,char const*) ;
 int errx (int,char*,char const*,scalar_t__) ;
 scalar_t__ send (int,char*,int ,int ) ;

__attribute__((used)) static void
try_0send(const char *test, int fd)
{
 ssize_t len;
 char ch;

 ch = 0;
 len = send(fd, &ch, 0, 0);
 if (len < 0)
  err(1, "%s: try_0send", test);
 if (len != 0)
  errx(1, "%s: try_0send: returned %zd", test, len);
}
