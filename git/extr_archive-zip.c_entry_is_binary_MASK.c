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
struct userdiff_driver {int binary; } ;
struct index_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (void const*,size_t) ; 
 struct userdiff_driver* FUNC1 (char*) ; 
 struct userdiff_driver* FUNC2 (struct index_state*,char const*) ; 

__attribute__((used)) static int FUNC3(struct index_state *istate, const char *path,
			   const void *buffer, size_t size)
{
	struct userdiff_driver *driver = FUNC2(istate, path);
	if (!driver)
		driver = FUNC1("default");
	if (driver->binary != -1)
		return driver->binary;
	return FUNC0(buffer, size);
}