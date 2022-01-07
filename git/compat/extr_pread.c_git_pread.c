
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef scalar_t__ off_t ;


 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int read_in_full (int,void*,size_t) ;

ssize_t git_pread(int fd, void *buf, size_t count, off_t offset)
{
        off_t current_offset;
        ssize_t rc;

        current_offset = lseek(fd, 0, SEEK_CUR);

        if (lseek(fd, offset, SEEK_SET) < 0)
                return -1;

        rc = read_in_full(fd, buf, count);

        if (current_offset != lseek(fd, current_offset, SEEK_SET))
                return -1;
        return rc;
}
