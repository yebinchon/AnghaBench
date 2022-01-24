__attribute__((used)) static const char *
FUNC0(int status)
{
	static char c[128];
	char b[32];
	int first;

	c[0] = '\0';
	first = 1;
	if (FUNC0(status)) {
		first = 0;
		strlcat(c, "CONT", sizeof(c));
	}
	if (FUNC0(status)) {
		if (first)
			first = 0;
		else
			FUNC0(c, ",", sizeof(c));
		snprintf(b, sizeof(b), "EXIT(%d)", FUNC0(status));
		FUNC0(c, b, sizeof(c));
	}
	if (FUNC0(status)) {
		if (first)
			first = 0;
		else
			FUNC0(c, ",", sizeof(c));
		FUNC0(b, sizeof(b), "SIG(%d)", FUNC0(FUNC0(status)));
		FUNC0(c, b, sizeof(c));
		if (FUNC0(status))
			FUNC0(c, ",CORE", sizeof(c));
	}
	if (FUNC0(status)) {
		if (first)
			first = 0;
		else
			FUNC0(c, ",", sizeof(c));
		FUNC0(b, sizeof(b), "SIG(%d)", FUNC0(FUNC0(status)));
		FUNC0(c, b, sizeof(c));
	}
	return (c);
}