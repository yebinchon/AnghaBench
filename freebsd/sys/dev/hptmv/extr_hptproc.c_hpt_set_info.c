
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_6__ {int adapterId; } ;
struct TYPE_8__ {int VBus; TYPE_1__ mvSataAdapter; struct TYPE_8__* next; } ;
struct TYPE_7__ {scalar_t__ Magic; scalar_t__ nInBufferSize; scalar_t__ nOutBufferSize; scalar_t__ lpBytesReturned; scalar_t__ lpOutBuffer; int dwIoControlCode; scalar_t__ lpInBuffer; } ;
typedef int * PUCHAR ;
typedef TYPE_2__* PHPT_IOCTL_PARAM ;
typedef TYPE_3__ IAL_ADAPTER_T ;
typedef int DWORD ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ HPT_IOCTL_MAGIC ;
 scalar_t__ HPT_IOCTL_MAGIC32 ;
 int KdPrintE (char*) ;
 int KdPrintW (char*) ;
 int Kernel_DeviceIoControl (int *,int ,int *,scalar_t__,int *,scalar_t__,int *) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ copyin (void*,int *,scalar_t__) ;
 int copyout (int *,void*,int) ;
 int free (int *,int ) ;
 TYPE_3__* gIal_Adapter ;
 int hpt_set_asc_info (TYPE_3__*,char*,int) ;
 char* hptproc_buffer ;
 int * malloc (scalar_t__,int ,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
hpt_set_info(int length)
{
 int retval;







 char *buffer = hptproc_buffer;
 if (length >= 6) {
  if (strncmp(buffer,"hpt ",4) == 0) {
   IAL_ADAPTER_T *pAdapter;
   retval = buffer[4]-'0';
   for (pAdapter=gIal_Adapter; pAdapter; pAdapter=pAdapter->next) {
    if (pAdapter->mvSataAdapter.adapterId==retval)
     return (retval = hpt_set_asc_info(pAdapter, buffer+6, length-6)) >= 0? retval : -EINVAL;
   }
   return -EINVAL;
  }
 }

 return -EINVAL;
}
