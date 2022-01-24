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
struct thread {int dummy; } ;
struct cyapa_cdevpriv {TYPE_1__* sc; } ;
struct cdev {TYPE_1__* si_drv1; } ;
struct TYPE_3__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CYAPA ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  cyapa_cdevpriv_dtor ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct cyapa_cdevpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cyapa_cdevpriv*,int /*<<< orphan*/ ) ; 
 struct cyapa_cdevpriv* FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	struct cyapa_cdevpriv *priv;
	int error;

	priv = FUNC4(sizeof(*priv), M_CYAPA, M_WAITOK | M_ZERO);
	priv->sc = dev->si_drv1;

	error = FUNC2(priv, cyapa_cdevpriv_dtor);
	if (error == 0) {
		FUNC0(priv->sc);
		priv->sc->count++;
		FUNC1(priv->sc);
	}
	else
		FUNC3(priv, M_CYAPA);

	return (error);
}