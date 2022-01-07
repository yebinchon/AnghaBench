
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcpy (char*,char const*,size_t) ;
 char tolower (unsigned char) ;

void
istrncpy(char *dest, const char *src, size_t dsize)
{

 strlcpy(dest, src, dsize);
 for (; *dest; dest++)
  *dest = tolower((unsigned char)*dest);
}
