
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct ntb_softc {scalar_t__ db_vec_count; int db_valid_mask; } ;
typedef int device_t ;


 struct ntb_softc* device_get_softc (int ) ;
 int intel_ntb_vec_mask (struct ntb_softc*,scalar_t__) ;

__attribute__((used)) static uint64_t
intel_ntb_db_vector_mask(device_t dev, uint32_t vector)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 if (vector > ntb->db_vec_count)
  return (0);
 return (ntb->db_valid_mask & intel_ntb_vec_mask(ntb, vector));
}
