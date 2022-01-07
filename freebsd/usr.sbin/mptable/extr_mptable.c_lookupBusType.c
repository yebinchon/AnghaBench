
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int name; } ;


 int MAX_BUSTYPE ;
 int UNKNOWN_BUSTYPE ;
 TYPE_1__* busTypeTable ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
lookupBusType( char* name )
{
    int x;

    for ( x = 0; x < MAX_BUSTYPE; ++x )
 if ( strcmp( busTypeTable[ x ].name, name ) == 0 )
     return busTypeTable[ x ].type;

    return UNKNOWN_BUSTYPE;
}
