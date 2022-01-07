
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int err (int,char*,int ) ;
 int errx (int,char*,int ) ;
 int tname ;
 int write (int,void const*,size_t) ;

__attribute__((used)) static void
writex(int fd, const void *buf, size_t nbyte)
{
    ssize_t n;

    if ((n = write(fd, buf, nbyte)) == -1)
 err(2, "%s", tname);
    if ((size_t)n != nbyte)
 errx(2, "%s: Short write", tname);
}
