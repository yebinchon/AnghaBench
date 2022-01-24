#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  void* u_char ;
struct thread {int dummy; } ;
struct TYPE_4__ {char byte; int word; } ;
struct TYPE_3__ {int /*<<< orphan*/  word; int /*<<< orphan*/  byte; } ;
struct smbcmd {int slave; int rcount; int wcount; int /*<<< orphan*/  rbuf; int /*<<< orphan*/  cmd; int /*<<< orphan*/  wbuf; TYPE_2__ rdata; TYPE_1__ wdata; } ;
struct smb_softc {int /*<<< orphan*/  sc_dev; } ;
struct cdev {struct smb_softc* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
 int O_NONBLOCK ; 
#define  SMB_BREAD 141 
#define  SMB_BWRITE 140 
 int SMB_DONTWAIT ; 
 int SMB_INTR ; 
 int SMB_MAXBLOCKSIZE ; 
#define  SMB_OLD_PCALL 139 
#define  SMB_OLD_READB 138 
#define  SMB_OLD_READW 137 
#define  SMB_PCALL 136 
 int /*<<< orphan*/  SMB_QREAD ; 
#define  SMB_QUICK_READ 135 
#define  SMB_QUICK_WRITE 134 
 int /*<<< orphan*/  SMB_QWRITE ; 
#define  SMB_READB 133 
#define  SMB_READW 132 
#define  SMB_RECVB 131 
#define  SMB_SENDB 130 
 int SMB_WAIT ; 
#define  SMB_WRITEB 129 
#define  SMB_WRITEW 128 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void**,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
	char buf[SMB_MAXBLOCKSIZE];
	device_t parent;
	struct smbcmd *s = (struct smbcmd *)data;
	struct smb_softc *sc = dev->si_drv1;
	device_t smbdev = sc->sc_dev;
	int error;
	int unit;
	u_char bcount;

	/*
	 * If a specific slave device is being used, override any passed-in
	 * slave.
	 */
	unit = FUNC2(dev);
	if (unit & 0x0400)
		s->slave = unit & 0x03ff;

	parent = FUNC3(smbdev);

	/* Make sure that LSB bit is cleared. */
	if (s->slave & 0x1)
		return (EINVAL);

	/* Allocate the bus. */
	if ((error = FUNC13(parent, smbdev,
			(flags & O_NONBLOCK) ? SMB_DONTWAIT : (SMB_WAIT | SMB_INTR))))
		return (error);

	switch (cmd) {
	case SMB_QUICK_WRITE:
		error = FUNC6(FUNC8(parent, s->slave, SMB_QWRITE));
		break;

	case SMB_QUICK_READ:
		error = FUNC6(FUNC8(parent, s->slave, SMB_QREAD));
		break;

	case SMB_SENDB:
		error = FUNC6(FUNC14(parent, s->slave, s->cmd));
		break;

	case SMB_RECVB:
		error = FUNC6(FUNC11(parent, s->slave, &s->cmd));
		break;

	case SMB_WRITEB:
		error = FUNC6(FUNC15(parent, s->slave, s->cmd,
						s->wdata.byte));
		break;

	case SMB_WRITEW:
		error = FUNC6(FUNC16(parent, s->slave,
						s->cmd, s->wdata.word));
		break;

	case SMB_OLD_READB:
	case SMB_READB:
		/* NB: for SMB_OLD_READB the read data goes to rbuf only. */
		error = FUNC6(FUNC9(parent, s->slave, s->cmd,
		    &s->rdata.byte));
		if (error)
			break;
		if (s->rbuf && s->rcount >= 1) {
			error = FUNC1(&s->rdata.byte, s->rbuf, 1);
			s->rcount = 1;
		}
		break;

	case SMB_OLD_READW:
	case SMB_READW:
		/* NB: for SMB_OLD_READW the read data goes to rbuf only. */
		error = FUNC6(FUNC10(parent, s->slave, s->cmd,
		    &s->rdata.word));
		if (error)
			break;
		if (s->rbuf && s->rcount >= 2) {
			buf[0] = (u_char)s->rdata.word;
			buf[1] = (u_char)(s->rdata.word >> 8);
			error = FUNC1(buf, s->rbuf, 2);
			s->rcount = 2;
		}
		break;

	case SMB_OLD_PCALL:
	case SMB_PCALL:
		/* NB: for SMB_OLD_PCALL the read data goes to rbuf only. */
		error = FUNC6(FUNC7(parent, s->slave, s->cmd,
		    s->wdata.word, &s->rdata.word));
		if (error)
			break;
		if (s->rbuf && s->rcount >= 2) {
			buf[0] = (u_char)s->rdata.word;
			buf[1] = (u_char)(s->rdata.word >> 8);
			error = FUNC1(buf, s->rbuf, 2);
			s->rcount = 2;
		}

		break;

	case SMB_BWRITE:
		if (s->wcount < 0) {
			error = EINVAL;
			break;
		}
		if (s->wcount > SMB_MAXBLOCKSIZE)
			s->wcount = SMB_MAXBLOCKSIZE;
		if (s->wcount)
			error = FUNC0(s->wbuf, buf, s->wcount);
		if (error)
			break;
		error = FUNC6(FUNC5(parent, s->slave, s->cmd,
		    s->wcount, buf));
		break;

	case SMB_BREAD:
		if (s->rcount < 0) {
			error = EINVAL;
			break;
		}
		if (s->rcount > SMB_MAXBLOCKSIZE)
			s->rcount = SMB_MAXBLOCKSIZE;
		error = FUNC6(FUNC4(parent, s->slave, s->cmd,
		    &bcount, buf));
		if (error)
			break;
		if (s->rcount > bcount)
			s->rcount = bcount;
		error = FUNC1(buf, s->rbuf, s->rcount);
		break;

	default:
		error = ENOTTY;
	}

	FUNC12(parent, smbdev);

	return (error);
}