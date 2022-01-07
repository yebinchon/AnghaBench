
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_name {char* path; scalar_t__ exists; } ;
typedef scalar_t__ off_t ;
typedef int names ;
typedef int LINENUM ;


 int CONTEXT_DIFF ;
 int ED_DIFF ;
 size_t INDEX_FILE ;
 int MAX_FILE ;
 int NEW_CONTEXT_DIFF ;
 size_t NEW_FILE ;
 int NORMAL_DIFF ;
 size_t OLD_FILE ;
 int SEEK_SET ;
 int UNI_DIFF ;
 char* _PATH_DEVNULL ;
 char* best_name (struct file_name*,int) ;
 char* bestguess ;
 char* buf ;
 int diff_type ;
 void* fetchname (char*,scalar_t__*,int) ;
 char** filearg ;
 int free (char*) ;
 int fseeko (int ,int ,int ) ;
 scalar_t__ ftello (int ) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int memset (struct file_name*,int ,int) ;
 int ok_to_create_file ;
 int p4_fetchname (struct file_name*,char*) ;
 int p_base ;
 void* p_bline ;
 int p_indent ;
 void* p_input_line ;
 int p_sline ;
 scalar_t__ p_start ;
 int pfp ;
 scalar_t__ pgets (int) ;
 scalar_t__ posix ;
 char* posix_name (struct file_name*,int) ;
 char* revision ;
 char* source_file ;
 scalar_t__ strEQ (char*,char*) ;
 int strippath ;
 int strnEQ (char*,char*,int) ;
 char* strstr (char*,char*) ;
 scalar_t__ strtolinenum (char*,char**) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
