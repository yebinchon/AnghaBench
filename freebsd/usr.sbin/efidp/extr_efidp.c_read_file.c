
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;


 size_t MAXSIZE ;
 int * malloc (size_t) ;
 scalar_t__ read (int,int *,int) ;

__attribute__((used)) static ssize_t
read_file(int fd, void **rv)
{
 uint8_t *retval;
 size_t len;
 off_t off;
 ssize_t red;

 len = MAXSIZE;
 off = 0;
 retval = malloc(len);
 do {
  red = read(fd, retval + off, len - off);
  if (red == 0)
   break;
  off += red;
  if (off == (off_t)len)
   break;
 } while (1);
 *rv = retval;

 return off;
}
