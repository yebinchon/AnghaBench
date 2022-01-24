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
typedef  int /*<<< orphan*/  uf ;
struct usbcap_filehdr {scalar_t__ major; int minor; int /*<<< orphan*/  magic; } ;
struct usbcap {scalar_t__ rfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ USBCAP_FILEHDR_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r_arg ; 
 int FUNC4 (scalar_t__,struct usbcap_filehdr*,int) ; 
 int uf_minor ; 

__attribute__((used)) static void
FUNC5(struct usbcap *p)
{
	struct usbcap_filehdr uf;
	int ret;

	p->rfd = FUNC3(r_arg, O_RDONLY);
	if (p->rfd < 0) {
		FUNC0(EXIT_FAILURE, "Could not open "
		    "'%s' for read", r_arg);
	}
	ret = FUNC4(p->rfd, &uf, sizeof(uf));
	if (ret != sizeof(uf)) {
		FUNC0(EXIT_FAILURE, "Could not read USB capture "
		    "file header");
	}
	if (FUNC2(uf.magic) != USBCAP_FILEHDR_MAGIC) {
		FUNC1(EX_SOFTWARE, "Invalid magic field(0x%08x) "
		    "in USB capture file header.",
		    (unsigned int)FUNC2(uf.magic));
	}
	if (uf.major != 0) {
		FUNC1(EX_SOFTWARE, "Invalid major version(%d) "
		    "field in USB capture file header.", (int)uf.major);
	}

	uf_minor = uf.minor;

	if (uf.minor != 3 && uf.minor != 2) {
		FUNC1(EX_SOFTWARE, "Invalid minor version(%d) "
		    "field in USB capture file header.", (int)uf.minor);
	}
}