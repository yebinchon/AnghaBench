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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int SDP_DATA_STR8 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

int32_t
FUNC2(
		uint8_t *buf, uint8_t const * const eob,
		uint8_t const *data, uint32_t datalen)
{
	if (datalen == 0 || datalen > 0xff || buf + 2 + datalen > eob)
		return (-1);

	FUNC0(SDP_DATA_STR8, buf);
	FUNC0(datalen, buf);
	FUNC1(buf, data, datalen);

	return (2 + datalen);
}