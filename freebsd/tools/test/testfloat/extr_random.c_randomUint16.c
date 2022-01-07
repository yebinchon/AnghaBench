
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;


 int random () ;

uint16 randomUint16( void )
{

    return ( random() & 0x0000ffff );

}
