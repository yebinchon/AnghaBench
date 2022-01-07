
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int comment_delimiter_on_blankline; int max_col; int unindent_displace; int ind_size; int block_comment_max_col; int decl_com_ind; int com_ind; int tabsize; scalar_t__ star_comment_cont; scalar_t__ blanklines_before_blockcomments; int format_col1_comments; int format_block_comments; } ;
struct TYPE_3__ {int just_saw_decl; int box_com; int com_col; int ind_level; int n_comment_delta; scalar_t__ last_token; int use_ff; int last_nl; scalar_t__ comment_delta; scalar_t__ decl_on_line; scalar_t__ col_1; int out_coms; } ;


 int CHECK_SIZE_COM (int) ;
 char* buf_end ;
 char* buf_ptr ;
 int compute_code_target () ;
 int compute_label_target () ;
 int count_spaces (int ,scalar_t__) ;
 int count_spaces_until (int,char*,char*) ;
 int dump_line () ;
 scalar_t__ e_code ;
 char* e_com ;
 scalar_t__ e_lab ;
 int fill_buffer () ;
 int had_eof ;
 char* in_buffer ;
 scalar_t__ lbrace ;
 int line_no ;
 int memchr (char*,char,int) ;
 TYPE_2__ opt ;
 int prefix_blankline_requested ;
 int printf (char*) ;
 TYPE_1__ ps ;
 scalar_t__ s_code ;
 char* s_com ;
 scalar_t__ s_lab ;
 char* save_com ;
 char* sc_buf ;
 int sc_size ;

