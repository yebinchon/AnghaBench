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
typedef  int uint8_t ;
struct hid_item {int flags; int report_size; int report_count; int logical_minimum; int logical_maximum; int physical_minimum; int physical_maximum; int unit; int unit_exponent; int /*<<< orphan*/  usage; scalar_t__ report_ID; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HIO_BUFBYTES ; 
 int HIO_CONST ; 
 int HIO_NONLINEAR ; 
 int HIO_NOPREF ; 
 int HIO_NULLSTATE ; 
 int HIO_RELATIVE ; 
 int HIO_VARIABLE ; 
 int HIO_VOLATILE ; 
 int HIO_WRAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static void
FUNC4(char const *label, struct hid_item *h)
{
	if ((h->flags & HIO_CONST) && !verbose)
		return;

	FUNC1(stdout,
"%s id=%u size=%u count=%u page=%s usage=%s%s%s%s%s%s%s%s%s%s",
		label, (uint8_t) h->report_ID, h->report_size, h->report_count,
		FUNC3(FUNC0(h->usage)),
		FUNC2(h->usage),
		h->flags & HIO_CONST ? " Const" : "",
		h->flags & HIO_VARIABLE ? " Variable" : "",
		h->flags & HIO_RELATIVE ? " Relative" : "",
		h->flags & HIO_WRAP ? " Wrap" : "",
		h->flags & HIO_NONLINEAR ? " NonLinear" : "",
		h->flags & HIO_NOPREF ? " NoPref" : "",
		h->flags & HIO_NULLSTATE ? " NullState" : "",
		h->flags & HIO_VOLATILE ? " Volatile" : "",
		h->flags & HIO_BUFBYTES ? " BufBytes" : "");

	FUNC1(stdout,
", logical range %d..%d",
		h->logical_minimum, h->logical_maximum);

	if (h->physical_minimum != h->physical_maximum)
		FUNC1(stdout,
", physical range %d..%d",
			h->physical_minimum, h->physical_maximum);

	if (h->unit)
		FUNC1(stdout,
", unit=0x%02x exp=%d", h->unit, h->unit_exponent);

	FUNC1(stdout, "\n");
}