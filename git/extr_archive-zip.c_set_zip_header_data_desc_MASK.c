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
struct zip_local_header {int /*<<< orphan*/  size; int /*<<< orphan*/  compressed_size; int /*<<< orphan*/  crc32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct zip_local_header *header,
				     unsigned long size,
				     unsigned long compressed_size,
				     unsigned long crc)
{
	FUNC0(header->crc32, crc);
	FUNC0(header->compressed_size, compressed_size);
	FUNC0(header->size, size);
}