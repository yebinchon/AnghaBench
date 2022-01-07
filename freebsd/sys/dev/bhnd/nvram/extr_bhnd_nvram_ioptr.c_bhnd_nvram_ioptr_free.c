
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;


 int bhnd_nv_free (struct bhnd_nvram_io*) ;

__attribute__((used)) static void
bhnd_nvram_ioptr_free(struct bhnd_nvram_io *io)
{
 bhnd_nv_free(io);
}
