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
typedef  size_t u_int ;
struct uart_class {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct uart_class**) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 
 struct uart_class** uart_classes ; 
 char* FUNC3 (struct uart_class*) ; 

__attribute__((used)) static struct uart_class *
FUNC4(struct uart_class *class, const char **p)
{
	struct uart_class *uc;
	const char *nm;
	size_t len;
	u_int i;

	for (i = 0; i < FUNC0(uart_classes); i++) {
		uc = uart_classes[i];
		nm = FUNC3(uc);
		if (nm == NULL || *nm == '\0')
			continue;
		len = FUNC1(nm);
		if (FUNC2(nm, *p, len) == 0) {
			*p += len;
			return (uc);
		}
	}
	return (class);
}