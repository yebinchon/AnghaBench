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
struct passwd {char const* pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int LINE_LEN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*) ; 
 struct passwd* FUNC3 (char*) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 scalar_t__ FUNC6 (char const) ; 
 char* FUNC7 (char const*,char) ; 
 size_t FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 

const char *
FUNC10(const char *from, char *to)
{
  char *ptr, *startto, *endto;
  struct passwd *pwd;
  int instring;
  size_t len;
  const char *env;

  instring = 0;
  startto = to;
  endto = to + LINE_LEN - 1;

  while(FUNC6(*from))
    from++;

  while (*from != '\0') {
    switch (*from) {
      case '"':
        instring = !instring;
        *to++ = *from++;
        break;
      case '\\':
        switch (*++from) {
          case '$':
          case '~':
            break;		/* Swallow the escapes */

          default:
            *to++ = '\\';	/* Pass the escapes on, maybe skipping \# */
            break;
        }
        *to++ = *from++;
        break;
      case '$':
        if (from[1] == '$') {
          *to = '\0';	/* For an empty var name below */
          from += 2;
        } else if (from[1] == '{') {
          ptr = FUNC7(from+2, '}');
          if (ptr) {
            len = ptr - from - 2;
            if (endto - to < (int)len )
              len = endto - to;
            if (len) {
              FUNC9(to, from+2, len);
              to[len] = '\0';
              from = ptr+1;
            } else {
              *to++ = *from++;
              continue;
            }
          } else {
            *to++ = *from++;
            continue;
          }
        } else {
          ptr = to;
          for (from++; (FUNC5(*from) || *from == '_') && ptr < endto; from++)
            *ptr++ = *from;
          *ptr = '\0';
        }
        if (*to == '\0')
          *to++ = '$';
        else if ((env = FUNC2(to)) != NULL) {
          FUNC9(to, env, endto - to);
          *endto = '\0';
          to += FUNC8(to);
        }
        break;

      case '~':
        ptr = FUNC7(++from, '/');
        len = ptr ? (size_t)(ptr - from) : FUNC8(from);
        if (len == 0)
          pwd = FUNC4(FUNC0());
        else {
          FUNC9(to, from, len);
          to[len] = '\0';
          pwd = FUNC3(to);
        }
        if (pwd == NULL)
          *to++ = '~';
        else {
          FUNC9(to, pwd->pw_dir, endto - to);
          *endto = '\0';
          to += FUNC8(to);
          from += len;
        }
        FUNC1();
        break;

      default:
        *to++ = *from++;
        break;
    }
  }

  while (to > startto) {
    to--;
    if (!FUNC6(*to)) {
      to++;
      break;
    }
  }
  *to = '\0';

  return from;
}