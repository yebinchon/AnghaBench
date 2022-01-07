
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 scalar_t__ WEOF ;
 scalar_t__ putwchar (int) ;

__attribute__((used)) static int
outchar(int c)
{
 return (putwchar(c) != WEOF ? c : EOF);
}
