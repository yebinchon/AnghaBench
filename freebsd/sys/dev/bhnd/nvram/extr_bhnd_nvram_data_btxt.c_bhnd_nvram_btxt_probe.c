
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bhnd_nvram_btxt_ident {char* btxt; int bcm_magic; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef int ident ;


 scalar_t__ BCM_NVRAM_MAGIC ;
 int BHND_NVRAM_DATA_PROBE_MAYBE ;
 int ENXIO ;
 int bhnd_nv_isalpha (char) ;
 int bhnd_nv_isprint (char) ;
 int bhnd_nv_isspace (char) ;
 int bhnd_nvram_io_read (struct bhnd_nvram_io*,int,union bhnd_nvram_btxt_ident*,int) ;
 scalar_t__ le32toh (int ) ;
 size_t nitems (char*) ;

__attribute__((used)) static int
bhnd_nvram_btxt_probe(struct bhnd_nvram_io *io)
{
 union bhnd_nvram_btxt_ident ident;
 char c;
 int error;



 if ((error = bhnd_nvram_io_read(io, 0x0, &ident, sizeof(ident))))
  return (error);



 if (le32toh(ident.bcm_magic) == BCM_NVRAM_MAGIC)
  return (ENXIO);


 for (size_t i = 0; i < nitems(ident.btxt); i++) {
  c = ident.btxt[i];
  if (!bhnd_nv_isprint(c))
   return (ENXIO);
 }



 c = ident.btxt[0];
 if (!bhnd_nv_isspace(c) && !bhnd_nv_isalpha(c) && c != '#')
  return (ENXIO);



 return (BHND_NVRAM_DATA_PROBE_MAYBE);
}
