
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
pack_array(char **array, int end)
{
    int i, j;

    for (i = 0; i < end; i++) {
 if (array[i] == ((void*)0)) {
     for (j = i+1; j < end; ++j)
  if (array[j] != ((void*)0))
      array[i++] = array[j];
     for (; i < end; ++i)
  array[i] = ((void*)0);
     break;
 }
    }
}
