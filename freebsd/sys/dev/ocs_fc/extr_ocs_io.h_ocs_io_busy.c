
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_free; } ;
typedef TYPE_1__ ocs_io_t ;
typedef int int32_t ;



__attribute__((used)) static inline int32_t
ocs_io_busy(ocs_io_t *io)
{
 return !(io->io_free);
}
