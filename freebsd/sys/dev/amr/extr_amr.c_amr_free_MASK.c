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
struct cdev {int dummy; } ;
struct amr_softc {int /*<<< orphan*/  amr_list_lock; int /*<<< orphan*/  amr_hw_lock; struct cdev* amr_dev_t; int /*<<< orphan*/  amr_cmd_clusters; int /*<<< orphan*/ * amr_pass; int /*<<< orphan*/  amr_dev; } ;
struct amr_command_cluster {int dummy; } ;

/* Variables and functions */
 struct amr_command_cluster* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct amr_command_cluster*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acc_link ; 
 int /*<<< orphan*/  FUNC2 (struct amr_command_cluster*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct amr_softc *sc)
{
    struct amr_command_cluster	*acc;

    /* detach from CAM */
    if (sc->amr_pass != NULL)
	FUNC4(sc->amr_dev, sc->amr_pass);

    /* throw away any command buffers */
    while ((acc = FUNC0(&sc->amr_cmd_clusters)) != NULL) {
	FUNC1(&sc->amr_cmd_clusters, acc, acc_link);
	FUNC2(acc);
    }

    /* destroy control device */
    if( sc->amr_dev_t != (struct cdev *)NULL)
	    FUNC3(sc->amr_dev_t);

    if (FUNC6(&sc->amr_hw_lock))
	FUNC5(&sc->amr_hw_lock);

    if (FUNC6(&sc->amr_list_lock))
	FUNC5(&sc->amr_list_lock);
}