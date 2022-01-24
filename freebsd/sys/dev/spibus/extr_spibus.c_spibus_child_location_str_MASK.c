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
struct spibus_ivar {int cs; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int SPIBUS_CS_HIGH ; 
 struct spibus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,int,int) ; 

__attribute__((used)) static int
FUNC3(device_t bus, device_t child, char *buf,
    size_t buflen)
{
	struct spibus_ivar *devi = FUNC0(child);
	int cs;

	cs = devi->cs & ~SPIBUS_CS_HIGH; /* trim 'cs high' bit */
	FUNC2(buf, buflen, "bus=%d cs=%d", FUNC1(bus), cs);
	return (0);
}