
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_tlv {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;


 int bhnd_nvram_tlv_free (struct bhnd_nvram_data*) ;
 int bhnd_nvram_tlv_init (struct bhnd_nvram_tlv*,struct bhnd_nvram_io*) ;

__attribute__((used)) static int
bhnd_nvram_tlv_new(struct bhnd_nvram_data *nv, struct bhnd_nvram_io *io)
{

 struct bhnd_nvram_tlv *tlv;
 int error;


 tlv = (struct bhnd_nvram_tlv *)nv;



 if ((error = bhnd_nvram_tlv_init(tlv, io))) {
  bhnd_nvram_tlv_free(nv);
  return (error);
 }

 return (0);
}
