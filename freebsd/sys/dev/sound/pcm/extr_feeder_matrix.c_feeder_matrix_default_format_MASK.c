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
typedef  scalar_t__ uint32_t ;
struct pcmchan_matrix {scalar_t__ ext; } ;
struct TYPE_2__ {scalar_t__ channels; scalar_t__ ext; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ SND_CHN_MATRIX_BEGIN ; 
 scalar_t__ SND_CHN_MATRIX_END ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 struct pcmchan_matrix* FUNC3 (scalar_t__) ; 
 TYPE_1__* feeder_matrix_maps ; 

uint32_t
FUNC4(uint32_t format)
{
	struct pcmchan_matrix *m;
	uint32_t i, ch, ext;

	ch = FUNC0(format);
	ext = FUNC1(format);

	if (ext != 0) {
		for (i = SND_CHN_MATRIX_BEGIN; i <= SND_CHN_MATRIX_END; i++) {
			if (feeder_matrix_maps[i].channels == ch &&
			    feeder_matrix_maps[i].ext == ext)
			return (FUNC2(format, ch, ext));
		}
	}

	m = FUNC3(ch);
	if (m == NULL)
		return (0x00000000);

	return (FUNC2(format, ch, m->ext));
}