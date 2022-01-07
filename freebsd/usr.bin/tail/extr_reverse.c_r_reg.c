
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
struct mapinfo {char* start; scalar_t__ mapoff; scalar_t__ maxoff; scalar_t__ maplen; int fd; } ;
typedef scalar_t__ off_t ;
typedef enum STYLE { ____Placeholder_STYLE } STYLE ;
typedef int FILE ;


 int RBYTES ;
 int REVERSE ;
 int RLINES ;
 int fileno (int *) ;
 int ierr (char const*) ;
 scalar_t__ maparound (struct mapinfo*,scalar_t__) ;
 scalar_t__ mapprint (struct mapinfo*,scalar_t__,scalar_t__) ;
 scalar_t__ munmap (char*,scalar_t__) ;

__attribute__((used)) static void
r_reg(FILE *fp, const char *fn, enum STYLE style, off_t off, struct stat *sbp)
{
 struct mapinfo map;
 off_t curoff, size, lineend;
 int i;

 if (!(size = sbp->st_size))
  return;

 map.start = ((void*)0);
 map.mapoff = map.maxoff = size;
 map.fd = fileno(fp);
 map.maplen = 0;





 curoff = size - 2;
 lineend = size;
 while (curoff >= 0) {
  if (curoff < map.mapoff ||
      curoff >= map.mapoff + (off_t)map.maplen) {
   if (maparound(&map, curoff) != 0) {
    ierr(fn);
    return;
   }
  }
  for (i = curoff - map.mapoff; i >= 0; i--) {
   if (style == RBYTES && --off == 0)
    break;
   if (map.start[i] == '\n')
    break;
  }

  curoff = map.mapoff + i;
  if (i < 0)
   continue;


  if (mapprint(&map, curoff + 1, lineend - curoff - 1) != 0) {
   ierr(fn);
   return;
  }
  lineend = curoff + 1;
  curoff--;

  if (style == RLINES)
   off--;

  if (off == 0 && style != REVERSE) {

   curoff = 0;
   break;
  }
 }
 if (curoff < 0 && mapprint(&map, 0, lineend) != 0) {
  ierr(fn);
  return;
 }
 if (map.start != ((void*)0) && munmap(map.start, map.maplen))
  ierr(fn);
}
