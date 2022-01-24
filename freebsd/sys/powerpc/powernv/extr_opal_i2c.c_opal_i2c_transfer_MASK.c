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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct opal_i2c_softc {int /*<<< orphan*/  opal_id; } ;
struct opal_i2c_request {int /*<<< orphan*/  buffer_pa; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct iic_msg {int flags; int slave; scalar_t__ buf; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opal_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct opal_i2c_softc*) ; 
 int IIC_M_RD ; 
 int /*<<< orphan*/  OPAL_I2C_RAW_READ ; 
 int /*<<< orphan*/  OPAL_I2C_RAW_WRITE ; 
 struct opal_i2c_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct opal_i2c_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct opal_i2c_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	struct opal_i2c_softc *sc;
	int i, err = 0;
	struct opal_i2c_request req;

	sc = FUNC2(dev);

	FUNC7(&req, 0, sizeof(req));

	FUNC0(sc);
	for (i = 0; i < nmsgs; i++) {
		req.type = (msgs[i].flags & IIC_M_RD) ?
		    OPAL_I2C_RAW_READ : OPAL_I2C_RAW_WRITE;
		req.addr = FUNC3(msgs[i].slave >> 1);
		req.size = FUNC4(msgs[i].len);
		req.buffer_pa = FUNC5(FUNC8((uint64_t)msgs[i].buf));

		err = FUNC6(sc->opal_id, &req);
	}
	FUNC1(sc);

	return (err);
}