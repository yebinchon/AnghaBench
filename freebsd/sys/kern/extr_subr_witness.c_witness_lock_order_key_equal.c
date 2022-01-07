
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct witness_lock_order_key {scalar_t__ from; scalar_t__ to; } ;



__attribute__((used)) static __inline int
witness_lock_order_key_equal(const struct witness_lock_order_key *a,
    const struct witness_lock_order_key *b)
{

 return (a->from == b->from && a->to == b->to);
}
