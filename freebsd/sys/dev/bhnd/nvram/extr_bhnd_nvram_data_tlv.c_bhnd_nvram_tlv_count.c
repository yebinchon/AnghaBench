
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_tlv {size_t count; } ;
struct bhnd_nvram_data {int dummy; } ;



size_t
bhnd_nvram_tlv_count(struct bhnd_nvram_data *nv)
{
 struct bhnd_nvram_tlv *tlv = (struct bhnd_nvram_tlv *)nv;
 return (tlv->count);
}
