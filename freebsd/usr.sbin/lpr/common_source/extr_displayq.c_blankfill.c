
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int col ;
 int putchar (char) ;

void
blankfill(int tocol)
{
 while (col++ < tocol)
  putchar(' ');
}
