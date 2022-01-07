
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISO_FILENAME_MAXLENGTH_BEFORE_VERSION ;

__attribute__((used)) static int
cd9660_compare_filename(const char *first, const char *second)
{





 int p1 = 0;
 int p2 = 0;
 char c1, c2;


 while (p1 < ISO_FILENAME_MAXLENGTH_BEFORE_VERSION-1
  && p2 < ISO_FILENAME_MAXLENGTH_BEFORE_VERSION-1) {
  c1 = first[p1];
  c2 = second[p2];
  if (c1 == '.' && c2 =='.')
   break;
  else if (c1 == '.') {
   p2++;
   c1 = ' ';
  } else if (c2 == '.') {
   p1++;
   c2 = ' ';
  } else {
   p1++;
   p2++;
  }

  if (c1 < c2)
   return -1;
  else if (c1 > c2) {
   return 1;
  }
 }

 if (first[p1] == '.' && second[p2] == '.') {
  p1++;
  p2++;
  while (p1 < ISO_FILENAME_MAXLENGTH_BEFORE_VERSION - 1
   && p2 < ISO_FILENAME_MAXLENGTH_BEFORE_VERSION - 1) {
   c1 = first[p1];
   c2 = second[p2];
   if (c1 == ';' && c2 == ';')
    break;
   else if (c1 == ';') {
    p2++;
    c1 = ' ';
   } else if (c2 == ';') {
    p1++;
    c2 = ' ';
   } else {
    p1++;
    p2++;
   }

   if (c1 < c2)
    return -1;
   else if (c1 > c2)
    return 1;
  }
 }
 return 0;
}
