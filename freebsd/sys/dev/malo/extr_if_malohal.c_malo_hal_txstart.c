
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_hal {int mh_ioh; int mh_iot; } ;


 int MALO_H2ARIC_BIT_PPA_READY ;
 int MALO_REG_H2A_INTERRUPT_EVENTS ;
 int MALO_REG_INT_CODE ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;

void
malo_hal_txstart(struct malo_hal *mh, int qnum)
{
 bus_space_write_4(mh->mh_iot, mh->mh_ioh,
     MALO_REG_H2A_INTERRUPT_EVENTS, MALO_H2ARIC_BIT_PPA_READY);
 (void) bus_space_read_4(mh->mh_iot, mh->mh_ioh, MALO_REG_INT_CODE);
}
