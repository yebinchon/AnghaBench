
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aldap_message {scalar_t__ msg; } ;


 int ber_free_elements (scalar_t__) ;
 int free (struct aldap_message*) ;

void
aldap_freemsg(struct aldap_message *msg)
{
 if (msg->msg)
  ber_free_elements(msg->msg);
 free(msg);
}
