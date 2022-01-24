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
struct thread {int dummy; } ;
struct smb_dev {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NSMBDEV ; 
 int FUNC0 (struct smb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdp_dtor ; 
 struct smb_dev* FUNC2 (struct cdev*) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	struct smb_dev *sdp;
	int error;

	sdp = FUNC2(dev);
	error = FUNC0(sdp, sdp_dtor);
	if (error) {
		FUNC1(sdp, M_NSMBDEV);	
		return (error);
	}
	return (0);
}