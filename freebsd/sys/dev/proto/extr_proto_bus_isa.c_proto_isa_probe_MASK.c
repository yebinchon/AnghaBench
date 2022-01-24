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
struct sbuf {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proto_isa_devnames ; 
 int /*<<< orphan*/  proto_isa_prefix ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*) ; 
 struct sbuf* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct sbuf *sb;
	struct resource *res;
	int rid, type;

	rid = 0;
	type = SYS_RES_IOPORT;
	res = FUNC0(dev, type, &rid, RF_ACTIVE);
	if (res == NULL) {
		type = SYS_RES_MEMORY;
		res = FUNC0(dev, type, &rid, RF_ACTIVE);
	}
	if (res == NULL)
		return (ENODEV);

	sb = FUNC8();
	FUNC9(sb, "%s:%#jx", proto_isa_prefix, FUNC4(res));
	FUNC7(sb);
	FUNC2(dev, FUNC5(sb));
	FUNC6(sb);
	FUNC1(dev, type, rid, res);
	return (FUNC3(dev, proto_isa_prefix, &proto_isa_devnames));
}