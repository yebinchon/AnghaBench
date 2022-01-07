
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpt_softc {int dummy; } ;


 int MPT_OFFSET_DOORBELL ;
 int mpt_read (struct mpt_softc*,int ) ;

__attribute__((used)) static __inline uint32_t
mpt_rd_db(struct mpt_softc *mpt)
{

 return mpt_read(mpt, MPT_OFFSET_DOORBELL);
}
