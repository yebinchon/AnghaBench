
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dl; } ;
struct TYPE_4__ {int Write; int Read; int IsSet; int UpdateSet; int type; } ;
struct mpserver {int fd; int socket; TYPE_1__ send; TYPE_2__ desc; } ;


 int MPSERVER_DESCRIPTOR ;
 int memset (int *,char,int) ;
 int mpserver_IsSet ;
 int mpserver_Read ;
 int mpserver_UpdateSet ;
 int mpserver_Write ;

void
mpserver_Init(struct mpserver *s)
{
  s->desc.type = MPSERVER_DESCRIPTOR;
  s->desc.UpdateSet = mpserver_UpdateSet;
  s->desc.IsSet = mpserver_IsSet;
  s->desc.Read = mpserver_Read;
  s->desc.Write = mpserver_Write;
  s->send.dl = ((void*)0);
  s->fd = -1;
  memset(&s->socket, '\0', sizeof s->socket);
}
