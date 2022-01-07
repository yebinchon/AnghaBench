
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long value; char* name; } ;
typedef TYPE_1__ nltype ;


 int LOOKUPDEBUG ;
 int debug ;
 int fprintf (int ,char*,int) ;
 TYPE_1__* nl ;
 int nname ;
 int printf (char*,int,int) ;
 int stderr ;

nltype *
nllookup(unsigned long address)
{
    register long low;
    register long middle;
    register long high;





    for ( low = 0 , high = nname - 1 ; low != high ; ) {



 middle = ( high + low ) >> 1;
 if ( nl[ middle ].value <= address && nl[ middle+1 ].value > address ) {
     return &nl[ middle ];
 }
 if ( nl[ middle ].value > address ) {
     high = middle;
 } else {
     low = middle + 1;
 }
    }






    return 0;
}
