
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_softc {int db_valid_mask; } ;
typedef int device_t ;


 struct ntb_softc* device_get_softc (int ) ;

__attribute__((used)) static uint64_t
intel_ntb_db_valid_mask(device_t dev)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 return (ntb->db_valid_mask);
}
