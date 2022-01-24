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
typedef  int /*<<< orphan*/  u_char ;
struct iso_directory_record {char* length; char* ext_attr_length; char* flags; char* file_unit_size; char* interleave; char* volume_sequence_number; char* name_len; scalar_t__ name; scalar_t__ size; scalar_t__ extent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(unsigned char* buf)
{
	FUNC3("<directoryrecord>\n");
	FUNC0("length",
	    ((struct iso_directory_record*) buf)->length, 711);
	FUNC0("ext_attr_length",
	    ((struct iso_directory_record*) buf)->ext_attr_length,711);
	FUNC0("extent",
	    (char *)((struct iso_directory_record*) buf)->extent, 733);
	FUNC0("size",
	    (char *)((struct iso_directory_record*) buf)->size, 733);
	FUNC0("flags",
	    ((struct iso_directory_record*) buf)->flags, 711);
	FUNC0("file_unit_size",
	    ((struct iso_directory_record*) buf)->file_unit_size,711);
	FUNC0("interleave",
	    ((struct iso_directory_record*) buf)->interleave, 711);
	FUNC0("volume_sequence_number",
	    ((struct iso_directory_record*) buf)->volume_sequence_number,
	    723);
	FUNC0("name_len",
	    ((struct iso_directory_record*) buf)->name_len, 711);
	FUNC1("name",
	    (u_char *)((struct iso_directory_record*) buf)->name,
		FUNC2((u_char *)
		    ((struct iso_directory_record*) buf)->length, 711));
	FUNC3("</directoryrecord>\n");
}