
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct authnone_private {int no_client; } ;
typedef int AUTH ;


 struct authnone_private authnone_private ;

AUTH *
authnone_create()
{
 struct authnone_private *ap = &authnone_private;

 return (&ap->no_client);
}
