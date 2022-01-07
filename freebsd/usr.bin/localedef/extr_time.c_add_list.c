
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
add_list(const char *ptr[], char *str, int limit)
{
 int i;
 for (i = 0; i < limit; i++) {
  if (ptr[i] == ((void*)0)) {
   ptr[i] = str;
   return;
  }
 }
 fprintf(stderr,"too many list elements");
}
