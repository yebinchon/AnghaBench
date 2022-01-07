
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_bcmraw {int dummy; } ;


 int bhnd_nvram_bcmraw_free (struct bhnd_nvram_data*) ;
 int bhnd_nvram_bcmraw_init (struct bhnd_nvram_bcmraw*,struct bhnd_nvram_io*) ;

__attribute__((used)) static int
bhnd_nvram_bcmraw_new(struct bhnd_nvram_data *nv, struct bhnd_nvram_io *io)
{
 struct bhnd_nvram_bcmraw *bcm;
 int error;

 bcm = (struct bhnd_nvram_bcmraw *)nv;



 if ((error = bhnd_nvram_bcmraw_init(bcm, io))) {
  bhnd_nvram_bcmraw_free(nv);
  return (error);
 }

 return (0);
}
