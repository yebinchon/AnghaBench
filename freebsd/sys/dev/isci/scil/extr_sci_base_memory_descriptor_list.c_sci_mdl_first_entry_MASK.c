#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ next_mdl; scalar_t__ next_index; } ;
typedef  scalar_t__ SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T ;
typedef  TYPE_1__ SCI_BASE_MEMORY_DESCRIPTOR_LIST_T ;

/* Variables and functions */
 scalar_t__ SCI_INVALID_HANDLE ; 

void FUNC0(
   SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T mdl
)
{
   SCI_BASE_MEMORY_DESCRIPTOR_LIST_T * base_mdl = (SCI_BASE_MEMORY_DESCRIPTOR_LIST_T*) mdl;

   base_mdl->next_index = 0;

   // If this MDL is managing another MDL, then recursively rewind that MDL
   // object as well.
   if (base_mdl->next_mdl != SCI_INVALID_HANDLE)
      FUNC0(base_mdl->next_mdl);
}