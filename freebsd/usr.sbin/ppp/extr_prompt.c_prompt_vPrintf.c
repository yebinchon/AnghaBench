
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct prompt {int nonewline; int Term; scalar_t__ TermMode; scalar_t__ active; } ;


 int LINE_LEN ;
 int fflush (int ) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 int vfprintf (int ,char const*,int ) ;

void
prompt_vPrintf(struct prompt *p, const char *fmt, va_list ap)
{
  if (p && p->active) {
    char nfmt[LINE_LEN];
    const char *pfmt;

    if (p->TermMode) {

      size_t len = strlen(fmt);

      if (len && len < sizeof nfmt - 1 && fmt[len-1] == '\n' &&
          (len == 1 || fmt[len-2] != '\r')) {
        strcpy(nfmt, fmt);
        strcpy(nfmt + len - 1, "\r\n");
        pfmt = nfmt;
      } else
        pfmt = fmt;
    } else
      pfmt = fmt;
    vfprintf(p->Term, pfmt, ap);
    fflush(p->Term);
    p->nonewline = 1;
  }
}
