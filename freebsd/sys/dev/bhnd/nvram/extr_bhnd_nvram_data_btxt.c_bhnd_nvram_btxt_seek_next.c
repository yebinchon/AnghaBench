
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct bhnd_nvram_io {int dummy; } ;


 scalar_t__ bhnd_nv_isspace (char) ;
 int bhnd_nvram_btxt_seek_eol (struct bhnd_nvram_io*,size_t*) ;
 int bhnd_nvram_io_read_ptr (struct bhnd_nvram_io*,size_t,void const**,int ,size_t*) ;

__attribute__((used)) static int
bhnd_nvram_btxt_seek_next(struct bhnd_nvram_io *io, size_t *offset)
{
 const uint8_t *baseptr, *p;
 const void *rbuf;
 size_t nbytes;
 int error;


 if ((error = bhnd_nvram_io_read_ptr(io, *offset, &rbuf, 0, &nbytes)))
  return (error);


 baseptr = rbuf;
 p = rbuf;
 while ((size_t)(p - baseptr) < nbytes) {
  char c = *p;


  if (bhnd_nv_isspace(c)) {
   p++;
   continue;
  }


  if (c == '#') {
   size_t line_off = *offset + (p - baseptr);

   if ((error = bhnd_nvram_btxt_seek_eol(io, &line_off)))
    return (error);

   p = baseptr + (line_off - *offset);
   continue;
  }


  break;
 }

 *offset += (p - baseptr);
 return (0);
}
