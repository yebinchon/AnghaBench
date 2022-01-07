
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_bcmhdr {int size; int magic; } ;
typedef int hdr ;


 scalar_t__ BCM_NVRAM_MAGIC ;
 int BHND_NVRAM_DATA_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ bhnd_nvram_io_getsize (struct bhnd_nvram_io*) ;
 int bhnd_nvram_io_read (struct bhnd_nvram_io*,int,struct bhnd_nvram_bcmhdr*,int) ;
 scalar_t__ le32toh (int ) ;

__attribute__((used)) static int
bhnd_nvram_bcm_probe(struct bhnd_nvram_io *io)
{
 struct bhnd_nvram_bcmhdr hdr;
 int error;

 if ((error = bhnd_nvram_io_read(io, 0x0, &hdr, sizeof(hdr))))
  return (error);

 if (le32toh(hdr.magic) != BCM_NVRAM_MAGIC)
  return (ENXIO);

 if (le32toh(hdr.size) > bhnd_nvram_io_getsize(io))
  return (ENXIO);

 return (BHND_NVRAM_DATA_PROBE_DEFAULT);
}
