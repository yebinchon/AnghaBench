
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;


 struct strbuf STRBUF_INIT ;
 char* get_object_directory () ;
 int safe_create_dir (int ,int) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

__attribute__((used)) static void create_object_directory(void)
{
 struct strbuf path = STRBUF_INIT;
 size_t baselen;

 strbuf_addstr(&path, get_object_directory());
 baselen = path.len;

 safe_create_dir(path.buf, 1);

 strbuf_setlen(&path, baselen);
 strbuf_addstr(&path, "/pack");
 safe_create_dir(path.buf, 1);

 strbuf_setlen(&path, baselen);
 strbuf_addstr(&path, "/info");
 safe_create_dir(path.buf, 1);

 strbuf_release(&path);
}
