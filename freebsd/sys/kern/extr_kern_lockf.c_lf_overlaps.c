
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry {scalar_t__ lf_start; scalar_t__ lf_end; } ;



__attribute__((used)) static int
lf_overlaps(struct lockf_entry *x, struct lockf_entry *y)
{

 return (x->lf_start <= y->lf_end && x->lf_end >= y->lf_start);
}
