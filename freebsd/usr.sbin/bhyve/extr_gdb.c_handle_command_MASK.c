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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  GDB_SIGNAL_TRAP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int cur_vcpu ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,size_t) ; 
 int FUNC12 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  vcpus_active ; 

__attribute__((used)) static void
FUNC17(const uint8_t *data, size_t len)
{

	/* Reject packets with a sequence-id. */
	if (len >= 3 && data[0] >= '0' && data[0] <= '9' &&
	    data[0] >= '0' && data[0] <= '9' && data[2] == ':') {
		FUNC13();
		return;
	}

	switch (*data) {
	case 'c':
		if (len != 1) {
			FUNC14(EINVAL);
			break;
		}

		/* Don't send a reply until a stop occurs. */
		FUNC9();
		break;
	case 'D':
		FUNC15();

		/* TODO: Resume any stopped CPUs. */
		break;
	case 'g': {
		FUNC8();
		break;
	}
	case 'H': {
		int tid;

		if (data[1] != 'g' && data[1] != 'c') {
			FUNC14(EINVAL);
			break;
		}
		tid = FUNC12(data + 2, len - 2);
		if (tid == -2) {
			FUNC14(EINVAL);
			break;
		}

		if (FUNC0(&vcpus_active)) {
			FUNC14(EINVAL);
			break;
		}
		if (tid == -1 || tid == 0)
			cur_vcpu = FUNC1(&vcpus_active) - 1;
		else if (FUNC2(tid - 1, &vcpus_active))
			cur_vcpu = tid - 1;
		else {
			FUNC14(EINVAL);
			break;
		}
		FUNC15();
		break;
	}
	case 'm':
		FUNC7(data, len);
		break;
	case 'M':
		FUNC11(data, len);
		break;
	case 'T': {
		int tid;

		tid = FUNC12(data + 1, len - 1);
		if (tid <= 0 || !FUNC2(tid - 1, &vcpus_active)) {
			FUNC14(EINVAL);
			return;
		}
		FUNC15();
		break;
	}
	case 'q':
		FUNC6(data, len);
		break;
	case 's':
		if (len != 1) {
			FUNC14(EINVAL);
			break;
		}

		/* Don't send a reply until a stop occurs. */
		if (!FUNC10(cur_vcpu)) {
			FUNC14(EOPNOTSUPP);
			break;
		}
		break;
	case '?':
		/* XXX: Only if stopped? */
		/* For now, just report that we are always stopped. */
		FUNC16();
		FUNC4('S');
		FUNC3(GDB_SIGNAL_TRAP);
		FUNC5();
		break;
	case 'G': /* TODO */
	case 'v':
		/* Handle 'vCont' */
		/* 'vCtrlC' */
	case 'p': /* TODO */
	case 'P': /* TODO */
	case 'Q': /* TODO */
	case 't': /* TODO */
	case 'X': /* TODO */
	case 'z': /* TODO */
	case 'Z': /* TODO */
	default:
		FUNC13();
	}
}