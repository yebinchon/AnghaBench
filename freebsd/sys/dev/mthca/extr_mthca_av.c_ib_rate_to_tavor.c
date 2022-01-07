
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;





 int MTHCA_RATE_TAVOR_1X ;
 int MTHCA_RATE_TAVOR_1X_DDR ;
 int MTHCA_RATE_TAVOR_4X ;
 int MTHCA_RATE_TAVOR_FULL ;

__attribute__((used)) static u8 ib_rate_to_tavor(u8 static_rate)
{
 switch (static_rate) {
 case 129: return MTHCA_RATE_TAVOR_1X;
 case 128: return MTHCA_RATE_TAVOR_1X_DDR;
 case 130: return MTHCA_RATE_TAVOR_4X;
 default: return MTHCA_RATE_TAVOR_FULL;
 }
}
