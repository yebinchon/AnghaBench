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
typedef  void* uint16_t ;
struct uinput_cdev_state {size_t ucs_buffer_head; int ucs_buffer_tail; TYPE_1__* ucs_buffer; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  value; void* code; void* type; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int UINPUT_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct uinput_cdev_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct uinput_cdev_state*,char*,struct uinput_cdev_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct uinput_cdev_state *state, uint16_t type,
    uint16_t code, int32_t value)
{
	size_t head, tail;

	FUNC0(state);

	head = state->ucs_buffer_head;
	tail = (state->ucs_buffer_tail + 1) % UINPUT_BUFFER_SIZE;

	FUNC2(&state->ucs_buffer[tail].time);
	state->ucs_buffer[tail].type = type;
	state->ucs_buffer[tail].code = code;
	state->ucs_buffer[tail].value = value;
	state->ucs_buffer_tail = tail;

	/* If queue is full remove oldest event */
	if (tail == head) {
		FUNC1(state, "state %p: buffer overflow", state);

		head = (head + 1) % UINPUT_BUFFER_SIZE;
		state->ucs_buffer_head = head;
	}
}