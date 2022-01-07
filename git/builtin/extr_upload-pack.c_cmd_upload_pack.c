
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upload_pack_options {int stateless_rpc; int advertise_refs; int daemon_mode; scalar_t__ timeout; int member_0; } ;
struct serve_options {int advertise_capabilities; int stateless_rpc; } ;
struct option {int dummy; } ;


 int BUG (char*) ;
 int N_ (char*) ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_INTEGER (int ,char*,scalar_t__*,int ) ;
 struct serve_options SERVE_OPTIONS_INIT ;
 int determine_protocol_version_server () ;
 int die (char*,char const*) ;
 int enter_repo (char const*,int) ;
 int packet_trace_identity (char*) ;
 int packet_write_fmt (int,char*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;




 scalar_t__ read_replace_refs ;
 int serve (struct serve_options*) ;
 int setup_path () ;
 int upload_pack (struct upload_pack_options*) ;
 int upload_pack_usage ;
 int usage_with_options (int ,struct option*) ;

int cmd_upload_pack(int argc, const char **argv, const char *prefix)
{
 const char *dir;
 int strict = 0;
 struct upload_pack_options opts = { 0 };
 struct serve_options serve_opts = SERVE_OPTIONS_INIT;
 struct option options[] = {
  OPT_BOOL(0, "stateless-rpc", &opts.stateless_rpc,
    N_("quit after a single request/response exchange")),
  OPT_BOOL(0, "advertise-refs", &opts.advertise_refs,
    N_("exit immediately after initial ref advertisement")),
  OPT_BOOL(0, "strict", &strict,
    N_("do not try <directory>/.git/ if <directory> is no Git directory")),
  OPT_INTEGER(0, "timeout", &opts.timeout,
       N_("interrupt transfer after <n> seconds of inactivity")),
  OPT_END()
 };

 packet_trace_identity("upload-pack");
 read_replace_refs = 0;

 argc = parse_options(argc, argv, prefix, options, upload_pack_usage, 0);

 if (argc != 1)
  usage_with_options(upload_pack_usage, options);

 if (opts.timeout)
  opts.daemon_mode = 1;

 setup_path();

 dir = argv[0];

 if (!enter_repo(dir, strict))
  die("'%s' does not appear to be a git repository", dir);

 switch (determine_protocol_version_server()) {
 case 128:
  serve_opts.advertise_capabilities = opts.advertise_refs;
  serve_opts.stateless_rpc = opts.stateless_rpc;
  serve(&serve_opts);
  break;
 case 129:




  if (opts.advertise_refs || !opts.stateless_rpc)
   packet_write_fmt(1, "version 1\n");


 case 130:
  upload_pack(&opts);
  break;
 case 131:
  BUG("unknown protocol version");
 }

 return 0;
}
