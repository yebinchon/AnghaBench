
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int wc; } ;
typedef TYPE_1__ charmap_t ;


 scalar_t__ RB_FIND (int ,int *,TYPE_1__*) ;
 int cmap_wc ;

int
check_charmap(wchar_t wc)
{
 charmap_t srch;

 srch.wc = wc;
 return (RB_FIND(cmap_wc, &cmap_wc, &srch) ? 0 : -1);
}
