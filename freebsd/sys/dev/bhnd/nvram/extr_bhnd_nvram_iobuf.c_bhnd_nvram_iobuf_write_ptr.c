
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_iobuf {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;


 int bhnd_nvram_iobuf_ptr (struct bhnd_nvram_iobuf*,size_t,void**,size_t,size_t*) ;

__attribute__((used)) static int
bhnd_nvram_iobuf_write_ptr(struct bhnd_nvram_io *io, size_t offset,
    void **ptr, size_t nbytes, size_t *navail)
{
 struct bhnd_nvram_iobuf *iobuf;

 iobuf = (struct bhnd_nvram_iobuf *) io;


 return (bhnd_nvram_iobuf_ptr(iobuf, offset, ptr, nbytes, navail));
}
