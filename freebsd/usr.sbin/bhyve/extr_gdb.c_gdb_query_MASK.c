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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  cpuset_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,size_t) ; 
 scalar_t__ FUNC9 (char const*,size_t,char*) ; 
 int cur_vcpu ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (char*) ; 
 int /*<<< orphan*/  vcpus_active ; 

__attribute__((used)) static void
FUNC17(const uint8_t *data, size_t len)
{

	/*
	 * TODO:
	 * - qSearch
	 */
	if (FUNC9(data, len, "qAttached")) {
		FUNC15();
		FUNC5('1');
		FUNC10();
	} else if (FUNC9(data, len, "qC")) {
		FUNC15();
		FUNC7("QC");
		FUNC6(cur_vcpu + 1);
		FUNC10();
	} else if (FUNC9(data, len, "qfThreadInfo")) {
		cpuset_t mask;
		bool first;
		int vcpu;

		if (FUNC1(&vcpus_active)) {
			FUNC13(EINVAL);
			return;
		}
		mask = vcpus_active;
		FUNC15();
		FUNC5('m');
		first = true;
		while (!FUNC1(&mask)) {
			vcpu = FUNC2(&mask) - 1;
			FUNC0(vcpu, &mask);
			if (first)
				first = false;
			else
				FUNC5(',');
			FUNC6(vcpu + 1);
		}
		FUNC10();
	} else if (FUNC9(data, len, "qsThreadInfo")) {
		FUNC15();
		FUNC5('l');
		FUNC10();
	} else if (FUNC9(data, len, "qSupported")) {
		data += FUNC16("qSupported");
		len -= FUNC16("qSupported");
		FUNC8(data, len);
	} else if (FUNC9(data, len, "qThreadExtraInfo")) {
		char buf[16];
		int tid;

		data += FUNC16("qThreadExtraInfo");
		len -= FUNC16("qThreadExtraInfo");
		if (*data != ',') {
			FUNC13(EINVAL);
			return;
		}
		tid = FUNC11(data + 1, len - 1);
		if (tid <= 0 || !FUNC3(tid - 1, &vcpus_active)) {
			FUNC13(EINVAL);
			return;
		}

		FUNC14(buf, sizeof(buf), "vCPU %d", tid - 1);
		FUNC15();
		FUNC4(buf);
		FUNC10();
	} else
		FUNC12();
}