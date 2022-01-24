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
struct iso_primary_descriptor {scalar_t__ file_structure_version; scalar_t__ effective_date; scalar_t__ expiration_date; scalar_t__ modification_date; scalar_t__ creation_date; scalar_t__ bibliographic_file_id; scalar_t__ abstract_file_id; scalar_t__ copyright_file_id; scalar_t__ application_id; scalar_t__ preparer_id; scalar_t__ publisher_id; scalar_t__ volume_set_id; scalar_t__ root_directory_record; int /*<<< orphan*/  opt_type_m_path_table; int /*<<< orphan*/  type_m_path_table; int /*<<< orphan*/  opt_type_l_path_table; int /*<<< orphan*/  type_l_path_table; int /*<<< orphan*/  path_table_size; int /*<<< orphan*/  logical_block_size; int /*<<< orphan*/  volume_sequence_number; int /*<<< orphan*/  volume_set_size; int /*<<< orphan*/  volume_space_size; scalar_t__ volume_id; scalar_t__ system_id; int /*<<< orphan*/  version; scalar_t__ id; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(unsigned char* buf, int sector)
{
	FUNC4("<volumedescriptor sector=\"%i\">\n", sector);
	FUNC4("<vdtype>");
	switch(buf[0]) {
	case 0:
		FUNC4("boot");
		break;

	case 1:
		FUNC4("primary");
		break;

	case 2:
		FUNC4("supplementary");
		break;

	case 3:
		FUNC4("volume partition descriptor");
		break;

	case 255:
		FUNC4("terminator");
		break;
	}

	FUNC4("</vdtype>\n");
	switch(buf[0]) {
	case 1:
		FUNC2("type",
		    ((struct iso_primary_descriptor*)buf)->type, 711);
		FUNC3("id",
		    (u_char *)((struct iso_primary_descriptor*) buf)->id,
		    FUNC0 (  2,   6));
		FUNC2("version",
		    ((struct iso_primary_descriptor*)buf)->version,
		     711);
		FUNC3("system_id",
		    (u_char *)((struct iso_primary_descriptor*)buf)->system_id,
		    FUNC0(9,40));
		FUNC3("volume_id",
		    (u_char *)((struct iso_primary_descriptor*)buf)->volume_id,
		    FUNC0(41,72));
		FUNC2("volume_space_size",
		    ((struct iso_primary_descriptor*)buf)->volume_space_size,
		    733);
		FUNC2("volume_set_size",
		    ((struct iso_primary_descriptor*)buf)->volume_set_size,
			    733);
		FUNC2("volume_sequence_number",
		    ((struct iso_primary_descriptor*)buf)->volume_sequence_number,
		    723);
		FUNC2("logical_block_size",
		    ((struct iso_primary_descriptor*)buf)->logical_block_size,
			    723);
		FUNC2("path_table_size",
		    ((struct iso_primary_descriptor*)buf)->path_table_size,
			    733);
		FUNC2("type_l_path_table",
		    ((struct iso_primary_descriptor*)buf)->type_l_path_table,
		    731);
		FUNC2("opt_type_l_path_table",
		    ((struct iso_primary_descriptor*)buf)->opt_type_l_path_table,
		    731);
		FUNC2("type_m_path_table",
		    ((struct iso_primary_descriptor*)buf)->type_m_path_table,
		    732);
		FUNC2("opt_type_m_path_table",
			((struct iso_primary_descriptor*)buf)->opt_type_m_path_table,732);
		FUNC1(
		    (u_char *)((struct iso_primary_descriptor*)buf)->root_directory_record);
		FUNC3("volume_set_id",
		    (u_char *)((struct iso_primary_descriptor*) buf)->volume_set_id,
		    FUNC0 (191, 318));
		FUNC3("publisher_id",
		    (u_char *)((struct iso_primary_descriptor*) buf)->publisher_id,
		    FUNC0 (319, 446));
		FUNC3("preparer_id",
		    (u_char *)((struct iso_primary_descriptor*) buf)->preparer_id,
		    FUNC0 (447, 574));
		FUNC3("application_id",
		    (u_char *)((struct iso_primary_descriptor*) buf)->application_id,
		    FUNC0 (575, 702));
		FUNC3("copyright_file_id",
		    (u_char *)((struct iso_primary_descriptor*) buf)->copyright_file_id,
		    FUNC0 (703, 739));
		FUNC3("abstract_file_id",
		    (u_char *)((struct iso_primary_descriptor*) buf)->abstract_file_id,
		    FUNC0 (740, 776));
		FUNC3("bibliographic_file_id",
		    (u_char *)((struct iso_primary_descriptor*) buf)->bibliographic_file_id,
		    FUNC0 (777, 813));

		FUNC3("creation_date",
		    (u_char *)((struct iso_primary_descriptor*) buf)->creation_date,
		    FUNC0 (814, 830));
		FUNC3("modification_date",
		    (u_char *)((struct iso_primary_descriptor*) buf)->modification_date,
		    FUNC0 (831, 847));
		FUNC3("expiration_date",
		    (u_char *)((struct iso_primary_descriptor*) buf)->expiration_date,
		    FUNC0 (848, 864));
		FUNC3("effective_date",
		    (u_char *)((struct iso_primary_descriptor*) buf)->effective_date,
		    FUNC0 (865, 881));

		FUNC3("file_structure_version",
		    (u_char *)((struct iso_primary_descriptor*) buf)->file_structure_version,
		    FUNC0(882,882));
		break;
	}
	FUNC4("</volumedescriptor>\n");
}