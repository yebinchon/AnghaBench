
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int len ;


 void* calloc (int,size_t) ;
 int err (int,char*) ;
 int read (int,void*,size_t) ;

void
receive_chunk(void **bufp, size_t *lenp, int pipefd)
{
 ssize_t ret;
 size_t len;
 void *buf;

 ret = read(pipefd, &len, sizeof(len));
 if (ret != sizeof(len))
  err(1, "read");

 buf = calloc(1, len);
 if (buf == ((void*)0))
  err(1, "calloc");

 ret = read(pipefd, buf, len);
 if (ret != (ssize_t)len)
  err(1, "read");

 *bufp = buf;
 *lenp = len;
}
