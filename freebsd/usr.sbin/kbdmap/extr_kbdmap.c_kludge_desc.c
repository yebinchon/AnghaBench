
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {char* desc; } ;


 char* realloc (char*,int) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
kludge_desc(struct keymap **km_sorted, int num_keymaps)
{
 int i;

 for (i=0; i<num_keymaps; i++) {
  char *p;
  char *km = km_sorted[i]->desc;
  if ((p = strstr(km, "8x8")) != ((void*)0)) {
   int len;
   int j;
   int offset;

   offset = p - km;


   len = strlen(km);
   km = realloc(km, len + 2);

   for (j=len; j!=offset+1; j--)
    km[j + 1] = km[j];

   km[offset+2] = '0';

   km_sorted[i]->desc = km;
  }
 }
}
