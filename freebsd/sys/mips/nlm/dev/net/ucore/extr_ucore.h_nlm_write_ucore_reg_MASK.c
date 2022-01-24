__attribute__((used)) static __inline void
FUNC0(int reg, unsigned int val)
{
	volatile unsigned int *addr = (volatile void *)reg;

	*addr = val;
}