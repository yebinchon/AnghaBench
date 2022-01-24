#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_7__ {scalar_t__ necessity; } ;
struct device {int /*<<< orphan*/  name; TYPE_2__ cd; } ;
struct termios {int c_cflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
struct TYPE_6__ {int fd; int disc; scalar_t__ speed; } ;
struct ttydevice {int mbits; char* hook; struct device dev; struct termios ios; TYPE_1__ real; int /*<<< orphan*/  Timer; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int parity; int speed; scalar_t__ rts_cts; TYPE_2__ cd; } ;
struct TYPE_8__ {char* full; } ;
struct physical {int fd; scalar_t__ type; TYPE_5__ link; TYPE_4__ cfg; TYPE_3__ name; } ;

/* Variables and functions */
 int CCTS_OFLOW ; 
 scalar_t__ CD_DEFAULT ; 
 int CLOCAL ; 
 int CRTS_IFLOW ; 
 int CSIZE ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int HUPCL ; 
 scalar_t__ IXOFF ; 
 scalar_t__ IXON ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogWARN ; 
 int O_NONBLOCK ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  PHYSICAL_NOFORCE ; 
 scalar_t__ PHYS_DEDICATED ; 
 scalar_t__ PHYS_DIRECT ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  basettydevice ; 
 int /*<<< orphan*/  FUNC1 (struct termios*) ; 
 int FUNC2 (struct termios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ttydevice*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct ttydevice* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC11 (struct physical*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct physical*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct termios*) ; 
 int FUNC16 (int,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC17 (struct physical*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

struct device *
FUNC19(struct physical *p)
{
  struct ttydevice *dev;
  struct termios ios;
  int oldflag;

  if (p->fd < 0 || !FUNC6(p->fd))
    /* Don't want this */
    return NULL;

  if (*p->name.full == '\0') {
    FUNC11(p, FUNC18(p->fd));
    FUNC7(LogDEBUG, "%s: Input is a tty (%s)\n",
               p->link.name, p->name.full);
  } else
    FUNC7(LogDEBUG, "%s: Opened %s\n", p->link.name, p->name.full);

  /* We're gonna return a ttydevice (unless something goes horribly wrong) */

  if ((dev = FUNC8(sizeof *dev)) == NULL) {
    /* Complete failure - parent doesn't continue trying to ``create'' */
    FUNC3(p->fd);
    p->fd = -1;
    return NULL;
  }

  FUNC9(&dev->dev, &basettydevice, sizeof dev->dev);
  FUNC10(&dev->Timer, '\0', sizeof dev->Timer);
  dev->mbits = -1;
#ifndef NONETGRAPH
  dev->real.speed = 0;
  dev->real.fd = -1;
  dev->real.disc = -1;
  *dev->hook = '\0';
#endif
  FUNC15(p->fd, &ios);
  dev->ios = ios;

  if (p->cfg.cd.necessity != CD_DEFAULT)
    /* Any override is ok for the tty device */
    dev->dev.cd = p->cfg.cd;

  FUNC7(LogDEBUG, "%s: tty_Create: physical (get): fd = %d,"
             " iflag = %lx, oflag = %lx, cflag = %lx\n", p->link.name, p->fd,
             (u_long)ios.c_iflag, (u_long)ios.c_oflag, (u_long)ios.c_cflag);

  FUNC1(&ios);
  if (p->cfg.rts_cts)
    ios.c_cflag |= CLOCAL | CCTS_OFLOW | CRTS_IFLOW;
  else {
    ios.c_cflag |= CLOCAL;
    ios.c_iflag |= IXOFF;
  }
  ios.c_iflag |= IXON;
  if (p->type != PHYS_DEDICATED)
    ios.c_cflag |= HUPCL;

  if (p->type != PHYS_DIRECT) {
      /* Change tty speed when we're not in -direct mode */
      ios.c_cflag &= ~(CSIZE | PARODD | PARENB);
      ios.c_cflag |= p->cfg.parity;
      if (FUNC2(&ios, FUNC0(p->cfg.speed)) == -1)
	FUNC7(LogWARN, "%s: %s: Unable to set speed to %d\n",
		  p->link.name, p->name.full, p->cfg.speed);
  }

  if (FUNC16(p->fd, TCSADRAIN, &ios) == -1) {
    FUNC7(LogWARN, "%s: tcsetattr: Failed configuring device\n",
               p->link.name);
    if (p->type != PHYS_DIRECT && p->cfg.speed > 115200)
      FUNC7(LogWARN, "%.*s             Perhaps the speed is unsupported\n",
                 (int)FUNC14(p->link.name), "");
  }

  FUNC7(LogDEBUG, "%s: physical (put): iflag = %lx, oflag = %lx, "
            "cflag = %lx\n", p->link.name, (u_long)ios.c_iflag,
            (u_long)ios.c_oflag, (u_long)ios.c_cflag);

  oldflag = FUNC4(p->fd, F_GETFL, 0);
  if (oldflag < 0) {
    /* Complete failure - parent doesn't continue trying to ``create'' */

    FUNC7(LogWARN, "%s: Open: Cannot get physical flags: %s\n",
               p->link.name, FUNC13(errno));
    FUNC17(p);
    FUNC3(p->fd);
    p->fd = -1;
    FUNC5(dev);
    return NULL;
  } else
    FUNC4(p->fd, F_SETFL, oldflag & ~O_NONBLOCK);

  FUNC12(p, dev->dev.name, PHYSICAL_NOFORCE);

  return &dev->dev;
}