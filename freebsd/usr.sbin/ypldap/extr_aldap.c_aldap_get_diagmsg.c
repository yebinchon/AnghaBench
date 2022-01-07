
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * diagmsg; } ;
struct TYPE_4__ {TYPE_1__ res; } ;
struct aldap_message {TYPE_2__ body; } ;


 int ber_get_string (int *,char**) ;
 char* utoa (char*) ;

char *
aldap_get_diagmsg(struct aldap_message *msg)
{
 char *s;

 if (msg->body.res.diagmsg == ((void*)0))
  return ((void*)0);

 if (ber_get_string(msg->body.res.diagmsg, &s) == -1)
  return ((void*)0);

 return utoa(s);
}