void
pr_comment(void)
{
    int now_col;
    int adj_max_col;

    char *last_bl;

    char *t_ptr;
    int break_delim = opt.comment_delimiter_on_blankline;
    int l_just_saw_decl = ps.just_saw_decl;

    adj_max_col = opt.max_col;
    ps.just_saw_decl = 0;
    last_bl = ((void*)0);
    ps.box_com = 0;


    ++ps.out_coms;



    if (ps.col_1 && !opt.format_col1_comments) {

 ps.box_com = 1;
 break_delim = 0;
 ps.com_col = 1;
    }
    else {
 if (*buf_ptr == '-' || *buf_ptr == '*' ||
     (*buf_ptr == '\n' && !opt.format_block_comments)) {
     ps.box_com = 1;






     break_delim = 0;
 }
 if ( (s_lab == e_lab) && (s_code == e_code)) {





     ps.com_col = (ps.ind_level - opt.unindent_displace) * opt.ind_size + 1;
     adj_max_col = opt.block_comment_max_col;
     if (ps.com_col <= 1)
  ps.com_col = 1 + !opt.format_col1_comments;
 }
 else {
     int target_col;
     break_delim = 0;
     if (s_code != e_code)
  target_col = count_spaces(compute_code_target(), s_code);
     else {
  target_col = 1;
  if (s_lab != e_lab)
      target_col = count_spaces(compute_label_target(), s_lab);
     }
     ps.com_col = ps.decl_on_line || ps.ind_level == 0 ? opt.decl_com_ind : opt.com_ind;
     if (ps.com_col <= target_col)
  ps.com_col = opt.tabsize * (1 + (target_col - 1) / opt.tabsize) + 1;
     if (ps.com_col + 24 > adj_max_col)
  adj_max_col = ps.com_col + 24;
 }
    }
    if (ps.box_com) {
 char *start;

 start = buf_ptr >= save_com && buf_ptr < save_com + sc_size ?
     sc_buf : in_buffer;
 ps.n_comment_delta = 1 - count_spaces_until(1, start, buf_ptr - 2);
    }
    else {
 ps.n_comment_delta = 0;
 while (*buf_ptr == ' ' || *buf_ptr == '\t')
     buf_ptr++;
    }
    ps.comment_delta = 0;
    *e_com++ = '/';
    *e_com++ = '*';
    if (*buf_ptr != ' ' && !ps.box_com)
 *e_com++ = ' ';




    if (break_delim)
 for (t_ptr = buf_ptr; *t_ptr != '\0' && *t_ptr != '\n'; t_ptr++) {
     if (t_ptr >= buf_end)
  fill_buffer();
     if (t_ptr[0] == '*' && t_ptr[1] == '/') {
  if (adj_max_col >= count_spaces_until(ps.com_col, buf_ptr, t_ptr + 2))
      break_delim = 0;
  break;
     }
 }

    if (break_delim) {
 char *t = e_com;
 e_com = s_com + 2;
 *e_com = 0;
 if (opt.blanklines_before_blockcomments && ps.last_token != lbrace)
     prefix_blankline_requested = 1;
 dump_line();
 e_com = s_com = t;
 if (!ps.box_com && opt.star_comment_cont)
     *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
    }



    while (1) {

 switch (*buf_ptr) {
 case 014:
     CHECK_SIZE_COM(3);
     if (!ps.box_com) {
  ps.use_ff = 1;

  dump_line();
  last_bl = ((void*)0);
  if (!ps.box_com && opt.star_comment_cont)
      *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
  while (*++buf_ptr == ' ' || *buf_ptr == '\t')
      ;
     }
     else {
  if (++buf_ptr >= buf_end)
      fill_buffer();
  *e_com++ = 014;
     }
     break;

 case '\n':
     if (had_eof) {
  printf("Unterminated comment\n");
  dump_line();
  return;
     }
     last_bl = ((void*)0);
     CHECK_SIZE_COM(4);
     if (ps.box_com || ps.last_nl) {

  if (s_com == e_com)
      *e_com++ = ' ';
  if (!ps.box_com && e_com - s_com > 3) {
      dump_line();
      if (opt.star_comment_cont)
   *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
  }
  dump_line();
  if (!ps.box_com && opt.star_comment_cont)
      *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
     }
     else {
  ps.last_nl = 1;
  if (*(e_com - 1) == ' ' || *(e_com - 1) == '\t')
      last_bl = e_com - 1;




  else {
      last_bl = e_com;
      *e_com++ = ' ';
  }
     }
     ++line_no;
     if (!ps.box_com) {
  int nstar = 1;
  do {

      if (++buf_ptr >= buf_end)
   fill_buffer();
      if (*buf_ptr == '*' && --nstar >= 0) {
   if (++buf_ptr >= buf_end)
       fill_buffer();
   if (*buf_ptr == '/')
       goto end_of_comment;
      }
  } while (*buf_ptr == ' ' || *buf_ptr == '\t');
     }
     else if (++buf_ptr >= buf_end)
  fill_buffer();
     break;

 case '*':

     if (++buf_ptr >= buf_end)
  fill_buffer();
     CHECK_SIZE_COM(4);
     if (*buf_ptr == '/') {
 end_of_comment:
  if (++buf_ptr >= buf_end)
      fill_buffer();
  if (break_delim) {
      if (e_com > s_com + 3) {
   dump_line();
      }
      else
   s_com = e_com;
      *e_com++ = ' ';
  }
  if (e_com[-1] != ' ' && e_com[-1] != '\t' && !ps.box_com)
      *e_com++ = ' ';
  *e_com++ = '*', *e_com++ = '/', *e_com = '\0';
  ps.just_saw_decl = l_just_saw_decl;
  return;
     }
     else
  *e_com++ = '*';
     break;
 default:
     now_col = count_spaces_until(ps.com_col, s_com, e_com);
     do {
  CHECK_SIZE_COM(1);
  *e_com = *buf_ptr++;
  if (buf_ptr >= buf_end)
      fill_buffer();
  if (*e_com == ' ' || *e_com == '\t')
      last_bl = e_com;
  ++e_com;
  now_col++;
     } while (!memchr("*\n\r\b\t", *buf_ptr, 6) &&
  (now_col <= adj_max_col || !last_bl));
     ps.last_nl = 0;
     if (now_col > adj_max_col && !ps.box_com && e_com[-1] > ' ') {



  if (last_bl == ((void*)0)) {
      dump_line();
      if (!ps.box_com && opt.star_comment_cont)
   *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
      break;
  }
  *e_com = '\0';
  e_com = last_bl;
  dump_line();
  if (!ps.box_com && opt.star_comment_cont)
      *e_com++ = ' ', *e_com++ = '*', *e_com++ = ' ';
  for (t_ptr = last_bl + 1; *t_ptr == ' ' || *t_ptr == '\t';
      t_ptr++)
   ;
  last_bl = ((void*)0);





  while (*t_ptr != '\0') {
      if (*t_ptr == ' ' || *t_ptr == '\t')
   last_bl = e_com;
      *e_com++ = *t_ptr++;
  }
     }
     break;
 }
    }
}
