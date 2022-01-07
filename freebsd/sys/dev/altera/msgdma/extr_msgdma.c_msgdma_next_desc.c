
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msgdma_channel {int descs_num; } ;



__attribute__((used)) static inline uint32_t
msgdma_next_desc(struct msgdma_channel *chan, uint32_t curidx)
{

 return ((curidx + 1) % chan->descs_num);
}
