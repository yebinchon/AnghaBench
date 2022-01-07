
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ OFFSET ;
 int htonl (int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static uint32_t
machtime(void)
{


 return (htonl((uint32_t)(time(((void*)0)) + ((uint32_t)25567 * 24*60*60))));

}
