
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * legal_colors ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int
get_color_number(char *color)
{
 int i;

 for (i=0; i<16; i++) {
  if (!strcmp(color, legal_colors[i]))
   return i;
 }
 return -1;
}
