
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
typedef int bhnd_sprom_layout ;


 int BHND_NVRAM_DATA_PROBE_DEFAULT ;
 int bhnd_nvram_sprom_ident (struct bhnd_nvram_io*,int const**) ;

__attribute__((used)) static int
bhnd_nvram_sprom_probe(struct bhnd_nvram_io *io)
{
 const bhnd_sprom_layout *layout;
 int error;


 if ((error = bhnd_nvram_sprom_ident(io, &layout)))
  return (error);

 return (BHND_NVRAM_DATA_PROBE_DEFAULT);
}
