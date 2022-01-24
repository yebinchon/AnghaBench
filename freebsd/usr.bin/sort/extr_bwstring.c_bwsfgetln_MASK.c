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
typedef  int wint_t ;
typedef  scalar_t__ wchar_t ;
struct reader_buffer {int fgetwln_z_buffer_size; int* fgetwln_z_buffer; } ;
struct bwstring {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int MB_CUR_MAX ; 
 int FUNC0 (int) ; 
 int WEOF ; 
 int FUNC1 (char) ; 
 struct bwstring* FUNC2 (unsigned char*,size_t) ; 
 struct bwstring* FUNC3 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC9 (int /*<<< orphan*/ *,size_t*) ; 
 void* FUNC10 (int*,int) ; 

struct bwstring *
FUNC11(FILE *f, size_t *len, bool zero_ended, struct reader_buffer *rb)
{
	wint_t eols;

	eols = zero_ended ? FUNC1('\0') : FUNC1('\n');

	if (!zero_ended && (MB_CUR_MAX > 1)) {
		wchar_t *ret;

		ret = FUNC9(f, len);

		if (ret == NULL) {
			if (!FUNC5(f))
				FUNC4(2, NULL);
			return (NULL);
		}
		if (*len > 0) {
			if (ret[*len - 1] == (wchar_t)eols)
				--(*len);
		}
		return (FUNC3(ret, *len));

	} else if (!zero_ended && (MB_CUR_MAX == 1)) {
		char *ret;

		ret = FUNC7(f, len);

		if (ret == NULL) {
			if (!FUNC5(f))
				FUNC4(2, NULL);
			return (NULL);
		}
		if (*len > 0) {
			if (ret[*len - 1] == '\n')
				--(*len);
		}
		return (FUNC2((unsigned char*)ret, *len));

	} else {
		*len = 0;

		if (FUNC5(f))
			return (NULL);

		if (2 >= rb->fgetwln_z_buffer_size) {
			rb->fgetwln_z_buffer_size += 256;
			rb->fgetwln_z_buffer = FUNC10(rb->fgetwln_z_buffer,
			    sizeof(wchar_t) * rb->fgetwln_z_buffer_size);
		}
		rb->fgetwln_z_buffer[*len] = 0;

		if (MB_CUR_MAX == 1)
			while (!FUNC5(f)) {
				int c;

				c = FUNC6(f);

				if (c == EOF) {
					if (*len == 0)
						return (NULL);
					goto line_read_done;
				}
				if (c == eols)
					goto line_read_done;

				if (*len + 1 >= rb->fgetwln_z_buffer_size) {
					rb->fgetwln_z_buffer_size += 256;
					rb->fgetwln_z_buffer = FUNC10(rb->fgetwln_z_buffer,
					    FUNC0(rb->fgetwln_z_buffer_size));
				}

				rb->fgetwln_z_buffer[*len] = c;
				rb->fgetwln_z_buffer[++(*len)] = 0;
			}
		else
			while (!FUNC5(f)) {
				wint_t c = 0;

				c = FUNC8(f);

				if (c == WEOF) {
					if (*len == 0)
						return (NULL);
					goto line_read_done;
				}
				if (c == eols)
					goto line_read_done;

				if (*len + 1 >= rb->fgetwln_z_buffer_size) {
					rb->fgetwln_z_buffer_size += 256;
					rb->fgetwln_z_buffer = FUNC10(rb->fgetwln_z_buffer,
					    FUNC0(rb->fgetwln_z_buffer_size));
				}

				rb->fgetwln_z_buffer[*len] = c;
				rb->fgetwln_z_buffer[++(*len)] = 0;
			}

line_read_done:
		/* we do not count the last 0 */
		return (FUNC3(rb->fgetwln_z_buffer, *len));
	}
}