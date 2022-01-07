
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aldap_message {int * dn; } ;


 int ber_get_string (int *,char**) ;
 char* utoa (char*) ;

char *
aldap_get_dn(struct aldap_message *msg)
{
 char *dn;

 if (msg->dn == ((void*)0))
  return ((void*)0);

 if (ber_get_string(msg->dn, &dn) == -1)
  return ((void*)0);

 return utoa(dn);
}
