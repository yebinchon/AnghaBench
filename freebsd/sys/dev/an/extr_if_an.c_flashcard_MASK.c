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
struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int /*<<< orphan*/ * an_flash_buffer; int /*<<< orphan*/  areq; scalar_t__ mpi350; } ;
struct aironet_ioctl {int command; int len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
#define  AIROFLPUTBUF 133 
#define  AIROFLSHGCHR 132 
#define  AIROFLSHPCHR 131 
#define  AIROFLSHRST 130 
#define  AIROFLSHSTFL 129 
#define  AIRORESTART 128 
 int /*<<< orphan*/  FUNC0 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOBUFS ; 
 int FLASH_SIZE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC2 (struct ifnet*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct ifnet*,int,int) ; 
 int FUNC5 (struct ifnet*,int,int) ; 
 int FUNC6 (struct ifnet*) ; 
 int FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC12(struct ifnet *ifp, struct aironet_ioctl *l_ioctl)
{
	int		z = 0, status;
	struct an_softc	*sc;

	sc = ifp->if_softc;
	if (sc->mpi350) {
		FUNC9(ifp, "flashing not supported on MPI 350 yet\n");
		return(-1);
	}
	status = l_ioctl->command;

	switch (l_ioctl->command) {
	case AIROFLSHRST:
		return FUNC2(ifp);
		break;
	case AIROFLSHSTFL:
		if (sc->an_flash_buffer) {
			FUNC8(sc->an_flash_buffer, M_DEVBUF);
			sc->an_flash_buffer = NULL;
		}
		sc->an_flash_buffer = FUNC10(FLASH_SIZE, M_DEVBUF, M_WAITOK);
		if (sc->an_flash_buffer)
			return FUNC11(ifp);
		else
			return ENOBUFS;
		break;
	case AIROFLSHGCHR:	/* Get char from aux */
		if (l_ioctl->len > sizeof(sc->areq)) {
			return -EINVAL;
		}
		FUNC1(sc);
		status = FUNC3(l_ioctl->data, &sc->areq, l_ioctl->len);
		FUNC0(sc);
		if (status)
			return status;
		z = *(int *)&sc->areq;
		if ((status = FUNC4(ifp, z, 8000)) == 1)
			return 0;
		else
			return -1;
	case AIROFLSHPCHR:	/* Send char to card. */
		if (l_ioctl->len > sizeof(sc->areq)) {
			return -EINVAL;
		}
		FUNC1(sc);
		status = FUNC3(l_ioctl->data, &sc->areq, l_ioctl->len);
		FUNC0(sc);
		if (status)
			return status;
		z = *(int *)&sc->areq;
		if ((status = FUNC5(ifp, z, 8000)) == -1)
			return -EIO;
		else
			return 0;
		break;
	case AIROFLPUTBUF:	/* Send 32k to card */
		if (l_ioctl->len > FLASH_SIZE) {
			FUNC9(ifp, "Buffer to big, %x %x\n",
			       l_ioctl->len, FLASH_SIZE);
			return -EINVAL;
		}
		FUNC1(sc);
		status = FUNC3(l_ioctl->data, sc->an_flash_buffer, l_ioctl->len);
		FUNC0(sc);
		if (status)
			return status;

		if ((status = FUNC6(ifp)) != 0)
			return -EIO;
		else
			return 0;
		break;
	case AIRORESTART:
		if ((status = FUNC7(ifp)) != 0) {
			FUNC9(ifp, "FLASHRESTART returned %d\n", status);
			return -EIO;
		} else
			return 0;

		break;
	default:
		return -EINVAL;
	}

	return -EINVAL;
}