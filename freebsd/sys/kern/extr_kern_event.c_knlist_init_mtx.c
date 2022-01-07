
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct knlist {int dummy; } ;


 int knlist_init (struct knlist*,struct mtx*,int *,int *,int *,int *) ;

void
knlist_init_mtx(struct knlist *knl, struct mtx *lock)
{

 knlist_init(knl, lock, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
