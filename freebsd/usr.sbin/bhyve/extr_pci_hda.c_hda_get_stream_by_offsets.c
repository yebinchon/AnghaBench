
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int HDA_IOSS_NO ;
 int assert (int) ;

__attribute__((used)) static inline uint8_t
hda_get_stream_by_offsets(uint32_t offset, uint8_t reg_offset)
{
 uint8_t stream_ind = (offset - reg_offset) >> 5;

 assert(stream_ind < HDA_IOSS_NO);

 return (stream_ind);
}
