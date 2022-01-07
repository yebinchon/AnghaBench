
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char*,char*,unsigned int*) ;
 int strlen (char*) ;

int str2wep(char *wep, int *len, char *str)
{
 int klen;

 klen = strlen(str);
 if (klen % 2)
  return -1;
 klen /= 2;

 if (klen != 5 && klen != 13)
  return -1;

 *len = klen;

 while (klen--) {
  unsigned int x;

  if (sscanf(str, "%2x", &x) != 1)
   return -1;

  *wep = (unsigned char) x;
  wep++;
  str += 2;
 }

 return 0;
}
