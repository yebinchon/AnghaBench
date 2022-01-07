
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct finfo {int flag; scalar_t__ forward_fd; int uaddr; int caller_addr; } ;


 struct finfo* FINFO ;
 int FINFO_ACTIVE ;
 int free (int ) ;
 int netbuffree (int ) ;
 int rpcb_rmtcalls ;
 scalar_t__ svc_maxfd ;

__attribute__((used)) static int
free_slot_by_index(int index)
{
 struct finfo *fi;

 fi = &FINFO[index];
 if (fi->flag & FINFO_ACTIVE) {
  netbuffree(fi->caller_addr);

  if (fi->forward_fd >= svc_maxfd)
   svc_maxfd--;
  free(fi->uaddr);
  fi->flag &= ~FINFO_ACTIVE;
  rpcb_rmtcalls--;
  return (1);
 }
 return (0);
}
