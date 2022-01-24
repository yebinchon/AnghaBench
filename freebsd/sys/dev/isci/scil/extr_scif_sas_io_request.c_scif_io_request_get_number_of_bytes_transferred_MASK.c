#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int U8 ;
typedef  scalar_t__ U32 ;
typedef  scalar_t__ U16 ;
struct TYPE_9__ {int protocol; } ;
struct TYPE_6__ {TYPE_5__ sequence; } ;
struct TYPE_7__ {TYPE_1__ stp; } ;
struct TYPE_8__ {TYPE_2__ parent; } ;
typedef  scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef  TYPE_3__ SCIF_SAS_IO_REQUEST_T ;

/* Variables and functions */
 int SAT_PROTOCOL_PACKET ; 
 scalar_t__ SCIC_STP_PROTOCOL ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

U32 FUNC5(
   SCI_IO_REQUEST_HANDLE_T  scif_io_request
)
{
   SCIF_SAS_IO_REQUEST_T * fw_request = (SCIF_SAS_IO_REQUEST_T*) scif_io_request;

   if(FUNC2(FUNC3(scif_io_request))
       == SCIC_STP_PROTOCOL)
   {
      U16 sati_data_bytes_set =
             FUNC0(&(fw_request->parent.stp.sequence));

      if (sati_data_bytes_set != 0)
         return sati_data_bytes_set;
      else
      {
#if !defined(DISABLE_ATAPI)
         U8 sat_protocol = fw_request->parent.stp.sequence.protocol;
         if ( sat_protocol & SAT_PROTOCOL_PACKET)
            return
               FUNC4(fw_request);
         else
#endif
            return FUNC1(
                      FUNC3(scif_io_request));
      }
   }
   else
   {
      return FUNC1(
                FUNC3(scif_io_request));
   }
}