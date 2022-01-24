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
struct nm_pcap_file {int /*<<< orphan*/  fd; int /*<<< orphan*/  filesize; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nm_pcap_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nm_pcap_file*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nm_pcap_file *pf)
{
    if (!pf)
	return;

    FUNC3((void *)(uintptr_t)pf->data, pf->filesize);
    FUNC1(pf->fd);
    FUNC0(pf, sizeof(*pf));
    FUNC2(pf);
    return;
}