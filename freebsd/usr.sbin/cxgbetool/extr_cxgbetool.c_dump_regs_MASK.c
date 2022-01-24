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
typedef  int /*<<< orphan*/  uint32_t ;
struct t4_regdump {int version; int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_REGDUMP ; 
 int ENOMEM ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  T4_REGDUMP_SIZE ; 
 int /*<<< orphan*/  T5_REGDUMP_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct t4_regdump*) ; 
 int FUNC2 (int,char const**,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char const**,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char const**,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,char const**,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,char const**,int /*<<< orphan*/ *) ; 
 int FUNC7 (int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nexus ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC13(int argc, const char *argv[])
{
	int vers, revision, rc;
	struct t4_regdump regs;
	uint32_t len;

	len = FUNC10(T4_REGDUMP_SIZE, T5_REGDUMP_SIZE);
	regs.data = FUNC0(1, len);
	if (regs.data == NULL) {
		FUNC11(ENOMEM, "regdump");
		return (ENOMEM);
	}

	regs.len = len;
	rc = FUNC1(CHELSIO_T4_REGDUMP, &regs);
	if (rc != 0)
		return (rc);

	vers = FUNC9(regs.version);
	revision = (regs.version >> 10) & 0x3f;

	if (vers == 4) {
		if (revision == 0x3f)
			rc = FUNC3(argc, argv, regs.data);
		else
			rc = FUNC2(argc, argv, regs.data);
	} else if (vers == 5) {
		if (revision == 0x3f)
			rc = FUNC5(argc, argv, regs.data);
		else
			rc = FUNC4(argc, argv, regs.data);
	} else if (vers == 6) {
		if (revision == 0x3f)
			rc = FUNC7(argc, argv, regs.data);
		else
			rc = FUNC6(argc, argv, regs.data);
	} else {
		FUNC12("%s (type %d, rev %d) is not a known card.",
		    nexus, vers, revision);
		return (ENOTSUP);
	}

	FUNC8(regs.data);
	return (rc);
}