intuit_diff_type(void)
{
 off_t this_line = 0, previous_line;
 off_t first_command_line = -1;
 LINENUM fcl_line = -1;
 bool last_line_was_command = 0, this_is_a_command = 0;
 bool stars_last_line = 0, stars_this_line = 0;
 char *s, *t;
 int indent, retval;
 struct file_name names[MAX_FILE];
 int piece_of_git = 0;

 memset(names, 0, sizeof(names));
 ok_to_create_file = 0;
 fseeko(pfp, p_base, SEEK_SET);
 p_input_line = p_bline - 1;
 for (;;) {
  previous_line = this_line;
  last_line_was_command = this_is_a_command;
  stars_last_line = stars_this_line;
  this_line = ftello(pfp);
  indent = 0;
  p_input_line++;
  if (pgets(0) == 0) {
   if (first_command_line >= 0) {

    p_start = first_command_line;
    p_sline = fcl_line;
    retval = ED_DIFF;
    goto scan_exit;
   } else {
    p_start = this_line;
    p_sline = p_input_line;
    retval = 0;
    goto scan_exit;
   }
  }
  for (s = buf; *s == ' ' || *s == '\t' || *s == 'X'; s++) {
   if (*s == '\t')
    indent += 8 - (indent % 8);
   else
    indent++;
  }
  for (t = s; isdigit((unsigned char)*t) || *t == ','; t++)
   ;
  this_is_a_command = (isdigit((unsigned char)*s) &&
      (*t == 'd' || *t == 'c' || *t == 'a'));
  if (first_command_line < 0 && this_is_a_command) {
   first_command_line = this_line;
   fcl_line = p_input_line;
   p_indent = indent;
  }
  if (!stars_last_line && strnEQ(s, "*** ", 4))
   names[OLD_FILE].path = fetchname(s + 4,
       &names[OLD_FILE].exists, strippath);
  else if (strnEQ(s, "--- ", 4)) {
   size_t off = 4;
   if (piece_of_git && strippath == 957 &&
       strnEQ(s, "--- a/", 6))
    off = 6;
   names[NEW_FILE].path = fetchname(s + off,
       &names[NEW_FILE].exists, strippath);
  } else if (strnEQ(s, "+++ ", 4)) {

   size_t off = 4;
   if (piece_of_git && strippath == 957 &&
       strnEQ(s, "+++ b/", 6))
    off = 6;
   names[OLD_FILE].path = fetchname(s + off,
       &names[OLD_FILE].exists, strippath);
  } else if (strnEQ(s, "Index:", 6))
   names[INDEX_FILE].path = fetchname(s + 6,
       &names[INDEX_FILE].exists, strippath);
  else if (strnEQ(s, "Prereq:", 7)) {
   for (t = s + 7; isspace((unsigned char)*t); t++)
    ;
   revision = xstrdup(t);
   for (t = revision;
        *t && !isspace((unsigned char)*t); t++)
    ;
   *t = '\0';
   if (*revision == '\0') {
    free(revision);
    revision = ((void*)0);
   }
  } else if (strnEQ(s, "diff --git a/", 13)) {

   piece_of_git = 1;
  } else if (strnEQ(s, "==== ", 5)) {

   if ((t = strstr(s + 5, " - ")) != ((void*)0))
    p4_fetchname(&names[NEW_FILE], t + 3);
   p4_fetchname(&names[OLD_FILE], s + 5);
  }
  if ((!diff_type || diff_type == ED_DIFF) &&
      first_command_line >= 0 &&
      strEQ(s, ".\n")) {
   p_indent = indent;
   p_start = first_command_line;
   p_sline = fcl_line;
   retval = ED_DIFF;
   goto scan_exit;
  }
  if ((!diff_type || diff_type == UNI_DIFF) && strnEQ(s, "@@ -", 4)) {
   if (strnEQ(s + 4, "0,0", 3))
    ok_to_create_file = 1;
   p_indent = indent;
   p_start = this_line;
   p_sline = p_input_line;
   retval = UNI_DIFF;
   goto scan_exit;
  }
  stars_this_line = strnEQ(s, "********", 8);
  if ((!diff_type || diff_type == CONTEXT_DIFF) && stars_last_line &&
      strnEQ(s, "*** ", 4)) {
   if (strtolinenum(s + 4, &s) == 0)
    ok_to_create_file = 1;




   while (*s && *s != '\n')
    s++;
   p_indent = indent;
   p_start = previous_line;
   p_sline = p_input_line - 1;
   retval = (*(s - 1) == '*' ? NEW_CONTEXT_DIFF : CONTEXT_DIFF);
   goto scan_exit;
  }
  if ((!diff_type || diff_type == NORMAL_DIFF) &&
      last_line_was_command &&
      (strnEQ(s, "< ", 2) || strnEQ(s, "> ", 2))) {
   p_start = previous_line;
   p_sline = p_input_line - 1;
   p_indent = indent;
   retval = NORMAL_DIFF;
   goto scan_exit;
  }
 }
scan_exit:
 if (retval == UNI_DIFF) {

  struct file_name tmp = names[OLD_FILE];
  names[OLD_FILE] = names[NEW_FILE];
  names[NEW_FILE] = tmp;
 }


 free(source_file);
 source_file = ((void*)0);

 if (retval != 0) {







  if (names[OLD_FILE].path != ((void*)0))
   source_file = xstrdup(names[OLD_FILE].path);
  else if (names[OLD_FILE].exists)
   source_file = xstrdup(_PATH_DEVNULL);
 }
 if (filearg[0] == ((void*)0)) {
  if (posix)
   filearg[0] = posix_name(names, ok_to_create_file);
  else {

   if (names[OLD_FILE].path != ((void*)0) ||
       names[NEW_FILE].path != ((void*)0)) {
    free(names[INDEX_FILE].path);
    names[INDEX_FILE].path = ((void*)0);
   }
   filearg[0] = best_name(names, ok_to_create_file);
  }
 }

 free(bestguess);
 bestguess = ((void*)0);
 if (filearg[0] != ((void*)0))
  bestguess = xstrdup(filearg[0]);
 else if (!ok_to_create_file) {





  if (posix)
   bestguess = posix_name(names, 1);
  else
   bestguess = best_name(names, 1);
 }
 free(names[OLD_FILE].path);
 free(names[NEW_FILE].path);
 free(names[INDEX_FILE].path);
 return retval;
}
