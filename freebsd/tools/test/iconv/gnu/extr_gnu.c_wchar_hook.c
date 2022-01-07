
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int printf (char*,int) ;
 int wc_hook ;

void
wchar_hook(wchar_t wc, void *data)
{




 wc_hook = 1;
}
