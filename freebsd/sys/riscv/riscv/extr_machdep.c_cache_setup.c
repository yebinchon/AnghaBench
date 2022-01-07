
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dcache_line_size ;
 scalar_t__ icache_line_size ;
 scalar_t__ idcache_line_size ;

__attribute__((used)) static void
cache_setup(void)
{



 dcache_line_size = 0;
 icache_line_size = 0;
 idcache_line_size = 0;
}
