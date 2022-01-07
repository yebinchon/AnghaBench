
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int SEEK_SET ;
 int err (int,char*,int ) ;
 int fname ;
 int lseek (int,int,int ) ;
 int read (int,void*,size_t) ;

__attribute__((used)) static size_t
readx(int fd, void *buf, size_t nbyte, off_t offset)
{
    ssize_t n;

    if (offset != -1 && lseek(fd, offset, SEEK_SET) != offset)
 err(2, "%s", fname);
    if ((n = read(fd, buf, nbyte)) == -1)
 err(2, "%s", fname);
    return n;
}
