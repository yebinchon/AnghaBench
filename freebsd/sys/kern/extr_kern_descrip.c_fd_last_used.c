
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int* fd_map; } ;
typedef int NDSLOTTYPE ;


 int NDENTRIES ;
 int NDSLOT (int) ;
 int flsl (int) ;

__attribute__((used)) static int
fd_last_used(struct filedesc *fdp, int size)
{
 NDSLOTTYPE *map = fdp->fd_map;
 NDSLOTTYPE mask;
 int off, minoff;

 off = NDSLOT(size);
 if (size % NDENTRIES) {
  mask = ~(~(NDSLOTTYPE)0 << (size % NDENTRIES));
  if ((mask &= map[off]) != 0)
   return (off * NDENTRIES + flsl(mask) - 1);
  --off;
 }
 for (minoff = NDSLOT(0); off >= minoff; --off)
  if (map[off] != 0)
   return (off * NDENTRIES + flsl(map[off]) - 1);
 return (-1);
}
