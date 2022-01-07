
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int crlf_in_old; int ws_rule; } ;


 int WS_CR_AT_EOL ;

__attribute__((used)) static void check_old_for_crlf(struct patch *patch, const char *line, int len)
{
 if (len >= 2 && line[len-1] == '\n' && line[len-2] == '\r') {
  patch->ws_rule |= WS_CR_AT_EOL;
  patch->crlf_in_old = 1;
 }
}
