
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REFRESH_IN_PORCELAIN ;
 int die_resolve_conflict (char*) ;
 scalar_t__ refresh_cache (int) ;

__attribute__((used)) static void refresh_cache_or_die(int refresh_flags)
{




 if (refresh_cache(refresh_flags | REFRESH_IN_PORCELAIN))
  die_resolve_conflict("commit");
}
