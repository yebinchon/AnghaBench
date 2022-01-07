
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
typedef int envp ;


 int BHND_NVRAM_DATA_PROBE_MAYBE ;
 int ENXIO ;
 int bhnd_nv_isprint (char) ;
 size_t bhnd_nv_ummin (int,size_t) ;
 size_t bhnd_nvram_io_getsize (struct bhnd_nvram_io*) ;
 int bhnd_nvram_io_read (struct bhnd_nvram_io*,size_t,char*,size_t) ;

__attribute__((used)) static int
bhnd_nvram_bcmraw_probe(struct bhnd_nvram_io *io)
{
 char envp[16];
 size_t envp_len;
 size_t io_size;
 int error;

 io_size = bhnd_nvram_io_getsize(io);




 envp_len = bhnd_nv_ummin(sizeof(envp), io_size);
 if ((error = bhnd_nvram_io_read(io, 0x0, envp, envp_len)))
  return (error);



 if (envp_len == 0)
  return (ENXIO);

 if (envp_len == 1) {
  if (envp[0] != '\0')
   return (ENXIO);

  return (BHND_NVRAM_DATA_PROBE_MAYBE);
 }



 for (size_t i = 0; i < envp_len; i++) {
  char c = envp[i];


  if (c == '\n')
   return (ENXIO);

  if (c == '\0' && !bhnd_nv_isprint(c))
   continue;
 }




 envp_len = 2;
 if (io_size < envp_len)
  return (ENXIO);

 if ((error = bhnd_nvram_io_read(io, io_size-envp_len, envp, envp_len)))
  return (error);

 if (envp[0] != '\0' || envp[1] != '\0')
  return (ENXIO);

 return (BHND_NVRAM_DATA_PROBE_MAYBE + 1);
}
