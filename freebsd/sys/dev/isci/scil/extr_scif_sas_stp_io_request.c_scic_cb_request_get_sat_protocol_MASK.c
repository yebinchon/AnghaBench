#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_5__ {int /*<<< orphan*/  protocol; } ;
struct TYPE_6__ {TYPE_1__ sequence; } ;
struct TYPE_7__ {TYPE_2__ stp; } ;
struct TYPE_8__ {TYPE_3__ parent; } ;
typedef  TYPE_4__ SCIF_SAS_IO_REQUEST_T ;

/* Variables and functions */

U8 FUNC0(
   void * scic_user_io_request
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T*) scic_user_io_request;

   return fw_io->parent.stp.sequence.protocol;
}