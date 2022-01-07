
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_softc {int db_vec_shift; } ;


 scalar_t__ HAS_FEATURE (struct ntb_softc*,int ) ;
 int NTB_SB01BASE_LOCKUP ;
 int XEON_NONLINK_DB_MSIX_BITS ;

__attribute__((used)) static inline uint64_t
intel_ntb_vec_mask(struct ntb_softc *ntb, uint64_t db_vector)
{
 uint64_t shift, mask;

 if (HAS_FEATURE(ntb, NTB_SB01BASE_LOCKUP)) {






  if (db_vector < XEON_NONLINK_DB_MSIX_BITS - 1)
   return (1 << db_vector);
  if (db_vector == XEON_NONLINK_DB_MSIX_BITS - 1)
   return (0x7ffc);
 }

 shift = ntb->db_vec_shift;
 mask = (1ull << shift) - 1;
 return (mask << (shift * db_vector));
}
