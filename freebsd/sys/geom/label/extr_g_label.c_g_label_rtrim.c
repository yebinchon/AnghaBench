
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ptrdiff_t ;



void
g_label_rtrim(char *label, size_t size)
{
 ptrdiff_t i;

 for (i = size - 1; i >= 0; i--) {
  if (label[i] == '\0')
   continue;
  else if (label[i] == ' ')
   label[i] = '\0';
  else
   break;
 }
}
