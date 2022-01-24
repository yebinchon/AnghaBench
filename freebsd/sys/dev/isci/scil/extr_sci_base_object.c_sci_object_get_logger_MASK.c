#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SCI_OBJECT_HANDLE_T ;
typedef  int /*<<< orphan*/ * SCI_LOGGER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

SCI_LOGGER_HANDLE_T FUNC1(
   SCI_OBJECT_HANDLE_T object
)
{
#if defined(SCI_LOGGING)
   return sci_base_object_get_logger(object);
#else // defined(SCI_LOGGING)
   return NULL;
#endif // defined(SCI_LOGGING)
}