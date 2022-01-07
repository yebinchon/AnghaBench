
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 scalar_t__ random () ;

uint32 randomUint32( void )
{

    return ( ( (uint32) random()<<16) | ( (uint32) random() & 0x0000ffff) );
}
