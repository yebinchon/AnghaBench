
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;


 size_t strlen (char*) ;

char *reverse(char *s)
{
  UINT8 i, j;
  char c;

  i = 0;
  j = strlen(s) - 1;
  while(i < j) {
    c = s[i];
    s[i] = s[j];
    s[j] = c;
    i++;
    j--;
  }
  return(s);
}
