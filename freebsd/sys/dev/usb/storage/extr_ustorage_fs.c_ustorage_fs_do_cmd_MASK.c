#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint8_t ;
typedef  int uint32_t ;
struct TYPE_8__ {int cmd_len; TYPE_2__* currlun; void* cmd_dir; int /*<<< orphan*/  data_rem; int /*<<< orphan*/  data_ptr; } ;
struct ustorage_fs_softc {TYPE_4__ sc_transfer; TYPE_1__* sc_csw; TYPE_3__* sc_cbw; int /*<<< orphan*/  sc_qdata; } ;
struct TYPE_7__ {int* CBWCDB; } ;
struct TYPE_6__ {int /*<<< orphan*/  sense_data; } ;
struct TYPE_5__ {void* bCSWStatus; } ;

/* Variables and functions */
 void* CSWSTATUS_FAILED ; 
 void* DIR_READ ; 
 void* DIR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
#define  SC_FORMAT_UNIT 150 
#define  SC_INQUIRY 149 
#define  SC_MODE_SELECT_10 148 
#define  SC_MODE_SELECT_6 147 
#define  SC_MODE_SENSE_10 146 
#define  SC_MODE_SENSE_6 145 
#define  SC_PREVENT_ALLOW_MEDIUM_REMOVAL 144 
#define  SC_READ_10 143 
#define  SC_READ_12 142 
#define  SC_READ_6 141 
#define  SC_READ_CAPACITY 140 
#define  SC_READ_FORMAT_CAPACITIES 139 
#define  SC_RELEASE 138 
#define  SC_REQUEST_SENSE 137 
#define  SC_RESERVE 136 
#define  SC_SEND_DIAGNOSTIC 135 
#define  SC_START_STOP_UNIT 134 
#define  SC_SYNCHRONIZE_CACHE 133 
#define  SC_TEST_UNIT_READY 132 
#define  SC_VERIFY 131 
#define  SC_WRITE_10 130 
#define  SC_WRITE_12 129 
#define  SC_WRITE_6 128 
 int /*<<< orphan*/  SS_INVALID_COMMAND ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 unsigned long FUNC3 (struct ustorage_fs_softc*,int,int,int) ; 
 unsigned long FUNC4 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC5 (struct ustorage_fs_softc*,int,int const) ; 
 unsigned long FUNC6 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC7 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC8 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC9 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC10 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC11 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC12 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC13 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC14 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC15 (struct ustorage_fs_softc*) ; 
 unsigned long FUNC16 (struct ustorage_fs_softc*) ; 

