
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;


 int M_BHND_NVRAM ;
 int free (struct bhnd_nvram_io*,int ) ;

__attribute__((used)) static void
bhnd_nvram_iores_free(struct bhnd_nvram_io *io)
{
 free(io, M_BHND_NVRAM);
}
