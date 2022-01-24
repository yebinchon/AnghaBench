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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  const_efidp ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  Nflag ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(uint8_t *data, size_t datalen)
{
	char buffer[1024];

	FUNC0(buffer, sizeof(buffer),
	    (const_efidp)data, datalen);
	if (!Nflag)
		FUNC1(": ");
	FUNC1("%s\n", buffer);
}