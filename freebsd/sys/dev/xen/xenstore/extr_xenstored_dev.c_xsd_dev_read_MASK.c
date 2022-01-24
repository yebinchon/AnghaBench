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
struct uio {int uio_resid; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  evtchn ;

/* Variables and functions */
 int EINVAL ; 
 int XSD_READ_SIZE ; 
 int FUNC0 (char*,int,char*,int) ; 
 int FUNC1 (char*,int,struct uio*) ; 
 int FUNC2 () ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, struct uio *uio, int ioflag)
{
	char evtchn[XSD_READ_SIZE];
	int error, len;

	len = FUNC0(evtchn, sizeof(evtchn), "%u", FUNC2());
	if (len < 0 || len > uio->uio_resid)
		return (EINVAL);

	error = FUNC1(evtchn, len, uio);
	if (error)
		return (error);

	return (0);
}