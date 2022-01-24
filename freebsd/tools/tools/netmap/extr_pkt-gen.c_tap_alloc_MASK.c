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
struct ifreq {int ifr_flags; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int IFF_NO_PI ; 
 int IFF_TAP ; 
 size_t IFNAMSIZ ; 
 int /*<<< orphan*/  O_RDWR ; 
 char* TAP_CLONEDEV ; 
 int /*<<< orphan*/  TUNSETIFF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(char *dev)
{
	struct ifreq ifr;
	int fd, err;
	char *clonedev = TAP_CLONEDEV;

	(void)err;
	(void)dev;
	/* Arguments taken by the function:
	 *
	 * char *dev: the name of an interface (or '\0'). MUST have enough
	 *   space to hold the interface name if '\0' is passed
	 * int flags: interface flags (eg, IFF_TUN etc.)
	 */

#ifdef __FreeBSD__
	if (dev[3]) { /* tapSomething */
		static char buf[128];
		snprintf(buf, sizeof(buf), "/dev/%s", dev);
		clonedev = buf;
	}
#endif
	/* open the device */
	if( (fd = FUNC5(clonedev, O_RDWR)) < 0 ) {
		return fd;
	}
	FUNC0("%s open successful", clonedev);

	/* preparation of the struct ifr, of type "struct ifreq" */
	FUNC4(&ifr, 0, sizeof(ifr));

#ifdef linux
	ifr.ifr_flags = IFF_TAP | IFF_NO_PI;

	if (*dev) {
		/* if a device name was specified, put it in the structure; otherwise,
		* the kernel will try to allocate the "next" device of the
		* specified type */
		size_t len = FUNC9(dev);
		if (len > IFNAMSIZ) {
			FUNC0("%s too long", dev);
			return -1;
		}
		FUNC3(ifr.ifr_name, dev, len);
	}

	/* try to create the device */
	if( (err = FUNC2(fd, TUNSETIFF, (void *) &ifr)) < 0 ) {
		FUNC0("failed to to a TUNSETIFF: %s", FUNC8(errno));
		FUNC1(fd);
		return err;
	}

	/* if the operation was successful, write back the name of the
	* interface to the variable "dev", so the caller can know
	* it. Note that the caller MUST reserve space in *dev (see calling
	* code below) */
	FUNC7(dev, ifr.ifr_name);
	FUNC0("new name is %s", dev);
#endif /* linux */

	/* this is the special file descriptor that the caller will use to talk
	 * with the virtual interface */
	return fd;
}