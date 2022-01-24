__attribute__((used)) static __inline unsigned int
FUNC0(int reg)
{
	volatile unsigned int *addr = (volatile void *)reg;

	return (*addr);
}