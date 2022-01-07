
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct checkout {int refresh_cache; struct index_state* istate; } ;
struct cache_entry {int name; } ;


 struct checkout CHECKOUT_INIT ;
 int _ (char*) ;
 scalar_t__ checkout_entry (struct cache_entry*,struct checkout*,int *,int *) ;
 int error (int ,int ) ;
 scalar_t__ lstat (int ,struct stat*) ;

__attribute__((used)) static int checkout_target(struct index_state *istate,
      struct cache_entry *ce, struct stat *st)
{
 struct checkout costate = CHECKOUT_INIT;

 costate.refresh_cache = 1;
 costate.istate = istate;
 if (checkout_entry(ce, &costate, ((void*)0), ((void*)0)) ||
     lstat(ce->name, st))
  return error(_("cannot checkout %s"), ce->name);
 return 0;
}
