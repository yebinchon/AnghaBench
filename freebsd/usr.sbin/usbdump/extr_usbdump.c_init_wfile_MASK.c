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
struct usbcap_filehdr {int minor; scalar_t__ major; int /*<<< orphan*/  magic; } ;
struct usbcap {scalar_t__ wfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  USBCAP_FILEHDR_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbcap_filehdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  w_arg ; 
 int FUNC4 (scalar_t__,void const*,int) ; 

__attribute__((used)) static void
FUNC5(struct usbcap *p)
{
	struct usbcap_filehdr uf;
	int ret;

	p->wfd = FUNC3(w_arg, O_CREAT | O_TRUNC | O_WRONLY, S_IRUSR | S_IWUSR);
	if (p->wfd < 0) {
		FUNC0(EXIT_FAILURE, "Could not open "
		    "'%s' for write", w_arg);
	}
	FUNC2(&uf, 0, sizeof(uf));
	uf.magic = FUNC1(USBCAP_FILEHDR_MAGIC);
	uf.major = 0;
	uf.minor = 3;
	ret = FUNC4(p->wfd, (const void *)&uf, sizeof(uf));
	if (ret != sizeof(uf)) {
		FUNC0(EXIT_FAILURE, "Could not write "
		    "USB capture header");
	}
}