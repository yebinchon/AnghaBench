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
struct g_consumer {TYPE_1__* provider; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SPECNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct g_consumer *cp)
{
	char buf[SPECNAMELEN + 6];

	FUNC1(buf, sizeof(buf), "cdev=%s", cp->provider->name);
	FUNC0("GEOM", "DEV", "SIZECHANGE", buf, M_WAITOK);
}