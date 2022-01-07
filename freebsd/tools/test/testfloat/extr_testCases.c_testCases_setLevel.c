
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;


 int fail (char*,int) ;
 int level ;

void testCases_setLevel( int8 levelIn )
{

    if ( ( levelIn < 1 ) || ( 2 < levelIn ) ) {
        fail( "Invalid testing level: %d", levelIn );
    }
    level = levelIn;

}
