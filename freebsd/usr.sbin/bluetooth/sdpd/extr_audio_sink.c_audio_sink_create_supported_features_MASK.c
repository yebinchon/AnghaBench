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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* sdp_audio_sink_profile_p ;
typedef  TYPE_2__* provider_p ;
typedef  int int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDP_DATA_UINT16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int32_t
FUNC2(
    uint8_t *buf, uint8_t const *const eob,
    uint8_t const *data, uint32_t datalen)
{
	provider_p provider = (provider_p) data;
	sdp_audio_sink_profile_p audio_sink = (sdp_audio_sink_profile_p) provider->data;

	if (buf + 3 > eob)
		return (-1);

	FUNC1(SDP_DATA_UINT16, buf);
	FUNC0(audio_sink->features, buf);

	return (3);
}