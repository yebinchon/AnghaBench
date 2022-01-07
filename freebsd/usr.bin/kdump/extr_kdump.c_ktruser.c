
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ decimal ;
 int printf (char*,...) ;
 int stdout ;
 scalar_t__ sysdecode_utrace (int ,void*,int) ;

void
ktruser(int len, void *p)
{
 unsigned char *cp;

 if (sysdecode_utrace(stdout, p, len)) {
  printf("\n");
  return;
 }

 printf("%d ", len);
 cp = p;
 while (len--)
  if (decimal)
   printf(" %d", *cp++);
  else
   printf(" %02x", *cp++);
 printf("\n");
}
