#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int /*<<< orphan*/ * value; scalar_t__ length; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

OM_uint32
FUNC1(OM_uint32 *minor_status, gss_buffer_t buffer)
{

	*minor_status = 0;
	if (buffer->value) {
		FUNC0(buffer->value, M_GSSAPI);
	}
	buffer->length = 0;
	buffer->value = NULL;

	return (GSS_S_COMPLETE);
}