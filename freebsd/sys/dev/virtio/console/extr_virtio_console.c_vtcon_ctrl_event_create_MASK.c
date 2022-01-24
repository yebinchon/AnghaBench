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
struct vtcon_softc {int dummy; } ;
struct virtio_console_control {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  VTCON_CTRL_BUFSZ ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_console_control*,int /*<<< orphan*/ ) ; 
 struct virtio_console_control* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct vtcon_softc*,struct virtio_console_control*) ; 

__attribute__((used)) static int
FUNC3(struct vtcon_softc *sc)
{
	struct virtio_console_control *control;
	int error;

	control = FUNC1(VTCON_CTRL_BUFSZ, M_DEVBUF, M_ZERO | M_NOWAIT);
	if (control == NULL)
		return (ENOMEM);

	error = FUNC2(sc, control);
	if (error)
		FUNC0(control, M_DEVBUF);

	return (error);
}