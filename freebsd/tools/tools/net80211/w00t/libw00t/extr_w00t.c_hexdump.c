
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void hexdump(void *b, int len)
{
 unsigned char *p = (unsigned char*) b;

 while (len--)
  printf("%.2X ", *p++);
 printf("\n");
}
