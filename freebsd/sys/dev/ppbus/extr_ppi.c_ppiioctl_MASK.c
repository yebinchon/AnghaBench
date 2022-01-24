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
typedef  int /*<<< orphan*/  u_int8_t ;
struct thread {int dummy; } ;
struct ppi_data {int /*<<< orphan*/  ppi_device; } ;
struct cdev {struct ppi_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOTTY ; 
#define  PPIGCTRL 141 
#define  PPIGDATA 140 
#define  PPIGECR 139 
#define  PPIGEPPA 138 
#define  PPIGEPPD 137 
#define  PPIGFIFO 136 
#define  PPIGSTATUS 135 
#define  PPISCTRL 134 
#define  PPISDATA 133 
#define  PPISECR 132 
#define  PPISEPPA 131 
#define  PPISEPPD 130 
#define  PPISFIFO 129 
#define  PPISSTATUS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
	struct ppi_data *ppi = dev->si_drv1;
	device_t ppidev = ppi->ppi_device;
	device_t ppbus = FUNC0(ppidev);
	int error = 0;
	u_int8_t *val = (u_int8_t *)data;

	FUNC1(ppbus);
	switch (cmd) {

	case PPIGDATA:			/* get data register */
		*val = FUNC3(ppbus);
		break;
	case PPIGSTATUS:		/* get status bits */
		*val = FUNC8(ppbus);
		break;
	case PPIGCTRL:			/* get control bits */
		*val = FUNC2(ppbus);
		break;
	case PPIGEPPD:			/* get EPP data bits */
		*val = FUNC6(ppbus);
		break;
	case PPIGECR:			/* get ECP bits */
		*val = FUNC4(ppbus);
		break;
	case PPIGFIFO:			/* read FIFO */
		*val = FUNC7(ppbus);
		break;
	case PPISDATA:			/* set data register */
		FUNC11(ppbus, *val);
		break;
	case PPISSTATUS:		/* set status bits */
		FUNC16(ppbus, *val);
		break;
	case PPISCTRL:			/* set control bits */
		FUNC10(ppbus, *val);
		break;
	case PPISEPPD:			/* set EPP data bits */
		FUNC14(ppbus, *val);
		break;
	case PPISECR:			/* set ECP bits */
		FUNC12(ppbus, *val);
		break;
	case PPISFIFO:			/* write FIFO */
		FUNC15(ppbus, *val);
		break;
	case PPIGEPPA:			/* get EPP address bits */
		*val = FUNC5(ppbus);
		break;
	case PPISEPPA:			/* set EPP address bits */
		FUNC13(ppbus, *val);
		break;
	default:
		error = ENOTTY;
		break;
	}
	FUNC9(ppbus);

	return (error);
}