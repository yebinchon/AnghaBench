
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 void* strbuf_detach (struct strbuf*,size_t*) ;

__attribute__((used)) static void *anonymize_path_component(const void *path, size_t *len)
{
 static int counter;
 struct strbuf out = STRBUF_INIT;
 strbuf_addf(&out, "path%d", counter++);
 return strbuf_detach(&out, len);
}
