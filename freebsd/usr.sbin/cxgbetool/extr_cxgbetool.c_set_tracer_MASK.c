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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_2__ {int snap_len; int port; scalar_t__ invert; scalar_t__ skip_len; scalar_t__ skip_ofst; scalar_t__ min_len; } ;
struct t4_tracer {int enabled; int valid; TYPE_1__ tp; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_SET_TRACER ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct t4_tracer*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,struct t4_tracer*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(uint8_t idx, int argc, const char *argv[])
{
	struct t4_tracer t;
	int len, port;

	FUNC0(&t, sizeof (t));
	t.idx = idx;
	t.enabled = 1;
	t.valid = 1;

	if (argc != 1) {
		FUNC5("must specify tx<n> or rx<n>.");
		return (EINVAL);
	}

	len = FUNC3(argv[0]);
	if (len != 3) {
		FUNC5("argument must be 3 characters (tx<n> or rx<n>)");
		return (EINVAL);
	}

	if (FUNC4(argv[0], "tx", 2) == 0) {
		port = argv[0][2] - '0';
		if (port < 0 || port > 3) {
			FUNC5("'%c' in %s is invalid", argv[0][2], argv[0]);
			return (EINVAL);
		}
		port += 4;
	} else if (FUNC4(argv[0], "rx", 2) == 0) {
		port = argv[0][2] - '0';
		if (port < 0 || port > 3) {
			FUNC5("'%c' in %s is invalid", argv[0][2], argv[0]);
			return (EINVAL);
		}
	} else {
		FUNC5("argument '%s' isn't tx<n> or rx<n>", argv[0]);
		return (EINVAL);
	}

	t.tp.snap_len = 128;
	t.tp.min_len = 0;
	t.tp.skip_ofst = 0;
	t.tp.skip_len = 0;
	t.tp.invert = 0;
	t.tp.port = port;

	FUNC1();
	return FUNC2(CHELSIO_T4_SET_TRACER, &t);
}