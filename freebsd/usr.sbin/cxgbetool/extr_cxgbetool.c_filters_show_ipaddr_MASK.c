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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(int type, uint8_t *addr, uint8_t *addrm)
{
	int noctets, octet;

	FUNC0(" ");
	if (type == 0) {
		noctets = 4;
		FUNC0("%3s", " ");
	} else
	noctets = 16;

	for (octet = 0; octet < noctets; octet++)
		FUNC0("%02x", addr[octet]);
	FUNC0("/");
	for (octet = 0; octet < noctets; octet++)
		FUNC0("%02x", addrm[octet]);
}