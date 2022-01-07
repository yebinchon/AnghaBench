
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;


 int MPT_INTR_DB_MASK ;
 int MPT_INTR_REPLY_MASK ;
 int MPT_OFFSET_INTR_MASK ;
 int mpt_write (struct mpt_softc*,int ,int) ;

void
mpt_disable_ints(struct mpt_softc *mpt)
{


 mpt_write(mpt, MPT_OFFSET_INTR_MASK,
     MPT_INTR_REPLY_MASK | MPT_INTR_DB_MASK);
}
