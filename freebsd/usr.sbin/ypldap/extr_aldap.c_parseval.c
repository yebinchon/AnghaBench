
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hex ;


 char* calloc (int,size_t) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strtoumax (char*,int *,int) ;

char *
parseval(char *p, size_t len)
{
 char hex[3];
 char *buffer;
 size_t i, j;

 if ((buffer = calloc(1, len + 1)) == ((void*)0))
  return ((void*)0);

 for (i = j = 0; j < len; i++) {
  if (p[j] == '\\') {
   strlcpy(hex, p + j + 1, sizeof(hex));
   buffer[i] = (char)strtoumax(hex, ((void*)0), 16);
   j += 3;
  } else {
   buffer[i] = p[j];
   j++;
  }
 }

 return buffer;
}
