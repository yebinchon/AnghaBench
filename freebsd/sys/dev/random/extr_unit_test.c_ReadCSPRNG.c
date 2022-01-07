
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct TYPE_2__ {int (* ra_read ) (int*,int) ;int (* ra_pre_read ) () ;int (* ra_seeded ) () ;} ;


 int RANDOM_BLOCKSIZE ;
 size_t block_deflate (int*,int*,int) ;
 int free (int*) ;
 int* malloc (int) ;
 int printf (char*,...) ;
 TYPE_1__ random_alg_context ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 (int*,int) ;
 int thrd_exit (int ) ;
 int usleep (int) ;

__attribute__((used)) static int
ReadCSPRNG(void *threadid)
{
 size_t tid, zsize;
 u_int buffersize;
 uint8_t *buf, *zbuf;
 int i;




 tid = (size_t)threadid;
 printf("Thread #%zd starts\n", tid);

 while (!random_alg_context.ra_seeded())
 {
  random_alg_context.ra_pre_read();
  usleep(100);
 }

 for (i = 0; i < 100000; i++) {
  buffersize = i + RANDOM_BLOCKSIZE;
  buffersize -= buffersize%RANDOM_BLOCKSIZE;
  buf = malloc(buffersize);
  zbuf = malloc(2*i + 1024);
  if (i % 1000 == 0)
   printf("Thread read %zd - %d\n", tid, i);
  if (buf != ((void*)0) && zbuf != ((void*)0)) {
   random_alg_context.ra_pre_read();
   random_alg_context.ra_read(buf, buffersize);
   zsize = block_deflate(buf, zbuf, i);
   if (zsize < i)
    printf("ERROR!! Compressible RNG output!\n");
   free(zbuf);
   free(buf);
  }
  usleep(100);
 }

 printf("Thread #%zd ends\n", tid);

 thrd_exit(0);

 return (0);
}
