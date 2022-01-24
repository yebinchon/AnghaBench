#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sbuf {int dummy; } ;
struct image_params {char* image_header; int interpreted; char* interpreter_name; TYPE_3__* args; } ;
struct TYPE_4__ {size_t ibe_interp_length; char* ibe_interpreter; scalar_t__ ibe_interp_argcnt; } ;
typedef  TYPE_1__ imgact_binmisc_entry_t ;
struct TYPE_5__ {char* fname; char* begin_argv; int /*<<< orphan*/  argc; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOEXEC ; 
 int IMGACT_BINMISC ; 
#define  ISM_OLD_ARGV0 129 
#define  ISM_POUND 128 
 char* KMOD_NAME ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 int /*<<< orphan*/  interp_list_sx ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char) ; 
 char* FUNC4 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*) ; 
 struct sbuf* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 
 size_t FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct image_params *imgp)
{
	const char *image_header = imgp->image_header;
	const char *fname = NULL;
	int error = 0;
	size_t offset, l;
	imgact_binmisc_entry_t *ibe;
	struct sbuf *sname;
	char *s, *d;

	/* Do we have an interpreter for the given image header? */
	FUNC11(&interp_list_sx);
	if ((ibe = FUNC1(image_header)) == NULL) {
		FUNC12(&interp_list_sx);
		return (-1);
	}

	/* No interpreter nesting allowed. */
	if (imgp->interpreted & IMGACT_BINMISC) {
		FUNC12(&interp_list_sx);
		return (ENOEXEC);
	}

	imgp->interpreted |= IMGACT_BINMISC;

	if (imgp->args->fname != NULL) {
		fname = imgp->args->fname;
		sname = NULL;
	} else {
		/* Use the fdescfs(5) path for fexecve(2). */
		sname = FUNC7();
		FUNC8(sname, "/dev/fd/%d", imgp->args->fd);
		FUNC6(sname);
		fname = FUNC4(sname);
	}


	/*
	 * We need to "push" the interpreter in the arg[] list.  To do this,
	 * we first shift all the other values in the `begin_argv' area to
	 * provide the exact amount of room for the values added.  Set up
	 * `offset' as the number of bytes to be added to the `begin_argv'
	 * area.
	 */
	offset = ibe->ibe_interp_length;

	/* Adjust the offset for #'s. */
	s = ibe->ibe_interpreter;
	while (1) {
		s = FUNC9(s, '#');
		if (!s)
			break;

		s++;
		switch(*s) {
		case ISM_POUND:
			/* "##" -> "#": reduce offset by one. */
			offset--;
			break;

		case ISM_OLD_ARGV0:
			/* "#a" -> (old argv0): increase offset to fit fname */
			offset += FUNC10(fname) - 2;
			break;

		default:
			/* Hmm... This shouldn't happen. */
			FUNC12(&interp_list_sx);
			FUNC3("%s: Unknown macro #%c sequence in "
			    "interpreter string\n", KMOD_NAME, *(s + 1));
			error = EINVAL;
			goto done;
		}
		s++;
	}

	/* Make room for the interpreter */
	error = FUNC0(imgp->args, 0, offset);
	if (error != 0) {
		FUNC12(&interp_list_sx);
		goto done;
	}

	/* Add the new argument(s) in the count. */
	imgp->args->argc += ibe->ibe_interp_argcnt;

	/*
	 * The original arg[] list has been shifted appropriately.  Copy in
	 * the interpreter path.
	 */
	s = ibe->ibe_interpreter;
	d = imgp->args->begin_argv;
	while(*s != '\0') {
		switch (*s) {
		case '#':
			/* Handle "#" in interpreter string. */
			s++;
			switch(*s) {
			case ISM_POUND:
				/* "##": Replace with a single '#' */
				*d++ = '#';
				break;

			case ISM_OLD_ARGV0:
				/* "#a": Replace with old arg0 (fname). */
				if ((l = FUNC10(fname)) != 0) {
					FUNC2(d, fname, l);
					d += l;
				}
				break;

			default:
				/* Shouldn't happen but skip it if it does. */
				break;
			}
			break;

		case ' ':
			/* Replace space with NUL to separate arguments. */
			*d++ = '\0';
			break;

		default:
			*d++ = *s;
			break;
		}
		s++;
	}
	*d = '\0';
	FUNC12(&interp_list_sx);

	if (!error)
		imgp->interpreter_name = imgp->args->begin_argv;


done:
	if (sname)
		FUNC5(sname);
	return (error);
}