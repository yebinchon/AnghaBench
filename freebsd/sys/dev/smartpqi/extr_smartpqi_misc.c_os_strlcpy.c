
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcpy (char*,char*,int) ;

int os_strlcpy(char *dst, char *src, int size)
{
 return strlcpy(dst, src, size);
}
