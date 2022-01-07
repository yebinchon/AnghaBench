
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_NOACK ;
 int AR_NOACK_2BIT_VALUE ;
 int AR_NOACK_BIT_OFFSET ;
 int AR_NOACK_BYTE_OFFSET ;
 int AR_QOS_CONTROL ;
 int AR_QOS_SELECT ;
 int AR_TXOP_0_3 ;
 int AR_TXOP_12_15 ;
 int AR_TXOP_4_7 ;
 int AR_TXOP_8_11 ;
 int AR_TXOP_X ;
 int AR_TXOP_X_VAL ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int,int ) ;

__attribute__((used)) static void
ar5416InitQoS(struct ath_hal *ah)
{

 OS_REG_WRITE(ah, AR_QOS_CONTROL, 0x100aa);
 OS_REG_WRITE(ah, AR_QOS_SELECT, 0x3210);


 OS_REG_WRITE(ah, AR_NOACK,
  SM(2, AR_NOACK_2BIT_VALUE) |
  SM(5, AR_NOACK_BIT_OFFSET) |
  SM(0, AR_NOACK_BYTE_OFFSET));




 OS_REG_WRITE(ah, AR_TXOP_X, AR_TXOP_X_VAL);
 OS_REG_WRITE(ah, AR_TXOP_0_3, 0xFFFFFFFF);
 OS_REG_WRITE(ah, AR_TXOP_4_7, 0xFFFFFFFF);
 OS_REG_WRITE(ah, AR_TXOP_8_11, 0xFFFFFFFF);
 OS_REG_WRITE(ah, AR_TXOP_12_15, 0xFFFFFFFF);
}
