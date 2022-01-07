
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct bhnd_nvram_io {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ magic_value; int magic_offset; } ;
typedef TYPE_1__ bhnd_sprom_layout ;


 int ENXIO ;
 int SPROM_LAYOUT_MAGIC_NONE ;
 int bhnd_nvram_io_read (struct bhnd_nvram_io*,int ,scalar_t__*,int) ;
 scalar_t__ le16toh (scalar_t__) ;

__attribute__((used)) static int
bhnd_nvram_sprom_check_magic(struct bhnd_nvram_io *io,
    const bhnd_sprom_layout *layout, uint16_t *magic)
{
 int error;


 if (layout->flags & SPROM_LAYOUT_MAGIC_NONE)
  return (0);


 error = bhnd_nvram_io_read(io, layout->magic_offset, magic,
     sizeof(*magic));
 if (error)
  return (error);

 *magic = le16toh(*magic);


 if (*magic != layout->magic_value)
  return (ENXIO);

 return (0);
}
