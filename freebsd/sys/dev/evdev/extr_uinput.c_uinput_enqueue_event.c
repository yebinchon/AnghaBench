
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct uinput_cdev_state {size_t ucs_buffer_head; int ucs_buffer_tail; TYPE_1__* ucs_buffer; } ;
typedef int int32_t ;
struct TYPE_2__ {int value; void* code; void* type; int time; } ;


 int UINPUT_BUFFER_SIZE ;
 int UINPUT_LOCK_ASSERT (struct uinput_cdev_state*) ;
 int debugf (struct uinput_cdev_state*,char*,struct uinput_cdev_state*) ;
 int microtime (int *) ;

__attribute__((used)) static void
uinput_enqueue_event(struct uinput_cdev_state *state, uint16_t type,
    uint16_t code, int32_t value)
{
 size_t head, tail;

 UINPUT_LOCK_ASSERT(state);

 head = state->ucs_buffer_head;
 tail = (state->ucs_buffer_tail + 1) % UINPUT_BUFFER_SIZE;

 microtime(&state->ucs_buffer[tail].time);
 state->ucs_buffer[tail].type = type;
 state->ucs_buffer[tail].code = code;
 state->ucs_buffer[tail].value = value;
 state->ucs_buffer_tail = tail;


 if (tail == head) {
  debugf(state, "state %p: buffer overflow", state);

  head = (head + 1) % UINPUT_BUFFER_SIZE;
  state->ucs_buffer_head = head;
 }
}
