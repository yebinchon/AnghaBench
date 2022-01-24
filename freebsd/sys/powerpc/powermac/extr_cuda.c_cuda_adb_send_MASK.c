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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct cuda_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CUDA_ADB ; 
 int /*<<< orphan*/  FUNC0 (struct cuda_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct cuda_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC2(device_t dev, u_char command_byte, int len, u_char *data, 
    u_char poll)
{
	struct cuda_softc *sc = FUNC1(dev);
	uint8_t packet[16];
	int i;

	/* construct an ADB command packet and send it */
	packet[0] = CUDA_ADB;
	packet[1] = command_byte;
	for (i = 0; i < len; i++)
		packet[i + 2] = data[i];

	FUNC0(sc, poll, len + 2, packet);

	return (0);
}