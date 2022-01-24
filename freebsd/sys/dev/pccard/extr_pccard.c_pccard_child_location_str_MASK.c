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
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int number; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pccard_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int) ; 

__attribute__((used)) static int
FUNC2(device_t bus, device_t child, char *buf,
    size_t buflen)
{
	struct pccard_ivar *devi = FUNC0(child);
	struct pccard_function *pf = devi->pf;

	FUNC1(buf, buflen, "function=%d", pf->number);
	return (0);
}