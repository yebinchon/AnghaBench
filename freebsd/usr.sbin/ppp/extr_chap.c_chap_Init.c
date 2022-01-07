
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct physical {int dummy; } ;
struct TYPE_6__ {char* local; char* peer; } ;
struct TYPE_5__ {int fd; scalar_t__ pid; } ;
struct TYPE_4__ {int Write; int Read; int IsSet; int UpdateSet; int type; } ;
struct chap {scalar_t__ peertries; scalar_t__ NTRespSent; TYPE_3__ challenge; int auth; TYPE_2__ child; TYPE_1__ desc; } ;


 int CHAP_DESCRIPTOR ;
 int auth_Init (int *,struct physical*,int ,int ,int ) ;
 int chap_Challenge ;
 int chap_Failure ;
 int chap_IsSet ;
 int chap_Read ;
 int chap_Success ;
 int chap_UpdateSet ;
 int chap_Write ;

void
chap_Init(struct chap *chap, struct physical *p)
{
  chap->desc.type = CHAP_DESCRIPTOR;
  chap->desc.UpdateSet = chap_UpdateSet;
  chap->desc.IsSet = chap_IsSet;
  chap->desc.Read = chap_Read;
  chap->desc.Write = chap_Write;
  chap->child.pid = 0;
  chap->child.fd = -1;
  auth_Init(&chap->auth, p, chap_Challenge, chap_Success, chap_Failure);
  *chap->challenge.local = *chap->challenge.peer = '\0';

  chap->NTRespSent = 0;
  chap->peertries = 0;

}
