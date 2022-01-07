
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_tlv {int * data; } ;
struct bhnd_nvram_data {int dummy; } ;


 int bhnd_nvram_io_free (int *) ;

__attribute__((used)) static void
bhnd_nvram_tlv_free(struct bhnd_nvram_data *nv)
{
 struct bhnd_nvram_tlv *tlv = (struct bhnd_nvram_tlv *)nv;
 if (tlv->data != ((void*)0))
  bhnd_nvram_io_free(tlv->data);
}
