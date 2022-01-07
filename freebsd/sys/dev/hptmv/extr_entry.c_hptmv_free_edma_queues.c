
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int responsesArrayBaseAddr; int requestsArrayBaseAddr; } ;
typedef TYPE_1__ IAL_ADAPTER_T ;


 int M_DEVBUF ;
 int REQUESTS_ARRAY_SIZE ;
 int RESPONSES_ARRAY_SIZE ;
 int contigfree (int ,int ,int ) ;

__attribute__((used)) static void
hptmv_free_edma_queues(IAL_ADAPTER_T *pAdapter)
{
 contigfree(pAdapter->requestsArrayBaseAddr, REQUESTS_ARRAY_SIZE, M_DEVBUF);
 contigfree(pAdapter->responsesArrayBaseAddr, RESPONSES_ARRAY_SIZE, M_DEVBUF);
}
