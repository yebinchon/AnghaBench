
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;


 int M_ZERO ;
 int knote_zone ;
 struct knote* uma_zalloc (int ,int) ;

__attribute__((used)) static struct knote *
knote_alloc(int mflag)
{

 return (uma_zalloc(knote_zone, mflag | M_ZERO));
}
