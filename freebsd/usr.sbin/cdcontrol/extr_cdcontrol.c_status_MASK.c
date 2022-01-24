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
typedef  int u_char ;
struct ioc_read_subchannel {int data_len; struct cd_sub_channel_info* data; int /*<<< orphan*/  data_format; int /*<<< orphan*/  address_format; } ;
struct TYPE_10__ {int audio_status; } ;
struct TYPE_6__ {int minute; int second; int frame; } ;
struct TYPE_7__ {int /*<<< orphan*/  lba; TYPE_1__ msf; } ;
struct TYPE_8__ {int track_number; TYPE_2__ reladdr; } ;
struct TYPE_9__ {TYPE_3__ position; } ;
struct cd_sub_channel_info {TYPE_5__ header; TYPE_4__ what; } ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  CDIOCREADSUBCHANNEL ; 
 int /*<<< orphan*/  CD_CURRENT_POSITION ; 
 int /*<<< orphan*/  CD_LBA_FORMAT ; 
 int /*<<< orphan*/  CD_MSF_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct ioc_read_subchannel*,int) ; 
 int /*<<< orphan*/  fd ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 scalar_t__ msf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(int *trk, int *min, int *sec, int *frame)
{
	struct ioc_read_subchannel s;
	struct cd_sub_channel_info data;
	u_char mm, ss, ff;

	FUNC0 (&s, sizeof (s));
	s.data = &data;
	s.data_len = sizeof (data);
	s.address_format = msf ? CD_MSF_FORMAT : CD_LBA_FORMAT;
	s.data_format = CD_CURRENT_POSITION;

	if (FUNC1 (fd, CDIOCREADSUBCHANNEL, (char *) &s) < 0)
		return -1;

	*trk = s.data->what.position.track_number;
	if (msf) {
		*min = s.data->what.position.reladdr.msf.minute;
		*sec = s.data->what.position.reladdr.msf.second;
		*frame = s.data->what.position.reladdr.msf.frame;
	} else {
		FUNC2(FUNC3(s.data->what.position.reladdr.lba),
			&mm, &ss, &ff);
		*min = mm;
		*sec = ss;
		*frame = ff;
	}

	return s.data->header.audio_status;
}