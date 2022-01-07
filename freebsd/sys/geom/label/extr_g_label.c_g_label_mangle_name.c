
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct sbuf {int dummy; } ;


 int SBUF_FIXEDLEN ;
 int isprint (char const) ;
 scalar_t__ isspace (char const) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 scalar_t__ sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,size_t,int ) ;
 int sbuf_printf (struct sbuf*,char*,char const) ;
 int sbuf_putc (struct sbuf*,char const) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static void
g_label_mangle_name(char *label, size_t size)
{
 struct sbuf *sb;
 const u_char *c;

 sb = sbuf_new(((void*)0), ((void*)0), size, SBUF_FIXEDLEN);
 for (c = label; *c != '\0'; c++) {
  if (!isprint(*c) || isspace(*c) || *c =='"' || *c == '%')
   sbuf_printf(sb, "%%%02X", *c);
  else
   sbuf_putc(sb, *c);
 }
 if (sbuf_finish(sb) != 0)
  label[0] = '\0';
 else
  strlcpy(label, sbuf_data(sb), size);
 sbuf_delete(sb);
}
