
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_object {int lo_flags; char const* lo_name; } ;
struct lock_class {int dummy; } ;


 int KASSERT (int,char*) ;
 int LOCK_CLASS_MAX ;
 int LOCK_LOG_INIT (struct lock_object*,int ) ;
 int LO_CLASSSHIFT ;
 int LO_INITIALIZED ;
 int LO_NEW ;
 int WITNESS_INIT (struct lock_object*,char const*) ;
 struct lock_class** lock_classes ;
 int lock_initialized (struct lock_object*) ;

void
lock_init(struct lock_object *lock, struct lock_class *class, const char *name,
    const char *type, int flags)
{
 int i;


 KASSERT(flags & LO_NEW || !lock_initialized(lock),
     ("lock \"%s\" %p already initialized", name, lock));


 for (i = 0; i < LOCK_CLASS_MAX; i++)
  if (lock_classes[i] == class) {
   lock->lo_flags = i << LO_CLASSSHIFT;
   break;
  }
 KASSERT(i < LOCK_CLASS_MAX, ("unknown lock class %p", class));


 lock->lo_name = name;
 lock->lo_flags |= flags | LO_INITIALIZED;
 LOCK_LOG_INIT(lock, 0);
 WITNESS_INIT(lock, (type != ((void*)0)) ? type : name);
}
