
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int link; } ;
typedef TYPE_1__ ocs_hw_sequence_t ;


 int ocs_memset (int *,int ,int) ;

__attribute__((used)) static inline void
ocs_hw_sequence_copy(ocs_hw_sequence_t *dst, ocs_hw_sequence_t *src)
{

 *dst = *src;
 ocs_memset(&dst->link, 0, sizeof(dst->link));
}
