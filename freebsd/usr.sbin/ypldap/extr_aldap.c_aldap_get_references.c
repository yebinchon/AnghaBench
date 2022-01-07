
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aldap_message {int * references; } ;


 char** aldap_get_stringset (int *) ;

char **
aldap_get_references(struct aldap_message *msg)
{
 if (msg->references == ((void*)0))
  return ((void*)0);
 return aldap_get_stringset(msg->references);
}
