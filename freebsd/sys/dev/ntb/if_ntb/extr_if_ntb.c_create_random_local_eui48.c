
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ u_char ;


 scalar_t__ EUI48_LOCALLY_ADMINISTERED ;
 int arc4rand (scalar_t__*,int,int ) ;

__attribute__((used)) static void
create_random_local_eui48(u_char *eaddr)
{
 static uint8_t counter = 0;

 eaddr[0] = EUI48_LOCALLY_ADMINISTERED;
 arc4rand(&eaddr[1], 4, 0);
 eaddr[5] = counter++;
}
