
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_object {int dummy; } ;


 int panic (char*) ;

__attribute__((used)) static uintptr_t
unlock_lockmgr(struct lock_object *lock)
{

 panic("lockmgr locks do not support sleep interlocking");
}
