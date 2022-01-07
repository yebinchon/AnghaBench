
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int state; } ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
mtx_lock(struct mtx *mp)
{
 KASSERT(mp->state == 0, ("mutex already locked"));
 mp->state = 1;
}
