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
struct cshape {int* shape; } ;

/* Variables and functions */
 int CONS_BLINK_CURSOR ; 
 int CONS_CHARCURSOR_COLORS ; 
 int CONS_CHAR_CURSOR ; 
 int CONS_DEFAULT_CURSOR ; 
 int CONS_HIDDEN_CURSOR ; 
 int CONS_LOCAL_CURSOR ; 
 int CONS_MOUSECURSOR_COLORS ; 
 int CONS_RESET_CURSOR ; 
 int CONS_SHAPEONLY_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char**,char*) ; 
 void* FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(char *param, struct cshape *shape)
{
	char *dupparam, *word;
	int type;

	param = dupparam = FUNC5(param);
	type = shape->shape[0];
	while ((word = FUNC7(&param, ",")) != NULL) {
		if (FUNC4(word, "normal") == 0)
			type = 0;
		else if (FUNC4(word, "destructive") == 0)
			type = CONS_BLINK_CURSOR | CONS_CHAR_CURSOR;
		else if (FUNC4(word, "blink") == 0)
			type |= CONS_BLINK_CURSOR;
		else if (FUNC4(word, "noblink") == 0)
			type &= ~CONS_BLINK_CURSOR;
		else if (FUNC4(word, "block") == 0)
			type &= ~CONS_CHAR_CURSOR;
		else if (FUNC4(word, "noblock") == 0)
			type |= CONS_CHAR_CURSOR;
		else if (FUNC4(word, "hidden") == 0)
			type |= CONS_HIDDEN_CURSOR;
		else if (FUNC4(word, "nohidden") == 0)
			type &= ~CONS_HIDDEN_CURSOR;
		else if (FUNC6(word, "base=", 5) == 0)
			shape->shape[1] = FUNC8(word + 5, NULL, 0);
		else if (FUNC6(word, "height=", 7) == 0)
			shape->shape[2] = FUNC8(word + 7, NULL, 0);
		else if (FUNC4(word, "charcolors") == 0)
			type |= CONS_CHARCURSOR_COLORS;
		else if (FUNC4(word, "mousecolors") == 0)
			type |= CONS_MOUSECURSOR_COLORS;
		else if (FUNC4(word, "default") == 0)
			type |= CONS_DEFAULT_CURSOR;
		else if (FUNC4(word, "shapeonly") == 0)
			type |= CONS_SHAPEONLY_CURSOR;
		else if (FUNC4(word, "local") == 0)
			type |= CONS_LOCAL_CURSOR;
		else if (FUNC4(word, "reset") == 0)
			type |= CONS_RESET_CURSOR;
		else if (FUNC4(word, "show") == 0)
			FUNC2("flags %#x, base %d, height %d\n",
			    type, shape->shape[1], shape->shape[2]);
		else {
			FUNC3();
			FUNC0(1,
			    "invalid parameters for -c starting at '%s%s%s'",
			    word, param != NULL ? "," : "",
			    param != NULL ? param : "");
		}
	}
	FUNC1(dupparam);
	shape->shape[0] = type;
}