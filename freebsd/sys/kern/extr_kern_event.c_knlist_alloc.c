
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct knlist {int dummy; } ;


 int M_KQUEUE ;
 int M_WAITOK ;
 int knlist_init_mtx (struct knlist*,struct mtx*) ;
 struct knlist* malloc (int,int ,int ) ;

struct knlist *
knlist_alloc(struct mtx *lock)
{
 struct knlist *knl;

 knl = malloc(sizeof(struct knlist), M_KQUEUE, M_WAITOK);
 knlist_init_mtx(knl, lock);
 return (knl);
}
