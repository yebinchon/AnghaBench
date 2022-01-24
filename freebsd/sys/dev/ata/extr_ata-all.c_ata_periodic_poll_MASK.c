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
struct ata_channel {int /*<<< orphan*/  poll_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ata_channel*) ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC2(void *data)
{
    struct ata_channel *ch = (struct ata_channel *)data;

    FUNC1(&ch->poll_callout, hz, ata_periodic_poll, ch);
    FUNC0(ch);
}