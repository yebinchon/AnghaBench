long
FUNC0(volatile const void *addr)
{
	long val;
	int rv;

	rv = FUNC0(addr, &val);
	return (rv == -1 ? -1 : val);
}