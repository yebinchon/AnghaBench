
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ocs_softc {int dummy; } ;
typedef int ocs_io_t ;


 int * ocs_io_get_instance (struct ocs_softc*,int ) ;

__attribute__((used)) static inline ocs_io_t *ocs_scsi_find_io(struct ocs_softc *ocs, uint32_t tag)
{

 return ocs_io_get_instance(ocs, tag);
}
