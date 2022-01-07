
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct witness {char const* w_file; } ;
struct lock_object {struct witness* lo_witness; } ;


 scalar_t__ witness_cold ;
 int witness_watch ;

const char *
witness_file(struct lock_object *lock)
{
 struct witness *w;

 if (witness_cold || witness_watch < 1 || lock->lo_witness == ((void*)0))
  return ("?");
 w = lock->lo_witness;
 return (w->w_file);
}
