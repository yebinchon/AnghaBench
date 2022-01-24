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
struct pe_section_header {scalar_t__ psh_pointer_to_raw_data; int psh_size_of_raw_data; } ;
struct executable {scalar_t__ x_headers_len; scalar_t__ x_buf; int x_nsections; int* x_section_off; int* x_section_len; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int MAX_SECTIONS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct executable*,scalar_t__,int,char*) ; 

__attribute__((used)) static void
FUNC3(struct executable *x, off_t off, int number_of_sections)
{
	const struct pe_section_header *psh;
	int i;

	FUNC2(x, off, sizeof(*psh) * number_of_sections,
	    "section table");

	if (x->x_headers_len <= off + sizeof(*psh) * number_of_sections)
		FUNC0(1, "section table outside of headers");

	psh = (const struct pe_section_header *)(x->x_buf + off);

	if (number_of_sections >= MAX_SECTIONS) {
		FUNC0(1, "too many sections: got %d, should be %d",
		    number_of_sections, MAX_SECTIONS);
	}
	x->x_nsections = number_of_sections;

	for (i = 0; i < number_of_sections; i++) {
		if (psh->psh_pointer_to_raw_data < x->x_headers_len)
			FUNC0(1, "section points inside the headers");

		FUNC2(x, psh->psh_pointer_to_raw_data,
		    psh->psh_size_of_raw_data, "section");
#if 0
		printf("section %d: start %d, size %d\n",
		    i, psh->psh_pointer_to_raw_data, psh->psh_size_of_raw_data);
#endif
		x->x_section_off[i] = psh->psh_pointer_to_raw_data;
		x->x_section_len[i] = psh->psh_size_of_raw_data;
		psh++;
	}
}