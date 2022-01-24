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
struct pe_optional_header_32 {int po_magic; } ;
struct executable {scalar_t__ x_buf; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
#define  PE_OPTIONAL_MAGIC_32 129 
#define  PE_OPTIONAL_MAGIC_32_PLUS 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 void FUNC1 (struct executable*,scalar_t__,int) ; 
 void FUNC2 (struct executable*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct executable*,scalar_t__,int,char*) ; 

__attribute__((used)) static void
FUNC4(struct executable *x, off_t off, int number_of_sections)
{
	const struct pe_optional_header_32 *po;

	//printf("Optional header offset %zd\n", off);

	FUNC3(x, off, sizeof(*po), "PE Optional Header");

	po = (struct pe_optional_header_32 *)(x->x_buf + off);

	switch (po->po_magic) {
	case PE_OPTIONAL_MAGIC_32:
		return (FUNC1(x, off, number_of_sections));
	case PE_OPTIONAL_MAGIC_32_PLUS:
		return (FUNC2(x, off, number_of_sections));
	default:
		FUNC0(1, "wrong PE Optional Header magic 0x%x", po->po_magic);
	}
}