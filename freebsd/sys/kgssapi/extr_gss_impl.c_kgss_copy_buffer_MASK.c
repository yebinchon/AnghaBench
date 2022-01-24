#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_4__ {int /*<<< orphan*/ * value; scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(const gss_buffer_t from, gss_buffer_t to)
{
	to->length = from->length;
	if (from->length) {
		to->value = FUNC1(from->length, M_GSSAPI, M_WAITOK);
		FUNC0(from->value, to->value, from->length);
	} else {
		to->value = NULL;
	}
}