
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unrhdr {int ppfree; int alloc; } ;
struct unr {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct unr*,int ) ;
 int list ;

__attribute__((used)) static __inline void
delete_unr(struct unrhdr *uh, void *ptr)
{
 struct unr *up;

 uh->alloc--;
 up = ptr;
 TAILQ_INSERT_TAIL(&uh->ppfree, up, list);
}
