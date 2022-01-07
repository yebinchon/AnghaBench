
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bktr_ptr_t ;


 int TBL_BASE_FREQ ;
 int TBL_CHNL ;
 int TBL_OFFSET ;

__attribute__((used)) static int
frequency_lookup( bktr_ptr_t bktr, int channel )
{
 int x;


 x = 0;
 if ( channel > TBL_CHNL )
  return( -1 );


 for ( x = 3; TBL_CHNL; x += 3 ) {
  if ( channel >= TBL_CHNL ) {
   return( TBL_BASE_FREQ +
     ((channel - TBL_CHNL) * TBL_OFFSET) );
  }
 }


 return( -1 );
}
