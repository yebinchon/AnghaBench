
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XENSTORE_RING_IDX ;


 scalar_t__ XENSTORE_RING_SIZE ;

__attribute__((used)) static int
xs_check_indexes(XENSTORE_RING_IDX cons, XENSTORE_RING_IDX prod)
{

 return ((prod - cons) <= XENSTORE_RING_SIZE);
}
