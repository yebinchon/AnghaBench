
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__* partitions; } ;
typedef TYPE_1__ pattern_t ;


 scalar_t__ FSIZE ;

void get_chunk_range(const pattern_t* pat, int chunk, uint32_t* begin, uint32_t* end){
  if (chunk == 0){
    *begin = 0;
  }
  else{
    *begin = (uint32_t)((uint64_t)FSIZE * (uint64_t)pat->partitions[chunk - 1] >> 31);
  }
  *end = (uint32_t)((uint64_t)FSIZE * (uint64_t)pat->partitions[chunk] >> 31);
}
