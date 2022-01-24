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
struct bhnd_nvram_io {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int btxt_parse_state ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
#define  BTXT_PARSE_KEY 133 
#define  BTXT_PARSE_KEY_END 132 
#define  BTXT_PARSE_LINE_START 131 
#define  BTXT_PARSE_NEXT_LINE 130 
#define  BTXT_PARSE_VALUE 129 
#define  BTXT_PARSE_VALUE_START 128 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 size_t FUNC3 (int,size_t) ; 
 size_t FUNC4 (struct bhnd_nvram_io*) ; 
 int FUNC5 (struct bhnd_nvram_io*,size_t,char*,size_t) ; 
 int FUNC6 (char*,size_t,int /*<<< orphan*/ ,void*,size_t*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 size_t FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,size_t) ; 

__attribute__((used)) static int
FUNC11(struct bhnd_nvram_io *io, const char *name,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
	char				 buf[512];
	btxt_parse_state		 pstate;
	size_t				 limit, offset;
	size_t				 buflen, bufpos;
	size_t				 namelen, namepos;
	size_t				 vlen;
	int				 error;

	limit = FUNC4(io);
	offset = 0;

	/* Loop our parser until we find the requested variable, or hit EOF */
	pstate = BTXT_PARSE_LINE_START;
	buflen = 0;
	bufpos = 0;
	namelen = FUNC9(name);
	namepos = 0;
	vlen = 0;

	while ((offset - bufpos) < limit) {
		FUNC0(bufpos <= buflen,
		    ("buf position invalid (%zu > %zu)", bufpos, buflen));
		FUNC0(buflen <= sizeof(buf),
		    ("buf length invalid (%zu > %zu", buflen, sizeof(buf)));

		/* Repopulate our parse buffer? */
		if (buflen - bufpos == 0) {
			FUNC0(offset < limit, ("offset overrun"));

			buflen = FUNC3(sizeof(buf), limit - offset);
			bufpos = 0;

			error = FUNC5(io, offset, buf, buflen);
			if (error)
				return (error);

			offset += buflen;
		}

		switch (pstate) {
		case BTXT_PARSE_LINE_START:
			FUNC0(bufpos < buflen, ("empty buffer!"));

			/* Reset name matching position */
			namepos = 0;

			/* Trim any leading whitespace */
			while (bufpos < buflen && FUNC2(buf[bufpos]))
			{
				bufpos++;
			}

			if (bufpos == buflen) {
				/* Continue parsing the line */
				pstate = BTXT_PARSE_LINE_START;
			} else if (bufpos < buflen && buf[bufpos] == '#') {
				/* Comment; skip to next line */
				pstate = BTXT_PARSE_NEXT_LINE;
			} else {
				/* Start name matching */
				pstate = BTXT_PARSE_KEY;
			}


			break;

		case BTXT_PARSE_KEY: {
			size_t navail, nleft;

			nleft = namelen - namepos;
			navail = FUNC3(buflen - bufpos, nleft);

			if (FUNC10(name+namepos, buf+bufpos, navail) == 0) {
				/* Matched */
				namepos += navail;
				bufpos += navail;

				if (namepos == namelen) {
					/* Matched the full variable; look for
					 * its trailing delimiter */
					pstate = BTXT_PARSE_KEY_END;
				} else {
					/* Continue matching the name */
					pstate = BTXT_PARSE_KEY;
				}
			} else {
				/* No match; advance to next entry and restart
				 * name matching */
				pstate = BTXT_PARSE_NEXT_LINE;
			}

			break;
		}

		case BTXT_PARSE_KEY_END:
			FUNC0(bufpos < buflen, ("empty buffer!"));

			if (buf[bufpos] == '=') {
				/* Key fully matched; advance past '=' and
				 * parse the value */
				bufpos++;
				pstate = BTXT_PARSE_VALUE_START;
			} else {
				/* No match; advance to next line and restart
				 * name matching */
				pstate = BTXT_PARSE_NEXT_LINE;
			}

			break;

		case BTXT_PARSE_NEXT_LINE: {
			const char *p;

			/* Scan for a '\r', '\n', or '\r\n' terminator */
			p = FUNC7(buf+bufpos, '\n', buflen - bufpos);
			if (p == NULL)
				p = FUNC7(buf+bufpos, '\r', buflen - bufpos);

			if (p != NULL) {
				/* Found entry terminator; restart name
				 * matching at next line */
				pstate = BTXT_PARSE_LINE_START;
				bufpos = (p - buf);
			} else {
				/* Consumed full buffer looking for newline; 
				 * force repopulation of the buffer and
				 * retry */
				pstate = BTXT_PARSE_NEXT_LINE;
				bufpos = buflen;
			}

			break;
		}

		case BTXT_PARSE_VALUE_START: {
			const char *p;

			/* Scan for a terminating newline */
			p = FUNC7(buf+bufpos, '\n', buflen - bufpos);
			if (p == NULL)
				p = FUNC7(buf+bufpos, '\r', buflen - bufpos);

			if (p != NULL) {
				/* Found entry terminator; parse the value */
				vlen = p - &buf[bufpos];
				pstate = BTXT_PARSE_VALUE;

			} else if (p == NULL && offset == limit) {
				/* Hit EOF without a terminating newline;
				 * treat the entry as implicitly terminated */
				vlen = buflen - bufpos;
				pstate = BTXT_PARSE_VALUE;

			} else if (p == NULL && bufpos > 0) {
				size_t	nread;

				/* Move existing value data to start of
				 * buffer */
				FUNC8(buf, buf+bufpos, buflen - bufpos);
				buflen = bufpos;
				bufpos = 0;

				/* Populate full buffer to allow retry of
				 * value parsing */
				nread = FUNC3(sizeof(buf) - buflen,
				    limit - offset);

				error = FUNC5(io, offset,
				    buf+buflen, nread);
				if (error)
					return (error);

				offset += nread;
				buflen += nread;
			} else {
				/* Value exceeds our buffer capacity */
				FUNC1("cannot parse value for '%s' "
				    "(exceeds %zu byte limit)\n", name,
				    sizeof(buf));

				return (ENXIO);
			}

			break;
		}

		case BTXT_PARSE_VALUE:
			FUNC0(vlen <= buflen, ("value buf overrun"));

			/* Trim any trailing whitespace */
			while (vlen > 0 && FUNC2(buf[bufpos+vlen-1]))
				vlen--;

			/* Write the value to the caller's buffer */
			return (FUNC6(buf+bufpos, vlen,
			    BHND_NVRAM_TYPE_STRING, outp, olen, otype));
		}
	}

	/* Variable not found */
	return (ENOENT);
}