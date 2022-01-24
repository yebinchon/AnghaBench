#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct twsi_softc {int control_val; size_t sent_bytes; int recv_bytes; scalar_t__ transfer; int /*<<< orphan*/  dev; int /*<<< orphan*/  reg_control; scalar_t__ need_ack; void* error; TYPE_1__* msg; int /*<<< orphan*/  reg_data; int /*<<< orphan*/  reg_status; } ;
struct TYPE_2__ {int flags; int slave; int* buf; int len; } ;

/* Variables and functions */
 void* ENXIO ; 
 void* ETIMEDOUT ; 
 int IIC_M_NOSTOP ; 
 int IIC_M_RD ; 
 int LSB ; 
 int TWSI_CONTROL_ACK ; 
 int TWSI_CONTROL_IFLG ; 
 int TWSI_CONTROL_INTEN ; 
 int TWSI_CONTROL_STOP ; 
 int FUNC0 (struct twsi_softc*,int /*<<< orphan*/ ) ; 
#define  TWSI_STATUS_ADDR_R_ACK 136 
#define  TWSI_STATUS_ADDR_R_NACK 135 
#define  TWSI_STATUS_ADDR_W_ACK 134 
#define  TWSI_STATUS_ADDR_W_NACK 133 
#define  TWSI_STATUS_DATA_RD_ACK 132 
#define  TWSI_STATUS_DATA_RD_NOACK 131 
#define  TWSI_STATUS_DATA_WR_ACK 130 
#define  TWSI_STATUS_RPTD_START 129 
#define  TWSI_STATUS_START 128 
 int /*<<< orphan*/  FUNC1 (struct twsi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct twsi_softc*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct twsi_softc *sc;
	uint32_t status;
	int transfer_done = 0;

	sc = arg;

	FUNC2(sc->dev, "Got interrupt\n");

	while (FUNC0(sc, sc->reg_control) & TWSI_CONTROL_IFLG) {
		status = FUNC0(sc, sc->reg_status);
		FUNC2(sc->dev, "status=%x\n", status);

		switch (status) {
		case TWSI_STATUS_START:
		case TWSI_STATUS_RPTD_START:
			/* Transmit the address */
			FUNC2(sc->dev, "Send the address\n");

			if (sc->msg->flags & IIC_M_RD)
				FUNC1(sc, sc->reg_data,
				    sc->msg->slave | LSB);
			else
				FUNC1(sc, sc->reg_data,
				    sc->msg->slave & ~LSB);

			FUNC1(sc, sc->reg_control, sc->control_val);
			break;

		case TWSI_STATUS_ADDR_W_ACK:
			FUNC2(sc->dev, "Ack received after transmitting the address\n");
			/* Directly send the first byte */
			sc->sent_bytes = 0;
			FUNC2(sc->dev, "Sending byte 0 = %x\n", sc->msg->buf[0]);
			FUNC1(sc, sc->reg_data, sc->msg->buf[0]);

			FUNC1(sc, sc->reg_control, sc->control_val);
			break;

		case TWSI_STATUS_ADDR_R_ACK:
			FUNC2(sc->dev, "Ack received after transmitting the address\n");
			sc->recv_bytes = 0;

			FUNC1(sc, sc->reg_control, sc->control_val);
			break;

		case TWSI_STATUS_ADDR_W_NACK:
		case TWSI_STATUS_ADDR_R_NACK:
			FUNC2(sc->dev, "No ack received after transmitting the address\n");
			sc->transfer = 0;
			sc->error = ETIMEDOUT;
			sc->control_val = 0;
			FUNC3(sc);
			break;

		case TWSI_STATUS_DATA_WR_ACK:
			FUNC2(sc->dev, "Ack received after transmitting data\n");
			if (sc->sent_bytes++ == (sc->msg->len - 1)) {
				FUNC2(sc->dev, "Done sending all the bytes\n");
				/* Send stop, no interrupts on stop */
				if (!(sc->msg->flags & IIC_M_NOSTOP)) {
					FUNC2(sc->dev, "Done TX data, send stop\n");
					FUNC1(sc, sc->reg_control,
					  sc->control_val | TWSI_CONTROL_STOP);
				} else {
					sc->control_val &= ~TWSI_CONTROL_INTEN;
					FUNC1(sc, sc->reg_control,
					    sc->control_val);
				}
				transfer_done = 1;
			} else {
				FUNC2(sc->dev, "Sending byte %d = %x\n",
				    sc->sent_bytes,
				    sc->msg->buf[sc->sent_bytes]);
				FUNC1(sc, sc->reg_data,
				    sc->msg->buf[sc->sent_bytes]);
				FUNC1(sc, sc->reg_control,
				    sc->control_val);
			}

			break;
		case TWSI_STATUS_DATA_RD_ACK:
			FUNC2(sc->dev, "Ack received after receiving data\n");
			FUNC2(sc->dev, "msg_len=%d recv_bytes=%d\n", sc->msg->len, sc->recv_bytes);
			sc->msg->buf[sc->recv_bytes++] = FUNC0(sc, sc->reg_data);

			/* If we only have one byte left, disable ACK */
			if (sc->msg->len - sc->recv_bytes == 1)
				sc->control_val &= ~TWSI_CONTROL_ACK;
			FUNC1(sc, sc->reg_control, sc->control_val);
			break;

		case TWSI_STATUS_DATA_RD_NOACK:
			if (sc->msg->len - sc->recv_bytes == 1) {
				sc->msg->buf[sc->recv_bytes++] = FUNC0(sc, sc->reg_data);
				FUNC2(sc->dev, "Done RX data, send stop (2)\n");
				if (!(sc->msg->flags & IIC_M_NOSTOP))
					FUNC1(sc, sc->reg_control,
					  sc->control_val | TWSI_CONTROL_STOP);
			} else {
				FUNC2(sc->dev, "No ack when receiving data\n");
				sc->error = ENXIO;
				sc->control_val = 0;
			}
			sc->transfer = 0;
			transfer_done = 1;
			break;

		default:
			FUNC2(sc->dev, "status=%x hot handled\n", status);
			sc->transfer = 0;
			sc->error = ENXIO;
			sc->control_val = 0;
			FUNC3(sc);
			break;
		}

		if (sc->need_ack)
			FUNC1(sc, sc->reg_control,
			    sc->control_val | TWSI_CONTROL_IFLG);
	}

	FUNC2(sc->dev, "Done with interrupts\n");
	if (transfer_done == 1) {
		sc->transfer = 0;
		FUNC3(sc);
	}
}