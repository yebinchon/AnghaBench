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
struct TYPE_2__ {char* id; } ;
struct adapter_params {TYPE_1__ vpd; } ;
struct adapter {int /*<<< orphan*/  dev; struct adapter_params params; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct adapter *sc)
{
	char buf[128];
	struct adapter_params *p = &sc->params;

	FUNC1(buf, sizeof(buf), "Chelsio %s", p->vpd.id);

	FUNC0(sc->dev, buf);
}