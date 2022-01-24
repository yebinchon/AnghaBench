#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct mytree {TYPE_1__* top; TYPE_1__* cur; } ;
typedef  int /*<<< orphan*/  XML_Parser ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  cont; int /*<<< orphan*/  key; struct TYPE_2__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CharData ; 
 int /*<<< orphan*/  EndElement ; 
 int MAP_NOCORE ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  StartElement ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mytree*) ; 
 struct mytree* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct stat*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 () ; 
 int FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mytree *
FUNC16(char *filename)
{
	XML_Parser parser;
	struct mytree *mt;
	struct stat st;
	int fd;
	char *p;
	int i;

	parser = FUNC1(NULL);
	mt = FUNC6(1, sizeof *mt);
	mt->top = FUNC13();
	mt->top->name = "(top)";
	mt->top->parent = mt->top;
	mt->cur = mt->top;
	FUNC15(mt->top->key);
	FUNC15(mt->top->cont);
	FUNC5(parser, mt);
	FUNC4(parser, StartElement, EndElement);
	FUNC3(parser, CharData);
	fd = FUNC14(filename, O_RDONLY);
	if (fd < 0)
		FUNC8(1, filename);
	FUNC10(fd, &st);
	p = FUNC11(NULL, st.st_size, PROT_READ, MAP_NOCORE|MAP_PRIVATE, fd, 0);
	i = FUNC0(parser, p, st.st_size, 1);
	if (i != 1)
		FUNC9(1, "XML_Parse complained -> %d", i);
	FUNC12(p, st.st_size);
	FUNC7(fd);
	FUNC2(parser);
	FUNC15(mt->top->cont);
	if (i)
		return (mt);
	else
		return (NULL);
}