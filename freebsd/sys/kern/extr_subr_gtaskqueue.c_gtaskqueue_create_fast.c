
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int taskqueue_enqueue_fn ;
struct gtaskqueue {int dummy; } ;


 int MTX_SPIN ;
 struct gtaskqueue* _gtaskqueue_create (char const*,int,int ,void*,int ,char*) ;

__attribute__((used)) static struct gtaskqueue *
gtaskqueue_create_fast(const char *name, int mflags,
   taskqueue_enqueue_fn enqueue, void *context)
{
 return _gtaskqueue_create(name, mflags, enqueue, context,
   MTX_SPIN, "fast_taskqueue");
}
