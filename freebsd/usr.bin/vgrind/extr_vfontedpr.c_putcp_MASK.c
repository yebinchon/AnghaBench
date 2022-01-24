__attribute__((used)) static void
FUNC0(register int c)
{

	switch(c) {

	case 0:
		break;

	case '\f':
		break;

	case '\r':
		break;

	case '{':
		FUNC0("\\*(+K{\\*(-K");
		break;

	case '}':
		FUNC0("\\*(+K}\\*(-K");
		break;

	case '\\':
		FUNC0("\\e");
		break;

	case '_':
		FUNC0("\\*_");
		break;

	case '-':
		FUNC0("\\*-");
		break;

	case '`':
		FUNC0("\\`");
		break;

	case '\'':
		FUNC0("\\'");
		break;

	case '.':
		FUNC0("\\&.");
		break;

	case '*':
		FUNC0("\\fI*\\fP");
		break;

	case '/':
		FUNC0("\\fI\\h'\\w' 'u-\\w'/'u'/\\fP");
		break;

	default:
		if (c < 040)
			FUNC0('^'), c |= '@';
	case '\t':
	case '\n':
		FUNC0(c);
	}
}