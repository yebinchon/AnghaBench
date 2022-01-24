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
typedef  int uint32_t ;
struct smuiic_softc {int sc_iic_inuse; int sc_busno; int /*<<< orphan*/  sc_mtx; } ;
struct smu_cmd {int* data; int len; void* cmd; } ;
struct iic_msg {int flags; int slave; int len; int* buf; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EIO ; 
 int IIC_M_NOSTOP ; 
 int IIC_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 void* SMU_I2C ; 
 int SMU_I2C_COMBINED ; 
 int SMU_I2C_SIMPLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct smuiic_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct smuiic_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct smu_cmd*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct smuiic_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	struct smuiic_softc *sc = FUNC2(dev);
	struct smu_cmd cmd;
	int i, j, error;

	FUNC6(&sc->sc_mtx);
	while (sc->sc_iic_inuse)
		FUNC7(sc, &sc->sc_mtx, 0, "smuiic", 100);

	sc->sc_iic_inuse = 1;
	error = 0;

	for (i = 0; i < nmsgs; i++) {
		cmd.cmd = SMU_I2C;
		cmd.data[0] = sc->sc_busno;
		if (msgs[i].flags & IIC_M_NOSTOP)
			cmd.data[1] = SMU_I2C_COMBINED;
		else
			cmd.data[1] = SMU_I2C_SIMPLE;

		cmd.data[2] = msgs[i].slave;
		if (msgs[i].flags & IIC_M_RD)
			cmd.data[2] |= 1; 

		if (msgs[i].flags & IIC_M_NOSTOP) {
			FUNC0(msgs[i].len < 4,
			    ("oversize I2C combined message"));

			cmd.data[3] = FUNC5(msgs[i].len, 3);
			FUNC3(&cmd.data[4], msgs[i].buf, FUNC5(msgs[i].len, 3));
			i++; /* Advance to next part of message */
		} else {
			cmd.data[3] = 0;
			FUNC4(&cmd.data[4], 0, 3);
		}

		cmd.data[7] = msgs[i].slave;
		if (msgs[i].flags & IIC_M_RD)
			cmd.data[7] |= 1; 

		cmd.data[8] = msgs[i].len;
		if (msgs[i].flags & IIC_M_RD) {
			FUNC4(&cmd.data[9], 0xff, msgs[i].len);
			cmd.len = 9;
		} else {
			FUNC3(&cmd.data[9], msgs[i].buf, msgs[i].len);
			cmd.len = 9 + msgs[i].len;
		}

		FUNC8(&sc->sc_mtx);
		FUNC9(FUNC1(dev), &cmd, 1);
		FUNC6(&sc->sc_mtx);

		for (j = 0; j < 10; j++) {
			cmd.cmd = SMU_I2C;
			cmd.len = 1;
			cmd.data[0] = 0;
			FUNC4(&cmd.data[1], 0xff, msgs[i].len);
			
			FUNC8(&sc->sc_mtx);
			FUNC9(FUNC1(dev), &cmd, 1);
			FUNC6(&sc->sc_mtx);
			
			if (!(cmd.data[0] & 0x80))
				break;

			FUNC7(sc, &sc->sc_mtx, 0, "smuiic", 10);
		}
		
		if (cmd.data[0] & 0x80) {
			error = EIO;
			msgs[i].len = 0;
			goto exit;
		}
		FUNC3(msgs[i].buf, &cmd.data[1], msgs[i].len);
		msgs[i].len = cmd.len - 1;
	}

    exit:
	sc->sc_iic_inuse = 0;
	FUNC8(&sc->sc_mtx);
	FUNC10(sc);
	return (error);
}