
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
struct mapinfo {char* start; scalar_t__ mapoff; scalar_t__ maxoff; int maplen; int fd; } ;
typedef scalar_t__ off_t ;
typedef int FILE ;


 int SEEK_SET ;
 int exit (int) ;
 int fileno (int *) ;
 int fseeko (int *,scalar_t__,int ) ;
 int ierr (char const*) ;
 scalar_t__ maparound (struct mapinfo*,scalar_t__) ;
 scalar_t__ mapprint (struct mapinfo*,scalar_t__,scalar_t__) ;
 scalar_t__ munmap (char*,int ) ;

__attribute__((used)) static void
rlines(FILE *fp, const char *fn, off_t off, struct stat *sbp)
{
 struct mapinfo map;
 off_t curoff, size;
 int i;

 if (!(size = sbp->st_size))
  return;
 map.start = ((void*)0);
 map.fd = fileno(fp);
 map.mapoff = map.maxoff = size;





 curoff = size - 2;
 while (curoff >= 0) {
  if (curoff < map.mapoff && maparound(&map, curoff) != 0) {
   ierr(fn);
   return;
  }
  for (i = curoff - map.mapoff; i >= 0; i--)
   if (map.start[i] == '\n' && --off == 0)
    break;

  curoff = map.mapoff + i;
  if (i >= 0)
   break;
 }
 curoff++;
 if (mapprint(&map, curoff, size - curoff) != 0) {
  ierr(fn);
  exit(1);
 }


 if (fseeko(fp, sbp->st_size, SEEK_SET) == -1) {
  ierr(fn);
  return;
 }
 if (map.start != ((void*)0) && munmap(map.start, map.maplen)) {
  ierr(fn);
  return;
 }
}
