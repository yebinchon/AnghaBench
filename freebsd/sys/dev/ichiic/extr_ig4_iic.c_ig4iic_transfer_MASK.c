#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct iic_msg {int flags; scalar_t__ len; int slave; int /*<<< orphan*/  buf; } ;
struct TYPE_12__ {int last_slave; int /*<<< orphan*/  call_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  slave_valid; } ;
typedef  TYPE_1__ ig4iic_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IG4_INTR_STOP_DET ; 
 int /*<<< orphan*/  IG4_REG_CLR_INTR ; 
 int /*<<< orphan*/  IG4_REG_CLR_TX_ABORT ; 
 int /*<<< orphan*/  IG4_REG_DATA_CMD ; 
 int /*<<< orphan*/  IG4_REG_I2C_STA ; 
 int /*<<< orphan*/  IG4_REG_TX_ABRT_SOURCE ; 
 int IG4_STATUS_RX_NOTEMPTY ; 
 int IIC_ENOTSUPP ; 
 int IIC_M_NOSTART ; 
 int IIC_M_NOSTOP ; 
 int IIC_M_RD ; 
 scalar_t__ bootverbose ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int ig4_dump ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC15(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	ig4iic_softc_t *sc = FUNC0(dev);
	const char *reason = NULL;
	uint32_t i;
	int error;
	int unit;
	bool rpstart;
	bool stop;
	bool allocated;

	/*
	 * The hardware interface imposes limits on allowed I2C messages.
	 * It is not possible to explicitly send a start or stop.
	 * They are automatically sent (or not sent, depending on the
	 * configuration) when a data byte is transferred.
	 * For this reason it's impossible to send a message with no data
	 * at all (like an SMBus quick message).
	 * The start condition is automatically generated after the stop
	 * condition, so it's impossible to not have a start after a stop.
	 * The repeated start condition is automatically sent if a change
	 * of the transfer direction happens, so it's impossible to have
	 * a change of direction without a (repeated) start.
	 * The repeated start can be forced even without the change of
	 * direction.
	 * Changing the target slave address requires resetting the hardware
	 * state, so it's impossible to do that without the stop followed
	 * by the start.
	 */
	for (i = 0; i < nmsgs; i++) {
#if 0
		if (i == 0 && (msgs[i].flags & IIC_M_NOSTART) != 0) {
			reason = "first message without start";
			break;
		}
		if (i == nmsgs - 1 && (msgs[i].flags & IIC_M_NOSTOP) != 0) {
			reason = "last message without stop";
			break;
		}
#endif
		if (msgs[i].len == 0) {
			reason = "message with no data";
			break;
		}
		if (i > 0) {
			if ((msgs[i].flags & IIC_M_NOSTART) != 0 &&
			    (msgs[i - 1].flags & IIC_M_NOSTOP) == 0) {
				reason = "stop not followed by start";
				break;
			}
			if ((msgs[i - 1].flags & IIC_M_NOSTOP) != 0 &&
			    msgs[i].slave != msgs[i - 1].slave) {
				reason = "change of slave without stop";
				break;
			}
			if ((msgs[i].flags & IIC_M_NOSTART) != 0 &&
			    (msgs[i].flags & IIC_M_RD) !=
			    (msgs[i - 1].flags & IIC_M_RD)) {
				reason = "change of direction without repeated"
				    " start";
				break;
			}
		}
	}
	if (reason != NULL) {
		if (bootverbose)
			FUNC2(dev, "%s\n", reason);
		return (IIC_ENOTSUPP);
	}

	/* Check if device is already allocated with iicbus_request_bus() */
	allocated = FUNC13(&sc->call_lock) != 0;
	if (!allocated)
		FUNC12(&sc->call_lock);

	/* Debugging - dump registers. */
	if (ig4_dump) {
		unit = FUNC1(dev);
		if (ig4_dump & (1 << unit)) {
			ig4_dump &= ~(1 << unit);
			FUNC3(sc);
		}
	}

	/*
	 * Clear any previous abort condition that may have been holding
	 * the txfifo in reset.
	 */
	FUNC10(sc, IG4_REG_CLR_TX_ABORT);

	rpstart = false;
	error = 0;
	for (i = 0; i < nmsgs; i++) {
		if ((msgs[i].flags & IIC_M_NOSTART) == 0) {
			error = FUNC9(sc, msgs[i].slave, rpstart);
		} else {
			if (!sc->slave_valid ||
			    (msgs[i].slave >> 1) != sc->last_slave) {
				FUNC2(dev, "start condition suppressed"
				    "but slave address is not set up");
				error = EINVAL;
				break;
			}
			rpstart = false;
		}
		if (error != 0)
			break;

		stop = (msgs[i].flags & IIC_M_NOSTOP) == 0;
		if (msgs[i].flags & IIC_M_RD)
			error = FUNC4(sc, msgs[i].buf, msgs[i].len,
			    rpstart, stop);
		else
			error = FUNC6(sc, msgs[i].buf, msgs[i].len,
			    rpstart, stop);

		/* Wait for error or stop condition occurred on the I2C bus */
		if (stop && error == 0) {
			error = FUNC14(sc, IG4_INTR_STOP_DET);
			if (error == 0)
				FUNC10(sc, IG4_REG_CLR_INTR);
		}

		if (error != 0) {
			/*
			 * Send STOP condition if it's not done yet and flush
			 * both FIFOs. Do a controller soft reset if transfer
			 * abort is failed.
			 */
			if (FUNC8(sc) &&
			    FUNC7(sc) != 0) {
				FUNC2(sc->dev, "Failed to abort "
				    "transfer. Do the controller reset.\n");
				FUNC5(sc, true);
			} else {
				while (FUNC10(sc, IG4_REG_I2C_STA) &
				    IG4_STATUS_RX_NOTEMPTY)
					FUNC10(sc, IG4_REG_DATA_CMD);
				FUNC10(sc, IG4_REG_TX_ABRT_SOURCE);
				FUNC10(sc, IG4_REG_CLR_INTR);
			}
			break;
		}

		rpstart = !stop;
	}

	if (!allocated)
		FUNC11(&sc->call_lock);
	return (error);
}