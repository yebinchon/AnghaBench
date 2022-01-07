
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_4__ {int pack_fd; } ;
struct TYPE_3__ {int (* init_fn ) (int *) ;} ;


 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die_errno (int ,char const*) ;
 scalar_t__ from_stdin ;
 int input_ctx ;
 scalar_t__ input_fd ;
 TYPE_2__ nothread_data ;
 int odb_mkstemp (struct strbuf*,char*) ;
 scalar_t__ open (char const*,int,...) ;
 int output_fd ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int stub1 (int *) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static const char *open_pack_file(const char *pack_name)
{
 if (from_stdin) {
  input_fd = 0;
  if (!pack_name) {
   struct strbuf tmp_file = STRBUF_INIT;
   output_fd = odb_mkstemp(&tmp_file,
      "pack/tmp_pack_XXXXXX");
   pack_name = strbuf_detach(&tmp_file, ((void*)0));
  } else {
   output_fd = open(pack_name, O_CREAT|O_EXCL|O_RDWR, 0600);
   if (output_fd < 0)
    die_errno(_("unable to create '%s'"), pack_name);
  }
  nothread_data.pack_fd = output_fd;
 } else {
  input_fd = open(pack_name, O_RDONLY);
  if (input_fd < 0)
   die_errno(_("cannot open packfile '%s'"), pack_name);
  output_fd = -1;
  nothread_data.pack_fd = input_fd;
 }
 the_hash_algo->init_fn(&input_ctx);
 return pack_name;
}
