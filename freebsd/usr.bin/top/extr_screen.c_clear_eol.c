
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ clear_line ;
 int overstrike ;
 int putcap (scalar_t__) ;
 int putchar (char) ;
 scalar_t__ smart_terminal ;

int
clear_eol(int len)
{
    if (smart_terminal && !overstrike && len > 0)
    {
 if (clear_line)
 {
     putcap(clear_line);
     return(0);
 }
 else
 {
     while (len-- > 0)
     {
  putchar(' ');
     }
     return(1);
 }
    }
    return(-1);
}
