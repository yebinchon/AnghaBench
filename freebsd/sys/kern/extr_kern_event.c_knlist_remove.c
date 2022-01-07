
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;
struct knlist {int dummy; } ;


 int knlist_remove_kq (struct knlist*,struct knote*,int,int ) ;

void
knlist_remove(struct knlist *knl, struct knote *kn, int islocked)
{

 knlist_remove_kq(knl, kn, islocked, 0);
}
