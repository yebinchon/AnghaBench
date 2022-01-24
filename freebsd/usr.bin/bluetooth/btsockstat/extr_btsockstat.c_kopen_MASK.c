#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kvm_t ;
struct TYPE_3__ {scalar_t__ n_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* nl ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static kvm_t *
FUNC8(char const *memf)
{
	kvm_t	*kvmd = NULL;
	char	 errbuf[_POSIX2_LINE_MAX];

	kvmd = FUNC5(NULL, memf, NULL, O_RDONLY, errbuf);
	if (FUNC6(FUNC1()) != 0)
		FUNC0(1, "setgid");
	if (kvmd == NULL) {
		FUNC7("kvm_openfiles: %s", errbuf);
		return (NULL);
	}

	if (FUNC4(kvmd, nl) < 0) {
		FUNC7("kvm_nlist: %s", FUNC3(kvmd));
		goto fail;
	}

	if (nl[0].n_type == 0) {
		FUNC7("kvm_nlist: no namelist");
		goto fail;
	}

	return (kvmd);
fail:
	FUNC2(kvmd);

	return (NULL);
}