__attribute__((used)) static uint8_t
FUNC17(struct ustorage_fs_softc *sc)
{
	uint8_t error = 1;
	uint8_t i;
	uint32_t temp;
	const uint32_t mask9 = (0xFFFFFFFFUL >> 9) << 9;

	/* set default data transfer pointer */
	sc->sc_transfer.data_ptr = sc->sc_qdata;

	FUNC0("cmd_data[0]=0x%02x, data_rem=0x%08x\n",
	    sc->sc_cbw->CBWCDB[0], sc->sc_transfer.data_rem);

	switch (sc->sc_cbw->CBWCDB[0]) {
	case SC_INQUIRY:
		sc->sc_transfer.cmd_dir = DIR_WRITE;
		error = FUNC5(sc, sc->sc_cbw->CBWCDB[4], -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 6,
		    (1UL << 4) | 1, 0);
		if (error) {
			break;
		}
		error = FUNC4(sc);

		break;

	case SC_MODE_SELECT_6:
		sc->sc_transfer.cmd_dir = DIR_READ;
		error = FUNC5(sc, sc->sc_cbw->CBWCDB[4], -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 6,
		    (1UL << 1) | (1UL << 4) | 1, 0);
		if (error) {
			break;
		}
		error = FUNC6(sc);

		break;

	case SC_MODE_SELECT_10:
		sc->sc_transfer.cmd_dir = DIR_READ;
		error = FUNC5(sc,
		    FUNC1(&sc->sc_cbw->CBWCDB[7]), -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 10,
		    (1UL << 1) | (3UL << 7) | 1, 0);
		if (error) {
			break;
		}
		error = FUNC6(sc);

		break;

	case SC_MODE_SENSE_6:
		sc->sc_transfer.cmd_dir = DIR_WRITE;
		error = FUNC5(sc, sc->sc_cbw->CBWCDB[4], -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 6,
		    (1UL << 1) | (1UL << 2) | (1UL << 4) | 1, 0);
		if (error) {
			break;
		}
		error = FUNC7(sc);

		break;

	case SC_MODE_SENSE_10:
		sc->sc_transfer.cmd_dir = DIR_WRITE;
		error = FUNC5(sc,
		    FUNC1(&sc->sc_cbw->CBWCDB[7]), -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 10,
		    (1UL << 1) | (1UL << 2) | (3UL << 7) | 1, 0);
		if (error) {
			break;
		}
		error = FUNC7(sc);

		break;

	case SC_PREVENT_ALLOW_MEDIUM_REMOVAL:
		error = FUNC5(sc, 0, -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 6,
		    (1UL << 4) | 1, 0);
		if (error) {
			break;
		}
		error = FUNC8(sc);

		break;

	case SC_READ_6:
		i = sc->sc_cbw->CBWCDB[4];
		sc->sc_transfer.cmd_dir = DIR_WRITE;
		temp = ((i == 0) ? 256UL : i);
		error = FUNC5(sc, temp << 9, mask9);
		if (error) {
			break;
		}
		error = FUNC3(sc, 6,
		    (7UL << 1) | (1UL << 4) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC9(sc);

		break;

	case SC_READ_10:
		sc->sc_transfer.cmd_dir = DIR_WRITE;
		temp = FUNC1(&sc->sc_cbw->CBWCDB[7]);
		error = FUNC5(sc, temp << 9, mask9);
		if (error) {
			break;
		}
		error = FUNC3(sc, 10,
		    (1UL << 1) | (0xfUL << 2) | (3UL << 7) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC9(sc);

		break;

	case SC_READ_12:
		sc->sc_transfer.cmd_dir = DIR_WRITE;
		temp = FUNC2(&sc->sc_cbw->CBWCDB[6]);
		if (temp >= (1UL << (32 - 9))) {
			/* numerical overflow */
			sc->sc_csw->bCSWStatus = CSWSTATUS_FAILED;
			error = 1;
			break;
		}
		error = FUNC5(sc, temp << 9, mask9);
		if (error) {
			break;
		}
		error = FUNC3(sc, 12,
		    (1UL << 1) | (0xfUL << 2) | (0xfUL << 6) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC9(sc);

		break;

	case SC_READ_CAPACITY:
		sc->sc_transfer.cmd_dir = DIR_WRITE;
		error = FUNC3(sc, 10,
		    (0xfUL << 2) | (1UL << 8) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC10(sc);

		break;

	case SC_READ_FORMAT_CAPACITIES:
		sc->sc_transfer.cmd_dir = DIR_WRITE;
		error = FUNC5(sc,
		    FUNC1(&sc->sc_cbw->CBWCDB[7]), -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 10,
		    (3UL << 7) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC11(sc);

		break;

	case SC_REQUEST_SENSE:
		sc->sc_transfer.cmd_dir = DIR_WRITE;
		error = FUNC5(sc, sc->sc_cbw->CBWCDB[4], -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 6,
		    (1UL << 4) | 1, 0);
		if (error) {
			break;
		}
		error = FUNC12(sc);

		break;

	case SC_START_STOP_UNIT:
		error = FUNC5(sc, 0, -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 6,
		    (1UL << 1) | (1UL << 4) | 1, 0);
		if (error) {
			break;
		}
		error = FUNC13(sc);

		break;

	case SC_SYNCHRONIZE_CACHE:
		error = FUNC5(sc, 0, -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 10,
		    (0xfUL << 2) | (3UL << 7) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC14(sc);

		break;

	case SC_TEST_UNIT_READY:
		error = FUNC5(sc, 0, -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 6,
		    0 | 1, 1);
		break;

		/*
		 * Although optional, this command is used by MS-Windows.
		 * We support a minimal version: BytChk must be 0.
		 */
	case SC_VERIFY:
		error = FUNC5(sc, 0, -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, 10,
		    (1UL << 1) | (0xfUL << 2) | (3UL << 7) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC15(sc);

		break;

	case SC_WRITE_6:
		i = sc->sc_cbw->CBWCDB[4];
		sc->sc_transfer.cmd_dir = DIR_READ;
		temp = ((i == 0) ? 256UL : i);
		error = FUNC5(sc, temp << 9, mask9);
		if (error) {
			break;
		}
		error = FUNC3(sc, 6,
		    (7UL << 1) | (1UL << 4) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC16(sc);

		break;

	case SC_WRITE_10:
		sc->sc_transfer.cmd_dir = DIR_READ;
		temp = FUNC1(&sc->sc_cbw->CBWCDB[7]);
		error = FUNC5(sc, temp << 9, mask9);
		if (error) {
			break;
		}
		error = FUNC3(sc, 10,
		    (1UL << 1) | (0xfUL << 2) | (3UL << 7) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC16(sc);

		break;

	case SC_WRITE_12:
		sc->sc_transfer.cmd_dir = DIR_READ;
		temp = FUNC2(&sc->sc_cbw->CBWCDB[6]);
		if (temp > (mask9 >> 9)) {
			/* numerical overflow */
			sc->sc_csw->bCSWStatus = CSWSTATUS_FAILED;
			error = 1;
			break;
		}
		error = FUNC5(sc, temp << 9, mask9);
		if (error) {
			break;
		}
		error = FUNC3(sc, 12,
		    (1UL << 1) | (0xfUL << 2) | (0xfUL << 6) | 1, 1);
		if (error) {
			break;
		}
		error = FUNC16(sc);

		break;

		/*
		 * Some mandatory commands that we recognize but don't
		 * implement.  They don't mean much in this setting.
		 * It's left as an exercise for anyone interested to
		 * implement RESERVE and RELEASE in terms of Posix
		 * locks.
		 */
	case SC_FORMAT_UNIT:
	case SC_RELEASE:
	case SC_RESERVE:
	case SC_SEND_DIAGNOSTIC:
		/* Fallthrough */

	default:
		error = FUNC5(sc, 0, -1U);
		if (error) {
			break;
		}
		error = FUNC3(sc, sc->sc_transfer.cmd_len,
		    0xff, 0);
		if (error) {
			break;
		}
		sc->sc_transfer.currlun->sense_data =
		    SS_INVALID_COMMAND;
		error = 1;

		break;
	}
	return (error);
}