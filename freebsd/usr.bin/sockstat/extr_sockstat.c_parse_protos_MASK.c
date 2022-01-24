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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int numprotos ; 
 int* protos ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static int
FUNC4(char *protospec)
{
	char *prot;
	int proto_type, proto_index;

	if (protospec == NULL)
		return (-1);

	FUNC1(0);
	proto_index = 0;
	while ((prot = FUNC3(&protospec, ",")) != NULL) {
		if (FUNC2(prot) == 0)
			continue;
		proto_type = FUNC0(prot);
		if (proto_type != -1)
			protos[proto_index++] = proto_type;
	}
	numprotos = proto_index;
	return (proto_index);
}