
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pack_header {void* hdr_entries; void* hdr_version; void* hdr_signature; } ;
struct object_id {int hash; } ;
struct TYPE_2__ {int rawsz; int (* final_fn ) (int ,int *) ;int (* update_fn ) (int *,scalar_t__,scalar_t__) ;int (* init_fn ) (int *) ;} ;


 int PACK_SIGNATURE ;
 char* _ (char*) ;
 scalar_t__ buffer ;
 int ctx ;
 int die (char*,...) ;
 int dry_run ;
 int fill (int ) ;
 scalar_t__ fsck_finish (int *) ;
 int fsck_options ;
 int fsck_set_msg_types (int *,char const*) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int has_errors ;
 int hasheq (int ,int ) ;
 void* htonl (int ) ;
 int isatty (int) ;
 int len ;
 int max_input_size ;
 scalar_t__ offset ;
 int quiet ;
 scalar_t__ read_replace_refs ;
 int recover ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int strict ;
 int strtoul (char const*,char**,int) ;
 int strtoumax (char const*,int *,int) ;
 int stub1 (int *) ;
 int stub2 (int *,scalar_t__,scalar_t__) ;
 int stub3 (int ,int *) ;
 TYPE_1__* the_hash_algo ;
 int unpack_all () ;
 int unpack_usage ;
 int usage (int ) ;
 int use (int ) ;
 int write_rest () ;
 int xwrite (int,scalar_t__,int) ;

int cmd_unpack_objects(int argc, const char **argv, const char *prefix)
{
 int i;
 struct object_id oid;

 read_replace_refs = 0;

 git_config(git_default_config, ((void*)0));

 quiet = !isatty(2);

 for (i = 1 ; i < argc; i++) {
  const char *arg = argv[i];

  if (*arg == '-') {
   if (!strcmp(arg, "-n")) {
    dry_run = 1;
    continue;
   }
   if (!strcmp(arg, "-q")) {
    quiet = 1;
    continue;
   }
   if (!strcmp(arg, "-r")) {
    recover = 1;
    continue;
   }
   if (!strcmp(arg, "--strict")) {
    strict = 1;
    continue;
   }
   if (skip_prefix(arg, "--strict=", &arg)) {
    strict = 1;
    fsck_set_msg_types(&fsck_options, arg);
    continue;
   }
   if (starts_with(arg, "--pack_header=")) {
    struct pack_header *hdr;
    char *c;

    hdr = (struct pack_header *)buffer;
    hdr->hdr_signature = htonl(PACK_SIGNATURE);
    hdr->hdr_version = htonl(strtoul(arg + 14, &c, 10));
    if (*c != ',')
     die("bad %s", arg);
    hdr->hdr_entries = htonl(strtoul(c + 1, &c, 10));
    if (*c)
     die("bad %s", arg);
    len = sizeof(*hdr);
    continue;
   }
   if (skip_prefix(arg, "--max-input-size=", &arg)) {
    max_input_size = strtoumax(arg, ((void*)0), 10);
    continue;
   }
   usage(unpack_usage);
  }


  usage(unpack_usage);
 }
 the_hash_algo->init_fn(&ctx);
 unpack_all();
 the_hash_algo->update_fn(&ctx, buffer, offset);
 the_hash_algo->final_fn(oid.hash, &ctx);
 if (strict) {
  write_rest();
  if (fsck_finish(&fsck_options))
   die(_("fsck error in pack objects"));
 }
 if (!hasheq(fill(the_hash_algo->rawsz), oid.hash))
  die("final sha1 did not match");
 use(the_hash_algo->rawsz);


 while (len) {
  int ret = xwrite(1, buffer + offset, len);
  if (ret <= 0)
   break;
  len -= ret;
  offset += ret;
 }


 return has_errors;
}
