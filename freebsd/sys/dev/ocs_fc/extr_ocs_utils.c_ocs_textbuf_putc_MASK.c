#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  segment_list; } ;
typedef  TYPE_1__ ocs_textbuf_t ;
struct TYPE_9__ {int /*<<< orphan*/  buffer_written; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_2__ ocs_textbuf_segment_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(ocs_textbuf_t *textbuf, uint8_t c)
{
	ocs_textbuf_segment_t *segment;

	if (FUNC2(textbuf)) {
		segment = FUNC0(&textbuf->segment_list);

		if (FUNC1(segment)) {
			*(segment->buffer + segment->buffer_written++) = c;
		}
		if (FUNC1(segment) == 0) {
			FUNC3(textbuf);
		}
	}
}