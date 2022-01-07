
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plot {scalar_t__ span; char** bar; int width; int x0; int dx; int height; char* data; int num_datasets; scalar_t__ separate_bars; } ;
struct dataset {unsigned int n; int* points; } ;


 int Avg (struct dataset*) ;
 int Median (struct dataset*) ;
 int Stddev (struct dataset*) ;
 int assert (int ) ;
 char** calloc (int,int ) ;
 int isnan (int) ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;
 struct plot plot ;
 char* realloc (char*,int) ;

__attribute__((used)) static void
PlotSet(struct dataset *ds, int val)
{
 struct plot *pl;
 int i, j, m, x;
 unsigned n;
 int bar;

 pl = &plot;
 if (pl->span == 0)
  return;

 if (pl->separate_bars)
  bar = val-1;
 else
  bar = 0;

 if (pl->bar == ((void*)0)) {
  pl->bar = calloc(sizeof(char *), pl->num_datasets);
  assert(pl->bar != ((void*)0));
 }

 if (pl->bar[bar] == ((void*)0)) {
  pl->bar[bar] = malloc(pl->width);
  assert(pl->bar[bar] != ((void*)0));
  memset(pl->bar[bar], 0, pl->width);
 }

 m = 1;
 i = -1;
 j = 0;
 for (n = 0; n < ds->n; n++) {
  x = (ds->points[n] - pl->x0) / pl->dx;
  if (x == i) {
   j++;
   if (j > m)
    m = j;
  } else {
   j = 1;
   i = x;
  }
 }
 m += 1;
 if (m > pl->height) {
  pl->data = realloc(pl->data, pl->width * m);
  assert(pl->data != ((void*)0));
  memset(pl->data + pl->height * pl->width, 0,
      (m - pl->height) * pl->width);
 }
 pl->height = m;
 i = -1;
 for (n = 0; n < ds->n; n++) {
  x = (ds->points[n] - pl->x0) / pl->dx;
  if (x == i) {
   j++;
  } else {
   j = 1;
   i = x;
  }
  pl->data[j * pl->width + x] |= val;
 }
 if (!isnan(Stddev(ds))) {
  x = ((Avg(ds) - Stddev(ds)) - pl->x0) / pl->dx;
  m = ((Avg(ds) + Stddev(ds)) - pl->x0) / pl->dx;
  pl->bar[bar][m] = '|';
  pl->bar[bar][x] = '|';
  for (i = x + 1; i < m; i++)
   if (pl->bar[bar][i] == 0)
    pl->bar[bar][i] = '_';
 }
 x = (Median(ds) - pl->x0) / pl->dx;
 pl->bar[bar][x] = 'M';
 x = (Avg(ds) - pl->x0) / pl->dx;
 pl->bar[bar][x] = 'A';
}
