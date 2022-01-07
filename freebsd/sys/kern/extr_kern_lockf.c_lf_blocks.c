
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry {scalar_t__ lf_owner; scalar_t__ lf_type; } ;


 scalar_t__ F_WRLCK ;
 scalar_t__ lf_overlaps (struct lockf_entry*,struct lockf_entry*) ;

__attribute__((used)) static int
lf_blocks(struct lockf_entry *x, struct lockf_entry *y)
{

 return x->lf_owner != y->lf_owner
  && (x->lf_type == F_WRLCK || y->lf_type == F_WRLCK)
  && lf_overlaps(x, y);
}
