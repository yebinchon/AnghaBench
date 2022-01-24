#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {size_t len; size_t start; char* data; } ;

/* Variables and functions */
 TYPE_1__ cur_comm ; 
 TYPE_1__ cur_resp ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int* FUNC7 (int*,char,size_t) ; 
 int FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int stop_pending ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void
FUNC14(int fd)
{
	uint8_t *head, *hash, *p, sum;
	size_t avail, plen;

	for (;;) {
		avail = cur_comm.len;
		if (avail == 0)
			return;
		head = FUNC5(&cur_comm);
		switch (*head) {
		case 0x03:
			FUNC0("<- Ctrl-C\n");
			FUNC4(&cur_comm, 1);

			FUNC1();
			break;
		case '+':
			/* ACK of previous response. */
			FUNC0("<- +\n");
			if (FUNC10())
				FUNC6(&cur_resp);
			FUNC4(&cur_comm, 1);
			if (stop_pending) {
				stop_pending = false;
				FUNC9();
				FUNC12(fd);
			}
			break;
		case '-':
			/* NACK of previous response. */
			FUNC0("<- -\n");
			if (FUNC10()) {
				cur_resp.len += cur_resp.start;
				cur_resp.start = 0;
				if (cur_resp.data[0] == '+')
					FUNC3(&cur_resp, 1);
				FUNC0("-> %.*s\n", (int)cur_resp.len,
				    FUNC5(&cur_resp));
			}
			FUNC4(&cur_comm, 1);
			FUNC12(fd);
			break;
		case '$':
			/* Packet. */

			if (FUNC10()) {
				FUNC13("New GDB command while response in "
				    "progress");
				FUNC6(&cur_resp);
			}

			/* Is packet complete? */
			hash = FUNC7(head, '#', avail);
			if (hash == NULL)
				return;
			plen = (hash - head + 1) + 2;
			if (avail < plen)
				return;
			FUNC0("<- %.*s\n", (int)plen, head);

			/* Verify checksum. */
			for (sum = 0, p = head + 1; p < hash; p++)
				sum += *p;
			if (sum != FUNC8(hash + 1)) {
				FUNC4(&cur_comm, plen);
				FUNC0("-> -\n");
				FUNC11('-');
				FUNC12(fd);
				break;
			}
			FUNC11('+');

			FUNC2(head + 1, hash - (head + 1));
			FUNC4(&cur_comm, plen);
			if (!FUNC10())
				FUNC0("-> +\n");
			FUNC12(fd);
			break;
		default:
			/* XXX: Possibly drop connection instead. */
			FUNC0("-> %02x\n", *head);
			FUNC4(&cur_comm, 1);
			break;
		}
	}
}