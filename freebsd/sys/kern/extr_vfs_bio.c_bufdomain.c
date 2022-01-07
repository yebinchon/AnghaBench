
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {int dummy; } ;
struct buf {size_t b_domain; } ;


 struct bufdomain* bdomain ;

__attribute__((used)) static inline struct bufdomain *
bufdomain(struct buf *bp)
{

 return (&bdomain[bp->b_domain]);
}
