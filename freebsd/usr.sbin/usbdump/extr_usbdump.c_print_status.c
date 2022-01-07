
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BDMA_ENABLE ;
 int BDMA_NO_POST_SYNC ;
 int BDMA_SETUP ;
 int BW_RECLAIMED ;
 int CAN_CANCEL_IMMED ;
 int CONTROL_ACT ;
 int CONTROL_HDR ;
 int CONTROL_STALL ;
 int CONTROL_XFR ;
 int CURR_DMA_SET ;
 int DID_CLOSE ;
 int DID_DMA_DELAY ;
 int DOING_CALLBACK ;
 int DRAINING ;
 int ISOCHRONOUS_XFR ;
 int OPEN ;
 int SHORT_FRAMES_OK ;
 int SHORT_XFER_OK ;
 int STARTED ;
 char* STATUS (int,int ) ;
 int TRANSFERRING ;
 int printf (char*,int,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void
print_status(uint32_t status)
{
 printf(" status %#x <%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s0>\n",
     status,
     STATUS(status, OPEN),
     STATUS(status, TRANSFERRING),
     STATUS(status, DID_DMA_DELAY),
     STATUS(status, DID_CLOSE),
     STATUS(status, DRAINING),
     STATUS(status, STARTED),
     STATUS(status, BW_RECLAIMED),
     STATUS(status, CONTROL_XFR),
     STATUS(status, CONTROL_HDR),
     STATUS(status, CONTROL_ACT),
     STATUS(status, CONTROL_STALL),
     STATUS(status, SHORT_FRAMES_OK),
     STATUS(status, SHORT_XFER_OK),
     STATUS(status, BDMA_ENABLE),
     STATUS(status, BDMA_NO_POST_SYNC),
     STATUS(status, BDMA_SETUP),
     STATUS(status, ISOCHRONOUS_XFR),
     STATUS(status, CURR_DMA_SET),
     STATUS(status, CAN_CANCEL_IMMED),
     STATUS(status, DOING_CALLBACK));
}
