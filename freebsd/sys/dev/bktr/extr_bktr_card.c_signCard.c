
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int bktr_ptr_t ;


 scalar_t__ ABSENT ;
 scalar_t__ i2cRead (int ,int) ;

int
signCard( bktr_ptr_t bktr, int offset, int count, u_char* sig )
{
 int x;

 for ( x = 0; x < 16; ++x )
  sig[ x ] = 0;

 for ( x = 0; x < count; ++x ) {
  if ( i2cRead( bktr, (2 * x) + 1 ) != ABSENT ) {
   sig[ x / 8 ] |= (1 << (x % 8) );
  }
 }

 return( 0 );
}
