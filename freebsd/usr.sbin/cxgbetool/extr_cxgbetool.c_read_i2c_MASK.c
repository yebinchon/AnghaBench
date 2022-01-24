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
struct t4_i2c_data {long port_id; long dev_addr; long offset; long len; int* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_GET_I2C ; 
 int EINVAL ; 
 long UCHAR_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,struct t4_i2c_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 char* FUNC2 (char const*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int
FUNC4(int argc, const char *argv[])
{
	char *p;
	long l;
	struct t4_i2c_data i2cd;
	int rc, i;

	if (argc < 3 || argc > 4) {
		FUNC3("incorrect number of arguments.");
		return (EINVAL);
	}

	p = FUNC2(argv[0], &l, NULL);
	if (*p || l > UCHAR_MAX) {
		FUNC3("invalid port id \"%s\"", argv[0]);
		return (EINVAL);
	}
	i2cd.port_id = l;

	p = FUNC2(argv[1], &l, NULL);
	if (*p || l > UCHAR_MAX) {
		FUNC3("invalid i2c device address \"%s\"", argv[1]);
		return (EINVAL);
	}
	i2cd.dev_addr = l;

	p = FUNC2(argv[2], &l, NULL);
	if (*p || l > UCHAR_MAX) {
		FUNC3("invalid byte offset \"%s\"", argv[2]);
		return (EINVAL);
	}
	i2cd.offset = l;

	if (argc == 4) {
		p = FUNC2(argv[3], &l, NULL);
		if (*p || l > sizeof(i2cd.data)) {
			FUNC3("invalid number of bytes \"%s\"", argv[3]);
			return (EINVAL);
		}
		i2cd.len = l;
	} else
		i2cd.len = 1;

	rc = FUNC0(CHELSIO_T4_GET_I2C, &i2cd);
	if (rc != 0)
		return (rc);

	for (i = 0; i < i2cd.len; i++)
		FUNC1("0x%x [%u]\n", i2cd.data[i], i2cd.data[i]);

	return (0);
}