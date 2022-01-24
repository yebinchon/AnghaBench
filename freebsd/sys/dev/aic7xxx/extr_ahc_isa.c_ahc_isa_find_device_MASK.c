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
typedef  int uint32_t ;
typedef  int u_int ;
struct aic7770_identity {int dummy; } ;
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int CHAR_BIT ; 
 struct aic7770_identity* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct aic7770_identity *
FUNC3(bus_space_tag_t tag, bus_space_handle_t bsh) {
	uint32_t  id;
	u_int	  id_size;
	int	  i;

	id = 0;
	id_size = sizeof(id);
	for (i = 0; i < id_size; i++) {
		FUNC2(tag, bsh, 0x80, 0x80 + i);
		id |= FUNC1(tag, bsh, 0x80 + i)
		   << ((id_size - i - 1) * CHAR_BIT);
	}
                           
	return (FUNC0(id));
}