
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct witness {int w_line; } ;
struct lock_object {struct witness* lo_witness; } ;


 scalar_t__ witness_cold ;
 int witness_watch ;

int
witness_line(struct lock_object *lock)
{
 struct witness *w;

 if (witness_cold || witness_watch < 1 || lock->lo_witness == ((void*)0))
  return (0);
 w = lock->lo_witness;
 return (w->w_line);
}
