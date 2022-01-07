
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Linetype ;
typedef size_t Comment_state ;


 int Eioccc () ;
 size_t LS_DIRTY ;
 size_t LS_HASH ;
 size_t LS_START ;
 scalar_t__ LT_ELFALSE ;
 scalar_t__ LT_ELIF ;
 scalar_t__ LT_ELSE ;
 scalar_t__ LT_ELTRUE ;
 scalar_t__ LT_ENDIF ;
 scalar_t__ LT_EOF ;
 scalar_t__ LT_FALSE ;
 scalar_t__ LT_FALSEI ;
 scalar_t__ LT_IF ;
 scalar_t__ LT_PLAIN ;
 scalar_t__ LT_TRUE ;
 scalar_t__ LT_TRUEI ;
 scalar_t__ MAXLINE ;
 int * comment_name ;
 int debug (char*,int ,int ,int ) ;
 int err (int,char*,int ) ;
 scalar_t__ ferror (int ) ;
 int * fgets (char const*,scalar_t__,int ) ;
 int filename ;
 int findsym (char const**) ;
 scalar_t__ ifeval (char const**) ;
 scalar_t__* ignore ;
 size_t incomment ;
 int input ;
 char* keyword ;
 int linenum ;
 size_t linestate ;
 int * linestate_name ;
 scalar_t__ linetype_2dodgy (scalar_t__) ;
 scalar_t__ linetype_if2elif (scalar_t__) ;
 char* matchsym (char*,char*) ;
 int * newline ;
 int * newline_crlf ;
 int * newline_unix ;
 char* skipcomment (char const*) ;
 char* skiphash () ;
 char* skipline (char const*) ;
 char* skipsym (char*) ;
 int strcpy (char const*,int *) ;
 int strlen (int *) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ strrchr (char const*,char) ;
 char const* tline ;
 int ** value ;

__attribute__((used)) static Linetype
parseline(void)
{
 const char *cp;
 int cursym;
 Linetype retval;
 Comment_state wascomment;

 wascomment = incomment;
 cp = skiphash();
 if (cp == ((void*)0))
  return (LT_EOF);
 if (newline == ((void*)0)) {
  if (strrchr(tline, '\n') == strrchr(tline, '\r') + 1)
   newline = newline_crlf;
  else
   newline = newline_unix;
 }
 if (*cp == '\0') {
  retval = LT_PLAIN;
  goto done;
 }
 keyword = tline + (cp - tline);
 if ((cp = matchsym("ifdef", keyword)) != ((void*)0) ||
     (cp = matchsym("ifndef", keyword)) != ((void*)0)) {
  cp = skipcomment(cp);
  if ((cursym = findsym(&cp)) < 0)
   retval = LT_IF;
  else {
   retval = (keyword[2] == 'n')
       ? LT_FALSE : LT_TRUE;
   if (value[cursym] == ((void*)0))
    retval = (retval == LT_TRUE)
        ? LT_FALSE : LT_TRUE;
   if (ignore[cursym])
    retval = (retval == LT_TRUE)
        ? LT_TRUEI : LT_FALSEI;
  }
 } else if ((cp = matchsym("if", keyword)) != ((void*)0))
  retval = ifeval(&cp);
 else if ((cp = matchsym("elif", keyword)) != ((void*)0))
  retval = linetype_if2elif(ifeval(&cp));
 else if ((cp = matchsym("else", keyword)) != ((void*)0))
  retval = LT_ELSE;
 else if ((cp = matchsym("endif", keyword)) != ((void*)0))
  retval = LT_ENDIF;
 else {
  cp = skipsym(keyword);

  if (strncmp(cp, "\\\r\n", 3) == 0 ||
      strncmp(cp, "\\\n", 2) == 0)
   Eioccc();
  cp = skipline(cp);
  retval = LT_PLAIN;
  goto done;
 }
 cp = skipcomment(cp);
 if (*cp != '\0') {
  cp = skipline(cp);
  if (retval == LT_TRUE || retval == LT_FALSE ||
      retval == LT_TRUEI || retval == LT_FALSEI)
   retval = LT_IF;
  if (retval == LT_ELTRUE || retval == LT_ELFALSE)
   retval = LT_ELIF;
 }


 if (linestate == LS_HASH) {
  long len = cp - tline;
  if (fgets(tline + len, MAXLINE - len, input) == ((void*)0)) {
   if (ferror(input))
    err(2, "can't read %s", filename);

   strcpy(tline + len, newline);
   cp += strlen(newline);
   linestate = LS_START;
  } else {
   linestate = LS_DIRTY;
  }
 }
 if (retval != LT_PLAIN && (wascomment || linestate != LS_START)) {
  retval = linetype_2dodgy(retval);
  linestate = LS_DIRTY;
 }
done:
 debug("parser line %d state %s comment %s line", linenum,
     comment_name[incomment], linestate_name[linestate]);
 return (retval);
}
