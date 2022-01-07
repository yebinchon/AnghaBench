
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;


 int bhnd_nvram_io_getsize (struct bhnd_nvram_io*) ;
 struct bhnd_nvram_io* bhnd_nvram_iobuf_copy_range (struct bhnd_nvram_io*,int,int ) ;

struct bhnd_nvram_io *
bhnd_nvram_iobuf_copy(struct bhnd_nvram_io *src)
{
 return (bhnd_nvram_iobuf_copy_range(src, 0x0,
     bhnd_nvram_io_getsize(src)));
}
