
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcoll (char*,char*) ;

int
charcoll(const void *a, const void *b)
{
 static char sa[2], sb[2];

 sa[0] = *(const int *)a;
 sb[0] = *(const int *)b;
 return (strcoll(sa, sb));
}
