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
struct cyapa_cdevpriv {TYPE_1__* sc; } ;
struct TYPE_3__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_CYAPA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct cyapa_cdevpriv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *data)
{
	struct cyapa_cdevpriv *priv;

	priv = data;
	FUNC0(priv != NULL, ("cyapa cdevpriv should not be NULL!"));

	FUNC1(priv->sc);
	priv->sc->count--;
	FUNC2(priv->sc);

	FUNC3(priv, M_CYAPA);
}