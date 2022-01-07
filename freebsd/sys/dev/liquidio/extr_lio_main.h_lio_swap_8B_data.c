
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int htobe64 (int ) ;

__attribute__((used)) static inline void
lio_swap_8B_data(uint64_t *data, uint32_t blocks)
{

 while (blocks) {
  *data = htobe64(*data);
  blocks--;
  data++;
 }
}
