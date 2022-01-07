
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* s; } ;
struct s_command {TYPE_2__ u; } ;
typedef int ssize_t ;
typedef scalar_t__ regoff_t ;
typedef int regex_t ;
struct TYPE_14__ {scalar_t__ re_nsub; } ;
struct TYPE_13__ {scalar_t__ rm_so; scalar_t__ rm_eo; } ;
struct TYPE_12__ {int back; int space; int append_newline; scalar_t__ len; } ;
struct TYPE_10__ {scalar_t__ maxbref; int n; int wfd; scalar_t__ wfile; scalar_t__ p; int new; int linenum; int * re; } ;
typedef TYPE_3__ SPACE ;


 int APPEND ;
 int DEFFILEMODE ;
 int OUT () ;
 int O_APPEND ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 TYPE_3__ PS ;
 int REG_NOTBOL ;
 TYPE_3__ SS ;
 int cspace (TYPE_3__*,char*,scalar_t__,int ) ;
 TYPE_6__* defpreg ;
 int err (int,char*,scalar_t__) ;
 int errx (int,char*,int ,int ,scalar_t__) ;
 int fname ;
 int linenum ;
 TYPE_5__* match ;
 int open (scalar_t__,int,int ) ;
 int pd ;
 char* ps ;
 int psanl ;
 int psl ;
 scalar_t__ regexec_e (int *,char*,int ,int ,scalar_t__,int) ;
 int regsub (TYPE_3__*,char*,int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static int
substitute(struct s_command *cp)
{
 SPACE tspace;
 regex_t *re;
 regoff_t slen;
 int lastempty, n;
 regoff_t le = 0;
 char *s;

 s = ps;
 re = cp->u.s->re;
 if (re == ((void*)0)) {
  if (defpreg != ((void*)0) && cp->u.s->maxbref > defpreg->re_nsub) {
   linenum = cp->u.s->linenum;
   errx(1, "%lu: %s: \\%u not defined in the RE",
     linenum, fname, cp->u.s->maxbref);
  }
 }
 if (!regexec_e(re, ps, 0, 0, 0, psl))
  return (0);

 SS.len = 0;
 slen = psl;
 n = cp->u.s->n;
 lastempty = 1;

 do {

  if (n <= 1 && (match[0].rm_so > le))
   cspace(&SS, s, match[0].rm_so - le, APPEND);


  if (lastempty || (match[0].rm_so - le) ||
      match[0].rm_so != match[0].rm_eo) {
   if (n <= 1) {

    regsub(&SS, ps, cp->u.s->new);
    if (n == 1)
     n = -1;
   } else {

    if (match[0].rm_eo - le)
     cspace(&SS, s, match[0].rm_eo - le,
         APPEND);
    n--;
   }
  }


  s = ps + match[0].rm_eo;
  slen = psl - match[0].rm_eo;
  le = match[0].rm_eo;





  if (match[0].rm_so == match[0].rm_eo) {
   if (*s == '\0' || *s == '\n')
    slen = -1;
   else
    slen--;
   if (*s != '\0') {
     cspace(&SS, s++, 1, APPEND);
    le++;
   }
   lastempty = 1;
  } else
   lastempty = 0;

 } while (n >= 0 && slen >= 0 &&
     regexec_e(re, ps, REG_NOTBOL, 0, le, psl));


 if (n > 0)
  return (0);


 if (slen > 0)
  cspace(&SS, s, slen, APPEND);





 tspace = PS;
 PS = SS;
 psanl = tspace.append_newline;
 SS = tspace;
 SS.space = SS.back;


 if (cp->u.s->p)
  OUT();


 if (cp->u.s->wfile && !pd) {
  if (cp->u.s->wfd == -1 && (cp->u.s->wfd = open(cp->u.s->wfile,
      O_WRONLY|O_APPEND|O_CREAT|O_TRUNC, DEFFILEMODE)) == -1)
   err(1, "%s", cp->u.s->wfile);
  if (write(cp->u.s->wfd, ps, psl) != (ssize_t)psl ||
      write(cp->u.s->wfd, "\n", 1) != 1)
   err(1, "%s", cp->u.s->wfile);
 }
 return (1);
}
