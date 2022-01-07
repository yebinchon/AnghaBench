
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; } ;
typedef TYPE_1__ ocs_list_t ;


 scalar_t__ OCS_LIST_LIST_MAGIC ;

__attribute__((used)) static inline int
ocs_list_valid(ocs_list_t *list)
{
 return (list->magic == OCS_LIST_LIST_MAGIC);
}
