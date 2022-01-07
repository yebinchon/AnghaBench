
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {int cbcp; } ;


 int cbcp_Down (int *) ;
 int datalink_CBCPComplete (struct datalink*) ;

void
datalink_CBCPFailed(struct datalink *dl)
{
  cbcp_Down(&dl->cbcp);
  datalink_CBCPComplete(dl);
}
