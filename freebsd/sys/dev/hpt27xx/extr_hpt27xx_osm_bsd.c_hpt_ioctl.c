
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int ioctl_args ;
typedef int caddr_t ;
struct TYPE_6__ {int nInBufferSize; int nOutBufferSize; int * lpOutBuffer; int * lpInBuffer; int result; int * lpBytesReturned; int dwIoControlCode; } ;
struct TYPE_5__ {int nInBufferSize; int nOutBufferSize; scalar_t__ lpBytesReturned; scalar_t__ lpOutBuffer; scalar_t__ lpInBuffer; int dwIoControlCode; int Magic; } ;
typedef TYPE_1__* PHPT_IOCTL_PARAM ;
typedef TYPE_2__ IOCTL_ARG ;
typedef int HPT_U32 ;


 int EFAULT ;
 int Giant ;

 int HPT_IOCTL_MAGIC ;
 int HPT_IOCTL_MAGIC32 ;
 int HPT_IOCTL_RESULT_OK ;

 int KdPrint (char*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int copyin (void*,int *,int) ;
 int copyout (int *,void*,int) ;
 int free (int *,int ) ;
 int hpt_do_ioctl (TYPE_2__*) ;
 int hpt_rescan_bus () ;
 void* malloc (int,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int hpt_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
 PHPT_IOCTL_PARAM piop=(PHPT_IOCTL_PARAM)data;
 IOCTL_ARG ioctl_args;
 HPT_U32 bytesReturned = 0;

 switch (cmd){
 case 129:
 {
  if (piop->Magic == HPT_IOCTL_MAGIC || piop->Magic == HPT_IOCTL_MAGIC32) {
   KdPrint(("<8>ioctl=%x in=%p len=%d out=%p len=%d\n",
    piop->dwIoControlCode,
    piop->lpInBuffer,
    piop->nInBufferSize,
    piop->lpOutBuffer,
    piop->nOutBufferSize));

  memset(&ioctl_args, 0, sizeof(ioctl_args));

  ioctl_args.dwIoControlCode = piop->dwIoControlCode;
  ioctl_args.nInBufferSize = piop->nInBufferSize;
  ioctl_args.nOutBufferSize = piop->nOutBufferSize;
  ioctl_args.lpBytesReturned = &bytesReturned;

  if (ioctl_args.nInBufferSize) {
   ioctl_args.lpInBuffer = malloc(ioctl_args.nInBufferSize, M_DEVBUF, M_WAITOK);
   if (!ioctl_args.lpInBuffer)
    goto invalid;
   if (copyin((void*)piop->lpInBuffer,
     ioctl_args.lpInBuffer, piop->nInBufferSize))
    goto invalid;
  }

  if (ioctl_args.nOutBufferSize) {
   ioctl_args.lpOutBuffer = malloc(ioctl_args.nOutBufferSize, M_DEVBUF, M_WAITOK | M_ZERO);
   if (!ioctl_args.lpOutBuffer)
    goto invalid;
  }


  mtx_lock(&Giant);


  hpt_do_ioctl(&ioctl_args);


  mtx_unlock(&Giant);


  if (ioctl_args.result==HPT_IOCTL_RESULT_OK) {
   if (piop->nOutBufferSize) {
    if (copyout(ioctl_args.lpOutBuffer,
     (void*)piop->lpOutBuffer, piop->nOutBufferSize))
     goto invalid;
   }
   if (piop->lpBytesReturned) {
    if (copyout(&bytesReturned,
     (void*)piop->lpBytesReturned, sizeof(HPT_U32)))
     goto invalid;
   }
   if (ioctl_args.lpInBuffer) free(ioctl_args.lpInBuffer, M_DEVBUF);
   if (ioctl_args.lpOutBuffer) free(ioctl_args.lpOutBuffer, M_DEVBUF);
   return 0;
  }
invalid:
  if (ioctl_args.lpInBuffer) free(ioctl_args.lpInBuffer, M_DEVBUF);
  if (ioctl_args.lpOutBuffer) free(ioctl_args.lpOutBuffer, M_DEVBUF);
  return EFAULT;
 }
 return EFAULT;
 }

 case 128:
 {
  return hpt_rescan_bus();
 }
 default:
  KdPrint(("invalid command!"));
  return EFAULT;
 }

}
