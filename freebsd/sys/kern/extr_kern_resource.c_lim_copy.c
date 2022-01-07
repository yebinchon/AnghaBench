
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plimit {int pl_refcnt; int pl_rlimit; } ;


 int KASSERT (int,char*) ;
 int bcopy (int ,int ,int) ;

void
lim_copy(struct plimit *dst, struct plimit *src)
{

 KASSERT(dst->pl_refcnt <= 1, ("lim_copy to shared limit"));
 bcopy(src->pl_rlimit, dst->pl_rlimit, sizeof(src->pl_rlimit));
}
