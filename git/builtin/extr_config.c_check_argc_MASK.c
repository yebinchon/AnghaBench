__attribute__((used)) static void FUNC0(int argc, int min, int max)
{
	if (argc >= min && argc <= max)
		return;
	if (min == max)
		FUNC0(FUNC0("wrong number of arguments, should be %d"), min);
	else
		FUNC0(FUNC0("wrong number of arguments, should be from %d to %d"),
		      min, max);
	FUNC0();
}