
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offload; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;



__attribute__((used)) static inline int is_offload(const adapter_t *adap)
{
 return adap->params.offload;
}
