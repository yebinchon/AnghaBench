
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int keep (char*) ;
 char** kept ;
 int kept_size ;
 scalar_t__ string_in_use (char*) ;

__attribute__((used)) static void
free_definition(char *ptr)
{
 int i;


 for (i = 0; i < kept_size; i++) {
  if (!string_in_use(kept[i])) {
   kept_size--;
   free(kept[i]);
   if (i != kept_size)
    kept[i] = kept[kept_size];
   i--;
  }
 }


 if (string_in_use(ptr))
  keep(ptr);
 else
  free(ptr);
}
