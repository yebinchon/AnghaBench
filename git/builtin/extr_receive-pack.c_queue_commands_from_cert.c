
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
struct command {int dummy; } ;


 int die (char*,...) ;
 char* memchr (char const*,char,int) ;
 int parse_signature (char*,int ) ;
 struct command** queue_command (struct command**,char const*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void queue_commands_from_cert(struct command **tail,
         struct strbuf *push_cert)
{
 const char *boc, *eoc;

 if (*tail)
  die("protocol error: got both push certificate and unsigned commands");

 boc = strstr(push_cert->buf, "\n\n");
 if (!boc)
  die("malformed push certificate %.*s", 100, push_cert->buf);
 else
  boc += 2;
 eoc = push_cert->buf + parse_signature(push_cert->buf, push_cert->len);

 while (boc < eoc) {
  const char *eol = memchr(boc, '\n', eoc - boc);
  tail = queue_command(tail, boc, eol ? eol - boc : eoc - boc);
  boc = eol ? eol + 1 : eoc;
 }
}
