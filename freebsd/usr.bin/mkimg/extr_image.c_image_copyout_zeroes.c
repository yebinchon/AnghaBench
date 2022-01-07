
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int off_t ;


 int ENOMEM ;
 int SEEK_CUR ;
 int * calloc (int,size_t) ;
 int image_copyout_memory (int,size_t,int *) ;
 int lseek (int,int ,int ) ;
 size_t secsz ;

int
image_copyout_zeroes(int fd, size_t count)
{
 static uint8_t *zeroes = ((void*)0);
 size_t sz;
 int error;

 if (lseek(fd, (off_t)count, SEEK_CUR) != -1)
  return (0);





 if (zeroes == ((void*)0)) {
  zeroes = calloc(1, secsz);
  if (zeroes == ((void*)0))
   return (ENOMEM);
 }

 while (count > 0) {
  sz = (count > secsz) ? secsz : count;
  error = image_copyout_memory(fd, sz, zeroes);
  if (error)
   return (error);
  count -= sz;
 }
 return (0);
}
