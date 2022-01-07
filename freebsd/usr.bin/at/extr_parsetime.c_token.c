
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOT ;
 int EOF ;
 int JUNK ;
 int MINUS ;
 int NUMBER ;
 int PLUS ;
 int SLASH ;
 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ isspace (char) ;
 int memset (char*,int ,int ) ;
 int need ;
 int parse_token (char*) ;
 int sc_len ;
 char* sc_token ;
 int sc_tokid ;
 scalar_t__ sc_tokplur ;
 int scc ;
 char** scp ;
 char* sct ;

__attribute__((used)) static int
token(void)
{
    int idx;

    while (1) {
 memset(sc_token, 0, sc_len);
 sc_tokid = EOF;
 sc_tokplur = 0;
 idx = 0;




 if (need) {
     if (scc < 1)
  return sc_tokid;
     sct = *scp;
     scp++;
     scc--;
     need = 0;
 }




 while (isspace(*sct))
     ++sct;
 if (!*sct) {
     need = 1;
     continue;
 }



 sc_token[0] = *sct++;



 if (isdigit(sc_token[0])) {
     while (isdigit(*sct))
  sc_token[++idx] = *sct++;
     sc_token[++idx] = 0;
     return sc_tokid = NUMBER;
 }
 else if (isalpha(sc_token[0])) {
     while (isalpha(*sct))
  sc_token[++idx] = *sct++;
     sc_token[++idx] = 0;
     return parse_token(sc_token);
 }
 else if (sc_token[0] == ':' || sc_token[0] == '.')
     return sc_tokid = DOT;
 else if (sc_token[0] == '+')
     return sc_tokid = PLUS;
 else if (sc_token[0] == '-')
     return sc_tokid = MINUS;
 else if (sc_token[0] == '/')
     return sc_tokid = SLASH;
 else
     return sc_tokid = JUNK;
    }
}
