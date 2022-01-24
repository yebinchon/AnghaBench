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
struct sense_header_scsi {int response_code; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static inline boolean_t FUNC1(const struct sense_header_scsi *sshdr)
{
	FUNC0("IN\n");

	if (!sshdr)
		return false;

	FUNC0("OUT\n");

	return (sshdr->response_code & 0x70) == 0x70;
}