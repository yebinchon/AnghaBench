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
struct stat {int /*<<< orphan*/  st_size; } ;
struct simdisk_softc {int /*<<< orphan*/  sectors; int /*<<< orphan*/  sbuf; } ;
typedef  int /*<<< orphan*/  XML_Parser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAP_NOCORE ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct simdisk_softc*) ; 
 struct simdisk_softc* FUNC7 (int,int) ; 
 int /*<<< orphan*/  characterData ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  endElement ; 
 int /*<<< orphan*/  FUNC9 (int,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct stat*) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  startElement ; 

__attribute__((used)) static struct simdisk_softc *
FUNC16(const char *file)
{
	XML_Parser parser = FUNC2(NULL);
	struct stat st;
	char *p;
	struct simdisk_softc *sc;
	int fd, i;

	sc = FUNC7(1, sizeof *sc);
	sc->sbuf = FUNC15();
	FUNC0(&sc->sectors);
	FUNC6(parser, sc);
	FUNC5(parser, startElement, endElement);
	FUNC4(parser, characterData);

	fd = FUNC14(file, O_RDONLY);
	if (fd < 0)
		FUNC9(1, file);
	FUNC11(fd, &st);
	p = FUNC12(NULL, st.st_size, PROT_READ, MAP_NOCORE|MAP_PRIVATE, fd, 0);
	i = FUNC1(parser, p, st.st_size, 1);
	if (i != 1)
		FUNC10(1, "XML_Parse complains: return %d", i);
	FUNC13(p, st.st_size);
	FUNC8(fd);
	FUNC3(parser);
	return (sc);
}