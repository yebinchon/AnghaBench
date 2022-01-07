
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_nvram_io {TYPE_1__* iops; } ;
struct TYPE_2__ {void (* free ) (struct bhnd_nvram_io*) ;} ;


 void stub1 (struct bhnd_nvram_io*) ;

void
bhnd_nvram_io_free(struct bhnd_nvram_io *io)
{
 return (io->iops->free(io));
}
