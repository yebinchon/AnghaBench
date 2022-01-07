
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double time; long ncall; int name; } ;
typedef TYPE_1__ nltype ;


 int strcmp (int ,int ) ;

int
timecmp(const void *v1, const void *v2)
{
    const nltype **npp1 = (const nltype **)v1;
    const nltype **npp2 = (const nltype **)v2;
    double timediff;
    long calldiff;

    timediff = (*npp2) -> time - (*npp1) -> time;
    if ( timediff > 0.0 )
 return 1 ;
    if ( timediff < 0.0 )
 return -1;
    calldiff = (*npp2) -> ncall - (*npp1) -> ncall;
    if ( calldiff > 0 )
 return 1;
    if ( calldiff < 0 )
 return -1;
    return( strcmp( (*npp1) -> name , (*npp2) -> name ) );
}
