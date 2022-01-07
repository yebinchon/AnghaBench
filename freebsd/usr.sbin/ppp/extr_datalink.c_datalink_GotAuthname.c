
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* authname; } ;
struct datalink {TYPE_1__ peer; } ;


 int strncpy (char*,char const*,int) ;

void
datalink_GotAuthname(struct datalink *dl, const char *name)
{
  strncpy(dl->peer.authname, name, sizeof dl->peer.authname - 1);
  dl->peer.authname[sizeof dl->peer.authname - 1] = '\0';
}
