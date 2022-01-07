
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int io_buf ;


 int SEEK_SET ;
 size_t const SIZE_MAX ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 size_t read (int,int *,size_t) ;

__attribute__((used)) static bool
io_pread(int fd, io_buf *buf, size_t size, off_t pos)
{


 if (lseek(fd, pos, SEEK_SET) != pos) {
  return 1;
 }

 const size_t amount = read(fd, buf, size);
 if (amount == SIZE_MAX)
  return 1;

 if (amount != size) {
  return 1;
 }

 return 0;
}
