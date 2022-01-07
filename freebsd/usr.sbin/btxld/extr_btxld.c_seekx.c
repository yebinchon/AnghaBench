
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int SEEK_SET ;
 int err (int,char*,int ) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int tname ;

__attribute__((used)) static void
seekx(int fd, off_t offset)
{
    if (lseek(fd, offset, SEEK_SET) != offset)
 err(2, "%s", tname);
}
