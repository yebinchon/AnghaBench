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
struct sbc_softc {struct sbc_ihl* ihl; struct resource** irq; } ;
struct sbc_ihl {int /*<<< orphan*/ ** intr; void** intr_arg; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int INTR_MAX ; 
 int IRQ_MAX ; 
 struct sbc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbc_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, struct resource *irq, int flags,
   	       driver_filter_t *filter,
	       driver_intr_t *intr, 
   	       void *arg, void **cookiep)
{
	struct sbc_softc *scp = FUNC0(dev);
	struct sbc_ihl *ihl = NULL;
	int i, ret;

	if (filter != NULL) {
		FUNC1("sbc.c: we cannot use a filter here\n");
		return (EINVAL);
	}
	FUNC2(scp);
	i = 0;
	while (i < IRQ_MAX) {
		if (irq == scp->irq[i]) ihl = &scp->ihl[i];
		i++;
	}
	ret = 0;
	if (ihl == NULL) ret = EINVAL;
	i = 0;
	while ((ret == 0) && (i < INTR_MAX)) {
		if (ihl->intr[i] == NULL) {
			ihl->intr[i] = intr;
			ihl->intr_arg[i] = arg;
			*cookiep = &ihl->intr[i];
			ret = -1;
		} else i++;
	}
	FUNC3(scp);
	return (ret > 0)? EINVAL : 0;
}