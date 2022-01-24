#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t U32 ;
struct TYPE_7__ {scalar_t__* io_request_sequence; TYPE_1__** io_request_table; } ;
struct TYPE_6__ {scalar_t__ io_tag; } ;
typedef  TYPE_1__ SCIC_SDS_REQUEST_T ;
typedef  TYPE_2__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 scalar_t__ SCI_CONTROLLER_INVALID_IO_TAG ; 
 TYPE_1__* SCI_INVALID_HANDLE ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static
void FUNC3(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U32                   completion_entry
)
{
   U32 index;
   SCIC_SDS_REQUEST_T *io_request;

   index = FUNC0(completion_entry);
   io_request = this_controller->io_request_table[index];

   // Make sure that we really want to process this IO request
   if (
           (io_request != SCI_INVALID_HANDLE)
        && (io_request->io_tag != SCI_CONTROLLER_INVALID_IO_TAG)
        && (
                FUNC2(io_request->io_tag)
             == this_controller->io_request_sequence[index]
           )
      )
   {
      // Yep this is a valid io request pass it along to the io request handler
      FUNC1(io_request, completion_entry);
   }
}