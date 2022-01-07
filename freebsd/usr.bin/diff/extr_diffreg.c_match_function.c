
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int FUNCTION_CONTEXT_SIZE ;
 int SEEK_SET ;
 scalar_t__ begins_with (unsigned char*,char*) ;
 size_t fread (unsigned char*,int,size_t,int *) ;
 int fseek (int *,long const,int ) ;
 scalar_t__ isalpha (unsigned char) ;
 char* lastbuf ;
 int lastline ;
 int lastmatchline ;
 size_t strcspn (unsigned char*,char*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,unsigned char*,int) ;

__attribute__((used)) static char *
match_function(const long *f, int pos, FILE *fp)
{
 unsigned char buf[FUNCTION_CONTEXT_SIZE];
 size_t nc;
 int last = lastline;
 const char *state = ((void*)0);

 lastline = pos;
 while (pos > last) {
  fseek(fp, f[pos - 1], SEEK_SET);
  nc = f[pos] - f[pos - 1];
  if (nc >= sizeof(buf))
   nc = sizeof(buf) - 1;
  nc = fread(buf, 1, nc, fp);
  if (nc > 0) {
   buf[nc] = '\0';
   buf[strcspn(buf, "\n")] = '\0';
   if (isalpha(buf[0]) || buf[0] == '_' || buf[0] == '$') {
    if (begins_with(buf, "private:")) {
     if (!state)
      state = " (private)";
    } else if (begins_with(buf, "protected:")) {
     if (!state)
      state = " (protected)";
    } else if (begins_with(buf, "public:")) {
     if (!state)
      state = " (public)";
    } else {
     strlcpy(lastbuf, buf, sizeof lastbuf);
     if (state)
      strlcat(lastbuf, state,
          sizeof lastbuf);
     lastmatchline = pos;
     return lastbuf;
    }
   }
  }
  pos--;
 }
 return lastmatchline > 0 ? lastbuf : ((void*)0);
}
