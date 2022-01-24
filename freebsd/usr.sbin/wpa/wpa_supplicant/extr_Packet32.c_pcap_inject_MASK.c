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
struct ifreq {int dummy; } ;
typedef  int /*<<< orphan*/  pcap_t ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  device ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIOCGETIF ; 
 int /*<<< orphan*/  BIOCSETIF ; 
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,void const*,size_t) ; 

int
FUNC7(pcap_t *p, const void *buf, size_t len)
{
	int			fd;
	int			res, n = 0;
	char			device[sizeof "/dev/bpf0000000000"];
	struct ifreq		ifr;

        /*
         * Go through all the minors and find one that isn't in use.
         */
	do {
		(void)FUNC5(device, sizeof(device), "/dev/bpf%d", n++);
		fd = FUNC3(device, O_RDWR);
	} while (fd < 0 && errno == EBUSY);

	if (fd == -1)
		return(-1);

	FUNC0((char *)&ifr, sizeof(ifr));
	FUNC2(FUNC4(p), BIOCGETIF, (caddr_t)&ifr);
	FUNC2(fd, BIOCSETIF, (caddr_t)&ifr);

	res = FUNC6(fd, buf, len);

	FUNC1(fd);

	return(res);
}