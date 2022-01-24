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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__ modem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC2(uint8_t *buf, uint32_t len)
{
	uint32_t n;

	for (n = 0; n != len; n++) {
		FUNC1(buf[n], n);
	}

	FUNC0("received", &modem.rx_bytes, len);
}