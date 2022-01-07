
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int type; char const* f; char const* s; int tsc; void* td; } ;


 long atomic_fetchadd_long (int *,int) ;
 int get_cyclecount () ;
 long nitems (TYPE_1__*) ;
 int nrecs ;
 TYPE_1__* timestamps ;

void
tslog(void * td, int type, const char * f, const char * s)
{
 uint64_t tsc = get_cyclecount();
 long pos;


 pos = atomic_fetchadd_long(&nrecs, 1);


 if (pos < nitems(timestamps)) {
  timestamps[pos].td = td;
  timestamps[pos].type = type;
  timestamps[pos].f = f;
  timestamps[pos].s = s;
  timestamps[pos].tsc = tsc;
 }
}
