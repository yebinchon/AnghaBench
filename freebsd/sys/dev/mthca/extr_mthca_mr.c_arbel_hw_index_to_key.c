
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 arbel_hw_index_to_key(u32 ind)
{
 return (ind >> 24) | (ind << 8);
}
