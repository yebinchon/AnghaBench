
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {unsigned long len; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 char* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static char *anonymize_blob(unsigned long *size)
{
 static int counter;
 struct strbuf out = STRBUF_INIT;
 strbuf_addf(&out, "anonymous blob %d", counter++);
 *size = out.len;
 return strbuf_detach(&out, ((void*)0));
}
