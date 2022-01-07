
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct desc_tag {int cksum; int id; } ;


 int EINVAL ;
 scalar_t__ le16toh (int ) ;

int
udf_checktag(struct desc_tag *tag, uint16_t id)
{
 uint8_t *itag;
 uint8_t i, cksum = 0;

 itag = (uint8_t *)tag;

 if (le16toh(tag->id) != id)
  return (EINVAL);

 for (i = 0; i < 16; i++)
  cksum = cksum + itag[i];
 cksum = cksum - itag[4];

 if (cksum == tag->cksum)
  return (0);

 return (EINVAL);
}
