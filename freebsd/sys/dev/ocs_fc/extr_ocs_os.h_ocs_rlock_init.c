
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ocs_t ;
struct TYPE_3__ {int name; int lock; } ;
typedef TYPE_1__ ocs_rlock_t ;


 int MAX_LOCK_DESC_LEN ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int MTX_RECURSE ;
 int mtx_init (int *,int ,int *,int) ;
 int ocs_strncpy (int ,char const*,int ) ;

__attribute__((used)) static inline void
ocs_rlock_init(ocs_t *ocs, ocs_rlock_t *lock, const char *name)
{
 ocs_strncpy(lock->name, name, MAX_LOCK_DESC_LEN);
 mtx_init(&(lock)->lock, lock->name, ((void*)0), MTX_DEF | MTX_RECURSE | MTX_DUPOK);
}
