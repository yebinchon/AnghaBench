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
typedef  int u_long ;
struct usb_fifo {int dummy; } ;
struct ufm_softc {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOTTY ; 
#define  FM_GET_FREQ 132 
#define  FM_GET_STAT 131 
#define  FM_SET_FREQ 130 
#define  FM_START 129 
#define  FM_STOP 128 
 int FREAD ; 
 int FWRITE ; 
 int FUNC0 (struct ufm_softc*,void*) ; 
 int FUNC1 (struct ufm_softc*,void*) ; 
 int FUNC2 (struct ufm_softc*,void*) ; 
 int FUNC3 (struct ufm_softc*,void*) ; 
 int FUNC4 (struct ufm_softc*,void*) ; 
 struct ufm_softc* FUNC5 (struct usb_fifo*) ; 

__attribute__((used)) static int
FUNC6(struct usb_fifo *fifo, u_long cmd, void *addr,
    int fflags)
{
	struct ufm_softc *sc = FUNC5(fifo);
	int error = 0;

	if ((fflags & (FWRITE | FREAD)) != (FWRITE | FREAD)) {
		return (EACCES);
	}

	switch (cmd) {
	case FM_SET_FREQ:
		error = FUNC2(sc, addr);
		break;
	case FM_GET_FREQ:
		error = FUNC0(sc, addr);
		break;
	case FM_START:
		error = FUNC3(sc, addr);
		break;
	case FM_STOP:
		error = FUNC4(sc, addr);
		break;
	case FM_GET_STAT:
		error = FUNC1(sc, addr);
		break;
	default:
		error = ENOTTY;
		break;
	}
	return (error);
}