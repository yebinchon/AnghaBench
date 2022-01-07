
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int* fd_map; } ;
typedef int NDSLOTTYPE ;


 int NDENTRIES ;
 int NDSLOT (int) ;
 int NDSLOTS (int) ;
 int ffsl (int) ;

__attribute__((used)) static int
fd_first_free(struct filedesc *fdp, int low, int size)
{
 NDSLOTTYPE *map = fdp->fd_map;
 NDSLOTTYPE mask;
 int off, maxoff;

 if (low >= size)
  return (low);

 off = NDSLOT(low);
 if (low % NDENTRIES) {
  mask = ~(~(NDSLOTTYPE)0 >> (NDENTRIES - (low % NDENTRIES)));
  if ((mask &= ~map[off]) != 0UL)
   return (off * NDENTRIES + ffsl(mask) - 1);
  ++off;
 }
 for (maxoff = NDSLOTS(size); off < maxoff; ++off)
  if (map[off] != ~0UL)
   return (off * NDENTRIES + ffsl(~map[off]) - 1);
 return (size);
}
