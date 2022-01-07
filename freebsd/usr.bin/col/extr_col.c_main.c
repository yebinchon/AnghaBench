
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wint_t ;
struct TYPE_7__ {int c_char; int c_column; int c_width; scalar_t__ c_set; } ;
struct TYPE_6__ {int l_line_len; int l_lsize; int l_max_col; int l_needs_sort; struct TYPE_6__* l_next; TYPE_2__* l_line; struct TYPE_6__* l_prev; } ;
typedef TYPE_1__ LINE ;
typedef scalar_t__ CSET ;
typedef TYPE_2__ CHAR ;



 int BUFFER_MARGIN ;

 scalar_t__ CS_ALTERNATE ;
 scalar_t__ CS_NORMAL ;


 int INT_MAX ;
 int LC_CTYPE ;

 int PUTC (int const) ;







 int WEOF ;
 int addto_lineno (int*,int) ;
 void* alloc_line () ;
 scalar_t__ caph_enter () ;
 int caph_limit_stdio () ;
 int compress_spaces ;
 int dowarn (int) ;
 int err (int,char*) ;
 int errx (int,char*,char const*,int ) ;
 int exit (int ) ;
 scalar_t__ ferror (int ) ;
 int fine ;
 int flush_blanks () ;
 int flush_lines (int) ;
 int getopt (int,char**,char*) ;
 int getwchar () ;
 int iswgraph (int) ;
 scalar_t__ iswspace (int) ;
 scalar_t__ last_set ;
 TYPE_1__* lines ;
 int max_bufd_lines ;
 int nblank_lines ;
 int no_backspaces ;
 int optarg ;
 int optind ;
 int pass_unknown_seqs ;
 TYPE_2__* realloc (TYPE_2__*,unsigned int) ;
 int setlocale (int ,char*) ;
 int stdin ;
 int strtonum (int ,int,int,char const**) ;
 int usage () ;
 void* wcwidth (int) ;

int
main(int argc, char **argv)
{
 wint_t ch;
 CHAR *c;
 CSET cur_set;
 LINE *l;
 int extra_lines;
 int cur_col;
 int cur_line;
 int max_line;
 int this_line;
 int nflushd_lines;
 int adjust, opt, warned, width;
 const char *errstr;

 (void)setlocale(LC_CTYPE, "");

 if (caph_limit_stdio() == -1)
  err(1, "unable to limit stdio");

 if (caph_enter() < 0)
  err(1, "unable to enter capability mode");

 max_bufd_lines = 256;
 compress_spaces = 1;
 while ((opt = getopt(argc, argv, "bfhl:px")) != -1)
  switch (opt) {
  case 'b':
   no_backspaces = 1;
   break;
  case 'f':
   fine = 1;
   break;
  case 'h':
   compress_spaces = 1;
   break;
  case 'l':
   max_bufd_lines = strtonum(optarg, 1,
       (INT_MAX - BUFFER_MARGIN) / 2, &errstr) * 2;
   if (errstr != ((void*)0))
    errx(1, "bad -l argument, %s: %s", errstr,
     optarg);
   break;
  case 'p':
   pass_unknown_seqs = 1;
   break;
  case 'x':
   compress_spaces = 0;
   break;
  case '?':
  default:
   usage();
  }

 if (optind != argc)
  usage();

 adjust = cur_col = extra_lines = warned = 0;
 cur_line = max_line = nflushd_lines = this_line = 0;
 cur_set = last_set = CS_NORMAL;
 lines = l = alloc_line();

 while ((ch = getwchar()) != WEOF) {
  if (!iswgraph(ch)) {
   switch (ch) {
   case 139:
    if (cur_col == 0)
     continue;
    --cur_col;
    continue;
   case 138:
    cur_col = 0;
    continue;
   case 137:
    switch(getwchar()) {





    case '\007':

    case 133:
     addto_lineno(&cur_line, -2);
     break;
    case '\010':

    case 134:
     addto_lineno(&cur_line, -1);
     break;
    case '\011':

    case 136:
     addto_lineno(&cur_line, 1);
     if (cur_line > max_line)
      max_line = cur_line;
    }
    continue;
   case 135:
    addto_lineno(&cur_line, 2);
    if (cur_line > max_line)
     max_line = cur_line;
    cur_col = 0;
    continue;
   case 130:
    ++cur_col;
    continue;
   case 132:
    cur_set = CS_NORMAL;
    continue;
   case 131:
    cur_set = CS_ALTERNATE;
    continue;
   case 129:
    cur_col |= 7;
    ++cur_col;
    continue;
   case 128:
    addto_lineno(&cur_line, -2);
    continue;
   }
   if (iswspace(ch)) {
    if ((width = wcwidth(ch)) > 0)
     cur_col += width;
    continue;
   }
   if (!pass_unknown_seqs)
    continue;
  }


  if (cur_line + adjust != this_line) {
   LINE *lnew;


   adjust = !fine && (cur_line & 1);

   if (cur_line + adjust < this_line) {
    while (cur_line + adjust < this_line &&
        l->l_prev != ((void*)0)) {
     l = l->l_prev;
     this_line--;
    }
    if (cur_line + adjust < this_line) {
     if (nflushd_lines == 0) {





      while (cur_line + adjust
          < this_line) {
       lnew = alloc_line();
       l->l_prev = lnew;
       lnew->l_next = l;
       l = lines = lnew;
       extra_lines++;
       this_line--;
      }
     } else {
      if (!warned++)
       dowarn(cur_line);
      cur_line = this_line - adjust;
     }
    }
   } else {

    while (cur_line + adjust > this_line) {
     if (l->l_next == ((void*)0)) {
      l->l_next = alloc_line();
      l->l_next->l_prev = l;
     }
     l = l->l_next;
     this_line++;
    }
   }
   if (this_line > nflushd_lines &&
       this_line - nflushd_lines >=
       max_bufd_lines + BUFFER_MARGIN) {
    if (extra_lines) {
     flush_lines(extra_lines);
     extra_lines = 0;
    }
    flush_lines(this_line - nflushd_lines -
        max_bufd_lines);
    nflushd_lines = this_line - max_bufd_lines;
   }
  }

  if (l->l_line_len + 1 >= l->l_lsize) {
   int need;

   need = l->l_lsize ? l->l_lsize * 2 : 90;
   if ((l->l_line = realloc(l->l_line,
       (unsigned)need * sizeof(CHAR))) == ((void*)0))
    err(1, ((void*)0));
   l->l_lsize = need;
  }
  c = &l->l_line[l->l_line_len++];
  c->c_char = ch;
  c->c_set = cur_set;
  c->c_column = cur_col;
  c->c_width = wcwidth(ch);




  if (cur_col < l->l_max_col)
   l->l_needs_sort = 1;
  else
   l->l_max_col = cur_col;
  if (c->c_width > 0)
   cur_col += c->c_width;
 }
 if (ferror(stdin))
  err(1, ((void*)0));
 if (extra_lines)
  flush_lines(extra_lines);


 for (; l->l_next; l = l->l_next)
  this_line++;
 flush_lines(this_line - nflushd_lines + 1);


 if (last_set != CS_NORMAL)
  PUTC(132);


 if (max_line > this_line)
  nblank_lines = max_line - this_line;
 if (max_line & 1)
  nblank_lines++;
 flush_blanks();
 exit(0);
}
