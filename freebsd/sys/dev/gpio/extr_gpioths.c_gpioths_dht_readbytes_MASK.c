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
typedef  int /*<<< orphan*/  value ;
typedef  int uint8_t ;
typedef  int uint32_t ;
struct gpioths_softc {int fails; int temp; int hum; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  crc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GPIOTHS_DHT_CYCLES ; 
 int GPIOTHS_DHT_HUM_SHIFT ; 
 int GPIOTHS_DHT_ONEBYTEMASK ; 
 int GPIOTHS_DHT_TEMP_SHIFT ; 
 int /*<<< orphan*/  GPIO_PIN_HIGH ; 
 int /*<<< orphan*/  GPIO_PIN_LOW ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 struct gpioths_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC6(device_t bus, device_t dev)
{
	struct gpioths_softc	*sc;
	uint32_t		 calibrations[GPIOTHS_DHT_CYCLES];
	uint32_t		 intervals[GPIOTHS_DHT_CYCLES];
	uint32_t		 err, avglen, value;
	uint8_t			 crc, calc;
	int			 i, offset, size;

	sc = FUNC2(dev);

	err = FUNC4(bus,dev);
	if (err) {
		FUNC3(dev, "gpioths_dht_initread error = %d\n", err);
		goto error;
	}

	err = FUNC5(bus, dev, GPIO_PIN_LOW, NULL);
	if (err) {
		FUNC3(dev, "err(START) = %d\n", err);
		goto error;
	}

	/* reading - 41 cycles */
	for (i = 0; i < GPIOTHS_DHT_CYCLES; i++) {
		err = FUNC5(bus, dev, GPIO_PIN_HIGH,
		          &calibrations[i]);
		if (err) {
			FUNC3(dev, "err(CAL, %d) = %d\n", i, err);
			goto error;
		}
		err = FUNC5(bus, dev, GPIO_PIN_LOW,
			  &intervals[i]);
		if (err) {
			FUNC3(dev, "err(INTERVAL, %d) = %d\n", i, err);
			goto error;
		}
	}

	err = FUNC1(bus, dev, 0, GPIO_PIN_OUTPUT);
	if (err != 0) {
		FUNC3(dev, "err(FINAL_SETFLAGS, OUT) = %d\n", err);
		goto error;
	}
	FUNC0(1);

	/* Calculate average data calibration cycle length */
	avglen = 0;
	for (i = 1; i < GPIOTHS_DHT_CYCLES; i++)
		avglen += calibrations[i];

	avglen = avglen / (GPIOTHS_DHT_CYCLES - 1);

	/* Calculate data */
	value = 0;
	offset = 1;
	size = sizeof(value) * 8;
	for (i = offset; i < size + offset; i++) {
		value <<= 1;
		if (intervals[i] > avglen)
			value += 1;
	}

	/* Calculate CRC */
	crc = 0;
	offset = sizeof(value) * 8 + 1;
	size = sizeof(crc) * 8;
	for (i = offset;  i < size + offset; i++) {
		crc <<= 1;
		if (intervals[i] > avglen)
			crc += 1;
	}

	calc = 0;
	for (i = 0; i < sizeof(value); i++)
		calc += (value >> (8*i)) & GPIOTHS_DHT_ONEBYTEMASK;

#ifdef GPIOTHS_DEBUG
	/* Debug bits */
	for (i = 0; i < GPIOTHS_DHT_CYCLES; i++)
		device_printf(dev, "%d: %d %d\n", i, calibrations[i],
		    intervals[i]);

	device_printf(dev, "len=%d, data=%x, crc=%x/%x\n", avglen, value, crc,
	    calc);
#endif /* GPIOTHS_DEBUG */

	/* CRC check */
	if (calc != crc) {
		err = -1;
		goto error;
	}

	sc->fails = 0;
	sc->temp = (value >> GPIOTHS_DHT_TEMP_SHIFT) & GPIOTHS_DHT_ONEBYTEMASK;
	sc->hum = (value >> GPIOTHS_DHT_HUM_SHIFT) & GPIOTHS_DHT_ONEBYTEMASK;

#ifdef GPIOTHS_DEBUG
	/* Debug bits */
	device_printf(dev, "fails=%d, temp=%d, hum=%d\n", sc->fails,
	    sc->temp, sc->hum);
#endif /* GPIOTHS_DEBUG */

	return (0);
error:
	sc->fails++;
	return (err);
}