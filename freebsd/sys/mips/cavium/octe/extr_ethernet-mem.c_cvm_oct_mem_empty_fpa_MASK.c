void FUNC0(int pool, int size, int elements)
{
	char *memory;

	do {
		memory = FUNC0(pool);
		if (memory) {
			struct mbuf *m = *(struct mbuf **)(memory - sizeof(void *));
			elements--;
			FUNC0(m);
		}
	} while (memory);

	if (elements < 0)
		printf("Warning: Freeing of pool %u had too many mbufs (%d)\n", pool, elements);
	else if (elements > 0)
		FUNC0("Warning: Freeing of pool %u is missing %d mbufs\n", pool, elements);
}