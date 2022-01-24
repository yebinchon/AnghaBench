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
struct packet_reader {scalar_t__ status; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 scalar_t__ PACKET_READ_FLUSH ; 
 scalar_t__ PACKET_READ_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct packet_reader*) ; 
 int /*<<< orphan*/  server_capabilities_v2 ; 

__attribute__((used)) static void FUNC4(struct packet_reader *reader)
{
	while (FUNC3(reader) == PACKET_READ_NORMAL)
		FUNC1(&server_capabilities_v2, reader->line);

	if (reader->status != PACKET_READ_FLUSH)
		FUNC2(FUNC0("expected flush after capabilities"));
}