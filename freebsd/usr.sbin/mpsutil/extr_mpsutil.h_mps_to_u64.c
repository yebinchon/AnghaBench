
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int Low; scalar_t__ High; } ;
typedef TYPE_1__ U64 ;



__attribute__((used)) static __inline uint64_t
mps_to_u64(U64 *data)
{

 return (((uint64_t)(data->High) << 32 ) | data->Low);
}
