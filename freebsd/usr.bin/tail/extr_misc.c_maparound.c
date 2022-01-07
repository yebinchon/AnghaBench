
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapinfo {int maplen; int mapoff; int maxoff; int fd; int * start; } ;
typedef int off_t ;


 int * MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int TAILMAPLEN ;
 int abort () ;
 int * mmap (int *,int,int ,int ,int ,int) ;
 scalar_t__ munmap (int *,int) ;

int
maparound(struct mapinfo *mip, off_t offset)
{

 if (mip->start != ((void*)0) && munmap(mip->start, mip->maplen) != 0)
  return (1);

 mip->mapoff = offset & ~((off_t)TAILMAPLEN - 1);
 mip->maplen = TAILMAPLEN;
 if ((off_t)mip->maplen > mip->maxoff - mip->mapoff)
  mip->maplen = mip->maxoff - mip->mapoff;
 if (mip->maplen <= 0)
  abort();
 if ((mip->start = mmap(((void*)0), mip->maplen, PROT_READ, MAP_SHARED,
      mip->fd, mip->mapoff)) == MAP_FAILED)
  return (1);

 return (0);
}
