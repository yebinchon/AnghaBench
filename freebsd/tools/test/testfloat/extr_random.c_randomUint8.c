
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int bits8 ;


 int random () ;

uint8 randomUint8( void )
{

    return (bits8) ( random()>>4 );

}
