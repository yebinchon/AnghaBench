
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
lio_droq_get_bufcount(uint32_t buf_size, uint32_t total_len)
{

 return ((total_len + buf_size - 1) / buf_size);
}
