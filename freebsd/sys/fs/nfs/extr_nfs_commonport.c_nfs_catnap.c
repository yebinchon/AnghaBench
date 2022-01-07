
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int NFSERR_GRACE ;
 int hz ;
 int tsleep (int*,int,char const*,int) ;

int
nfs_catnap(int prio, int errval, const char *wmesg)
{
 static int non_event;
 int ret;

 if (errval == NFSERR_GRACE)
  ret = tsleep(&non_event, prio, wmesg, 5 * hz);
 else
  ret = tsleep(&non_event, prio, wmesg, 1);
 if (ret != EINTR)
  ret = 0;
 return (ret);
}
