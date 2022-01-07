
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_2__* bktr_ptr_t ;
struct TYPE_6__ {int eepromAddr; int eepromSize; } ;
struct TYPE_7__ {TYPE_1__ card; } ;


 int EEPROMBLOCKSIZE ;
 int i2cRead (TYPE_2__*,int) ;
 int i2cWrite (TYPE_2__*,int,int,int) ;

int
readEEProm( bktr_ptr_t bktr, int offset, int count, u_char *data )
{
 int x;
 int addr;
 int max;
 int byte;


 addr = (int)(bktr->card.eepromAddr & 0xff);
 if ( addr == 0 )
  return( -1 );

 max = (int)(bktr->card.eepromSize * EEPROMBLOCKSIZE);
 if ( (offset + count) > max )
  return( -1 );


 if ( i2cWrite( bktr, addr, offset, -1 ) == -1 )
  return( -1 );


 for ( x = 0; x < count; ++x ) {
  if ( (byte = i2cRead( bktr, (addr | 1) )) == -1 )
   return( -1 );
  data[ x ] = byte;
 }

 return( 0 );
}
