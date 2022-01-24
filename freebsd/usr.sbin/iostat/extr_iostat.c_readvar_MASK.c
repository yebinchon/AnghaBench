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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  kvm_t ;
struct TYPE_2__ {char const* n_name; int /*<<< orphan*/  n_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,size_t) ; 
 TYPE_1__* namelist ; 
 int FUNC2 (char const*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,unsigned long,...) ; 

__attribute__((used)) static int
FUNC5(kvm_t *kd, const char *name, int nlid, void *ptr, size_t len)
{
	if (kd != NULL) {
		ssize_t nbytes;

		nbytes = FUNC1(kd, namelist[nlid].n_value, ptr, len);

		if (nbytes < 0) {
			FUNC4("kvm_read(%s): %s", namelist[nlid].n_name,
			    FUNC0(kd));
			return (1);
		} else if ((size_t)nbytes != len) {
			FUNC4("kvm_read(%s): expected %zu bytes, got %zd bytes",
			      namelist[nlid].n_name, len, nbytes);
			return (1);
		}
	} else {
		size_t nlen = len;

		if (FUNC2(name, ptr, &nlen, NULL, 0) == -1) {
			FUNC3("sysctl(%s...) failed", name);
			return (1);
		}
		if (nlen != len) {
			FUNC4("sysctl(%s...): expected %lu, got %lu", name,
			      (unsigned long)len, (unsigned long)nlen);
			return (1);
		}
	}
	return (0);
}