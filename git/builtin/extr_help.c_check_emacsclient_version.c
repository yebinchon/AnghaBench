
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct child_process {char const** argv; int err; int stdout_to_stderr; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int atoi (int ) ;
 int close (int) ;
 int error (int ,...) ;
 int finish_command (struct child_process*) ;
 scalar_t__ start_command (struct child_process*) ;
 int starts_with (int ,char*) ;
 int strbuf_read (struct strbuf*,int,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_remove (struct strbuf*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int check_emacsclient_version(void)
{
 struct strbuf buffer = STRBUF_INIT;
 struct child_process ec_process = CHILD_PROCESS_INIT;
 const char *argv_ec[] = { "emacsclient", "--version", ((void*)0) };
 int version;


 ec_process.argv = argv_ec;
 ec_process.err = -1;
 ec_process.stdout_to_stderr = 1;
 if (start_command(&ec_process))
  return error(_("Failed to start emacsclient."));

 strbuf_read(&buffer, ec_process.err, 20);
 close(ec_process.err);





 finish_command(&ec_process);

 if (!starts_with(buffer.buf, "emacsclient")) {
  strbuf_release(&buffer);
  return error(_("Failed to parse emacsclient version."));
 }

 strbuf_remove(&buffer, 0, strlen("emacsclient"));
 version = atoi(buffer.buf);

 if (version < 22) {
  strbuf_release(&buffer);
  return error(_("emacsclient version '%d' too old (< 22)."),
   version);
 }

 strbuf_release(&buffer);
 return 0;
}
