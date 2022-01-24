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
struct g_consumer {int dummy; } ;
typedef  int /*<<< orphan*/  serial_buffer ;

/* Variables and functions */
 int DISK_IDENT_SIZE ; 
 int FUNC0 (char*,struct g_consumer*,int*,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct g_consumer *cp, char *serial, int serlen)
{
	char serial_buffer[DISK_IDENT_SIZE];
	int len, error;
	
	len = sizeof(serial_buffer);
	error = FUNC0("GEOM::ident", cp, &len, serial_buffer);
	if (error != 0)
		return (error);
	len = FUNC1(serial_buffer);
	if (len > serlen)
		len -= serlen;
	else
		len = 0;
	FUNC2(serial, serial_buffer + len, serlen);
	return (0);
}