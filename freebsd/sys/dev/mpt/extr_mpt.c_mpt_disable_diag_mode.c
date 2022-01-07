
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;


 int MPT_OFFSET_SEQUENCE ;
 int mpt_write (struct mpt_softc*,int ,int) ;

__attribute__((used)) static void
mpt_disable_diag_mode(struct mpt_softc *mpt)
{

 mpt_write(mpt, MPT_OFFSET_SEQUENCE, 0xFFFFFFFF);
}
