
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refresh_params {unsigned int flags; int * has_errors; } ;


 int read_cache () ;
 int refresh_cache (unsigned int) ;
 int setup_work_tree () ;

__attribute__((used)) static int refresh(struct refresh_params *o, unsigned int flag)
{
 setup_work_tree();
 read_cache();
 *o->has_errors |= refresh_cache(o->flags | flag);
 return 0;
}
