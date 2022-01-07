
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_4__ {int adapterId; } ;
struct TYPE_5__ {int requestsArrayBaseDmaAddr; int requestsArrayBaseDmaAlignedAddr; int responsesArrayBaseDmaAddr; int responsesArrayBaseDmaAlignedAddr; int * responsesArrayBaseAddr; int * requestsArrayBaseAddr; TYPE_1__ mvSataAdapter; int * responsesArrayBaseAlignedAddr; int * requestsArrayBaseAlignedAddr; } ;
typedef int MV_U8 ;
typedef TYPE_2__ IAL_ADAPTER_T ;


 int MV_EDMA_REQUEST_QUEUE_SIZE ;
 int MV_EDMA_RESPONSE_QUEUE_SIZE ;
 int MV_ERROR (char*,int ) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 int REQUESTS_ARRAY_SIZE ;
 int RESPONSES_ARRAY_SIZE ;
 int contigfree (int *,int ,int ) ;
 scalar_t__ contigmalloc (int ,int ,int ,int ,int,int ,unsigned long) ;
 void* fOsPhysicalAddress (int *) ;

__attribute__((used)) static int
hptmv_allocate_edma_queues(IAL_ADAPTER_T *pAdapter)
{
 pAdapter->requestsArrayBaseAddr = (MV_U8 *)contigmalloc(REQUESTS_ARRAY_SIZE,
   M_DEVBUF, M_NOWAIT, 0, 0xffffffff, PAGE_SIZE, 0ul);
 if (pAdapter->requestsArrayBaseAddr == ((void*)0))
 {
  MV_ERROR("RR18xx[%d]: Failed to allocate memory for EDMA request"
     " queues\n", pAdapter->mvSataAdapter.adapterId);
  return -1;
 }
 pAdapter->requestsArrayBaseDmaAddr = fOsPhysicalAddress(pAdapter->requestsArrayBaseAddr);
 pAdapter->requestsArrayBaseAlignedAddr = pAdapter->requestsArrayBaseAddr;
 pAdapter->requestsArrayBaseAlignedAddr += MV_EDMA_REQUEST_QUEUE_SIZE;
 pAdapter->requestsArrayBaseAlignedAddr = (MV_U8 *)
  (((ULONG_PTR)pAdapter->requestsArrayBaseAlignedAddr) & ~(ULONG_PTR)(MV_EDMA_REQUEST_QUEUE_SIZE - 1));
 pAdapter->requestsArrayBaseDmaAlignedAddr = pAdapter->requestsArrayBaseDmaAddr;
 pAdapter->requestsArrayBaseDmaAlignedAddr += MV_EDMA_REQUEST_QUEUE_SIZE;
 pAdapter->requestsArrayBaseDmaAlignedAddr &= ~(ULONG_PTR)(MV_EDMA_REQUEST_QUEUE_SIZE - 1);

 if ((pAdapter->requestsArrayBaseDmaAlignedAddr - pAdapter->requestsArrayBaseDmaAddr) !=
  (pAdapter->requestsArrayBaseAlignedAddr - pAdapter->requestsArrayBaseAddr))
 {
  MV_ERROR("RR18xx[%d]: Error in Request Quueues Alignment\n",
     pAdapter->mvSataAdapter.adapterId);
  contigfree(pAdapter->requestsArrayBaseAddr, REQUESTS_ARRAY_SIZE, M_DEVBUF);
  return -1;
 }

 pAdapter->responsesArrayBaseAddr = (MV_U8 *)contigmalloc(RESPONSES_ARRAY_SIZE,
   M_DEVBUF, M_NOWAIT, 0, 0xffffffff, PAGE_SIZE, 0ul);
 if (pAdapter->responsesArrayBaseAddr == ((void*)0))
 {
  MV_ERROR("RR18xx[%d]: Failed to allocate memory for EDMA response"
     " queues\n", pAdapter->mvSataAdapter.adapterId);
  contigfree(pAdapter->requestsArrayBaseAddr, RESPONSES_ARRAY_SIZE, M_DEVBUF);
  return -1;
 }
 pAdapter->responsesArrayBaseDmaAddr = fOsPhysicalAddress(pAdapter->responsesArrayBaseAddr);
 pAdapter->responsesArrayBaseAlignedAddr = pAdapter->responsesArrayBaseAddr;
 pAdapter->responsesArrayBaseAlignedAddr += MV_EDMA_RESPONSE_QUEUE_SIZE;
 pAdapter->responsesArrayBaseAlignedAddr = (MV_U8 *)
  (((ULONG_PTR)pAdapter->responsesArrayBaseAlignedAddr) & ~(ULONG_PTR)(MV_EDMA_RESPONSE_QUEUE_SIZE - 1));
 pAdapter->responsesArrayBaseDmaAlignedAddr = pAdapter->responsesArrayBaseDmaAddr;
 pAdapter->responsesArrayBaseDmaAlignedAddr += MV_EDMA_RESPONSE_QUEUE_SIZE;
 pAdapter->responsesArrayBaseDmaAlignedAddr &= ~(ULONG_PTR)(MV_EDMA_RESPONSE_QUEUE_SIZE - 1);

 if ((pAdapter->responsesArrayBaseDmaAlignedAddr - pAdapter->responsesArrayBaseDmaAddr) !=
  (pAdapter->responsesArrayBaseAlignedAddr - pAdapter->responsesArrayBaseAddr))
 {
  MV_ERROR("RR18xx[%d]: Error in Response Queues Alignment\n",
     pAdapter->mvSataAdapter.adapterId);
  contigfree(pAdapter->requestsArrayBaseAddr, REQUESTS_ARRAY_SIZE, M_DEVBUF);
  contigfree(pAdapter->responsesArrayBaseAddr, RESPONSES_ARRAY_SIZE, M_DEVBUF);
  return -1;
 }
 return 0;
}
