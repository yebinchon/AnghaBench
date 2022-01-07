
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tid ;


 int FNV1_32_INIT ;
 int fnv_32_buf (int*,int,int ) ;

__attribute__((used)) static inline uint32_t
hf_hashfn_tid(int tid)
{

 return (fnv_32_buf(&tid, sizeof(tid), FNV1_32_INIT));
}
