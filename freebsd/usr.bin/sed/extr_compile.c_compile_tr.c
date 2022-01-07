
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_char ;
struct s_tr {int nmultis; char* bytetab; TYPE_1__* multis; } ;
typedef int mbstate_t ;
typedef int mbs2 ;
typedef int mbs1 ;
struct TYPE_3__ {size_t fromlen; size_t tolen; int to; int from; } ;


 int EATSPACE () ;
 int EILSEQ ;
 int MB_CUR_MAX ;
 int MB_LEN_MAX ;
 int UCHAR_MAX ;
 scalar_t__ WEOF ;
 int _POSIX2_LINE_MAX ;
 scalar_t__ btowc (int) ;
 char* compile_delimited (char*,char*,int) ;
 int err (int,int *) ;
 int errc (int,int ,int *) ;
 int errx (int,char*,int ,int ) ;
 int fname ;
 int linenum ;
 struct s_tr* malloc (int) ;
 size_t mbrlen (char const*,int ,int *) ;
 size_t mbsrtowcs (int *,char const**,int ,int *) ;
 int memcpy (int ,char const*,size_t) ;
 int memset (int *,int ,int) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;

__attribute__((used)) static char *
compile_tr(char *p, struct s_tr **py)
{
 struct s_tr *y;
 int i;
 const char *op, *np;
 char old[_POSIX2_LINE_MAX + 1];
 char new[_POSIX2_LINE_MAX + 1];
 size_t oclen, oldlen, nclen, newlen;
 mbstate_t mbs1, mbs2;

 if ((*py = y = malloc(sizeof(*y))) == ((void*)0))
  err(1, ((void*)0));
 y->multis = ((void*)0);
 y->nmultis = 0;

 if (*p == '\0' || *p == '\\')
  errx(1,
 "%lu: %s: transform pattern can not be delimited by newline or backslash",
   linenum, fname);
 p = compile_delimited(p, old, 1);
 if (p == ((void*)0))
  errx(1, "%lu: %s: unterminated transform source string",
    linenum, fname);
 p = compile_delimited(p - 1, new, 1);
 if (p == ((void*)0))
  errx(1, "%lu: %s: unterminated transform target string",
    linenum, fname);
 EATSPACE();
 op = old;
 oldlen = mbsrtowcs(((void*)0), &op, 0, ((void*)0));
 if (oldlen == (size_t)-1)
  err(1, ((void*)0));
 np = new;
 newlen = mbsrtowcs(((void*)0), &np, 0, ((void*)0));
 if (newlen == (size_t)-1)
  err(1, ((void*)0));
 if (newlen != oldlen)
  errx(1, "%lu: %s: transform strings are not the same length",
    linenum, fname);
 if (MB_CUR_MAX == 1) {




  for (i = 0; i <= UCHAR_MAX; i++)
   y->bytetab[i] = (char)i;
  for (; *op; op++, np++)
   y->bytetab[(u_char)*op] = *np;
 } else {







  memset(&mbs1, 0, sizeof(mbs1));
  memset(&mbs2, 0, sizeof(mbs2));
  for (i = 0; i <= UCHAR_MAX; i++)
   y->bytetab[i] = (btowc(i) != WEOF) ? i : 0;
  while (*op != '\0') {
   oclen = mbrlen(op, MB_LEN_MAX, &mbs1);
   if (oclen == (size_t)-1 || oclen == (size_t)-2)
    errc(1, EILSEQ, ((void*)0));
   nclen = mbrlen(np, MB_LEN_MAX, &mbs2);
   if (nclen == (size_t)-1 || nclen == (size_t)-2)
    errc(1, EILSEQ, ((void*)0));
   if (oclen == 1 && nclen == 1)
    y->bytetab[(u_char)*op] = *np;
   else {
    y->bytetab[(u_char)*op] = 0;
    y->multis = realloc(y->multis,
        (y->nmultis + 1) * sizeof(*y->multis));
    if (y->multis == ((void*)0))
     err(1, ((void*)0));
    i = y->nmultis++;
    y->multis[i].fromlen = oclen;
    memcpy(y->multis[i].from, op, oclen);
    y->multis[i].tolen = nclen;
    memcpy(y->multis[i].to, np, nclen);
   }
   op += oclen;
   np += nclen;
  }
 }
 return (p);
}
