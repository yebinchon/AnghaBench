
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {char* desc; } ;


 char* realloc (char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
unkludge_desc(struct keymap **km_sorted, int num_keymaps)
{
 int i;

 for (i=0; i<num_keymaps; i++) {
  char *p;
  char *km = km_sorted[i]->desc;
  if ((p = strstr(km, "8x08")) != ((void*)0)) {
   p += 2;
   while (*p++)
    p[-1] = p[0];

   km = realloc(km, p - km - 1);
   km_sorted[i]->desc = km;
  }
 }
}
