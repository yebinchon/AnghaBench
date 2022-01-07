
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int count; } ;
typedef TYPE_1__ ocs_ref_t ;


 int ocs_atomic_read (int *) ;

__attribute__((used)) static inline uint32_t
ocs_ref_read_count(ocs_ref_t *ref)
{
 return ocs_atomic_read(&ref->count);
}
