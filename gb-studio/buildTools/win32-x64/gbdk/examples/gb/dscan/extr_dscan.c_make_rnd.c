
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int arand () ;

UBYTE make_rnd( UBYTE i )
{
  return( arand()%(i+1) );
}
