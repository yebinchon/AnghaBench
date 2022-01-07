
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct strbuf {scalar_t__ len; int buf; } ;
struct pack_objects_args {int dummy; } ;
struct child_process {int in; int out; } ;
struct TYPE_2__ {scalar_t__ hexsz; } ;
typedef int FILE ;


 struct child_process CHILD_PROCESS_INIT ;
 scalar_t__ EOF ;
 int FOR_EACH_OBJECT_PROMISOR_ONLY ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int close (int) ;
 int die (int ) ;
 int die_errno (int ,char*) ;
 int fclose (int *) ;
 scalar_t__ finish_command (struct child_process*) ;
 int for_each_packed_object (int ,struct child_process*,int ) ;
 int free (char*) ;
 char* mkpathdup (char*,int ,int ) ;
 int open (char*,int,int) ;
 int packtmp ;
 int prepare_pack_objects (struct child_process*,struct pack_objects_args const*) ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int *) ;
 int string_list_append (struct string_list*,int ) ;
 TYPE_1__* the_hash_algo ;
 int write_oid ;
 int * xfdopen (int ,char*) ;

__attribute__((used)) static void repack_promisor_objects(const struct pack_objects_args *args,
        struct string_list *names)
{
 struct child_process cmd = CHILD_PROCESS_INIT;
 FILE *out;
 struct strbuf line = STRBUF_INIT;

 prepare_pack_objects(&cmd, args);
 cmd.in = -1;
 for_each_packed_object(write_oid, &cmd,
          FOR_EACH_OBJECT_PROMISOR_ONLY);

 if (cmd.in == -1)

  return;

 close(cmd.in);

 out = xfdopen(cmd.out, "r");
 while (strbuf_getline_lf(&line, out) != EOF) {
  char *promisor_name;
  int fd;
  if (line.len != the_hash_algo->hexsz)
   die(_("repack: Expecting full hex object ID lines only from pack-objects."));
  string_list_append(names, line.buf);
  promisor_name = mkpathdup("%s-%s.promisor", packtmp,
       line.buf);
  fd = open(promisor_name, O_CREAT|O_EXCL|O_WRONLY, 0600);
  if (fd < 0)
   die_errno(_("unable to create '%s'"), promisor_name);
  close(fd);
  free(promisor_name);
 }
 fclose(out);
 if (finish_command(&cmd))
  die(_("could not finish pack-objects to repack promisor objects"));
}
