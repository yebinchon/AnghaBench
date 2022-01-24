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
struct netmap_priv_d {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct netmap_priv_d*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netmap_dtor ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_priv_d*) ; 
 struct netmap_priv_d* FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	struct netmap_priv_d *priv;
	int error;

	(void)dev;
	(void)oflags;
	(void)devtype;
	(void)td;

	FUNC0();
	priv = FUNC4();
	if (priv == NULL) {
		error = ENOMEM;
		goto out;
	}
	error = FUNC2(priv, netmap_dtor);
	if (error) {
		FUNC3(priv);
	}
out:
	FUNC1();
	return error;
}