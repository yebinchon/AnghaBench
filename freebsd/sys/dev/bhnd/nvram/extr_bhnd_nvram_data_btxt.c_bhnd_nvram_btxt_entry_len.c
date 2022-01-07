
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct bhnd_nvram_io {int dummy; } ;


 int bhnd_nv_isspace (char) ;
 int bhnd_nvram_io_read_ptr (struct bhnd_nvram_io*,size_t,void const**,int ,size_t*) ;

__attribute__((used)) static int
bhnd_nvram_btxt_entry_len(struct bhnd_nvram_io *io, size_t offset,
    size_t *line_len, size_t *env_len)
{
 const uint8_t *baseptr, *p;
 const void *rbuf;
 size_t nbytes;
 int error;


 if ((error = bhnd_nvram_io_read_ptr(io, offset, &rbuf, 0, &nbytes)))
  return (error);


 p = rbuf;
 baseptr = rbuf;
 while ((size_t)(p - baseptr) < nbytes) {
  if (*p == '#' || *p == '\n' || *p == '\r')
   break;

  p++;
 }



 *line_len = p - baseptr;
 *env_len = *line_len;

 for (size_t i = 0; i < *line_len; i++) {
  char c = baseptr[*line_len - i - 1];
  if (!bhnd_nv_isspace(c))
   break;

  *env_len -= 1;
 }

 return (0);
}
