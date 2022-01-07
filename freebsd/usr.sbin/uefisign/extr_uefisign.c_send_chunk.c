
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int len ;


 int err (int,char*) ;
 int write (int,void const*,size_t) ;

void
send_chunk(const void *buf, size_t len, int pipefd)
{
 ssize_t ret;

 ret = write(pipefd, &len, sizeof(len));
 if (ret != sizeof(len))
  err(1, "write");
 ret = write(pipefd, buf, len);
 if (ret != (ssize_t)len)
  err(1, "write");
}
