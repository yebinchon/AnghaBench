
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int intmax_t ;
typedef int hname ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int buf ;
struct TYPE_9__ {int (* close ) (TYPE_2__*) ;} ;
struct TYPE_8__ {char* data; int size; } ;
typedef int FILE ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;


 int MAXHOSTNAMELEN ;
 int O_CREAT ;
 int O_EXCL ;
 int O_EXLOCK ;
 int O_RDWR ;
 int RPC_SUCCESS ;
 int YPMAXRECORD ;
 int YPPROC_CLEAR ;
 int YPPROG ;
 int YPVERS ;


 int YP_TRUE ;
 int callrpc (char*,int ,int ,int ,int ,char*,int ,char*) ;
 char* clnt_sperrno (int) ;
 int err (int,char*,...) ;
 int exit (int ) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int gethostname (char*,int) ;
 int getopt (int,char**,char*) ;
 TYPE_2__* open_db (char*,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int snprintf (char*,int,char*,int ) ;
 int * stdin ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ time (int *) ;
 int unwind (char*) ;
 int usage () ;
 int warnx (char*,...) ;
 scalar_t__ xdr_void ;
 int yp_put_record (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;

int
main(int argc, char *argv[])
{
 int ch;
 int un = 0;
 int clear = 0;
 int filter_plusminus = 0;
 char *infile = ((void*)0);
 char *map = ((void*)0);
 char *domain = ((void*)0);
 char *infilename = ((void*)0);
 char *outfilename = ((void*)0);
 char *mastername = ((void*)0);
 int interdom = 0;
 int secure = 0;
 DB *dbp;
 DBT key, data;
 char buf[10240];
 char *keybuf, *datbuf;
 FILE *ifp;
 char hname[MAXHOSTNAMELEN + 2];

 while ((ch = getopt(argc, argv, "uhcbsfd:i:o:m:")) != -1) {
  switch (ch) {
  case 'f':
   filter_plusminus++;
   break;
  case 'u':
   un++;
   break;
  case 'c':
   clear++;
   break;
  case 'b':
   interdom++;
   break;
  case 's':
   secure++;
   break;
  case 'd':
   domain = optarg;
   break;
  case 'i':
   infilename = optarg;
   break;
  case 'o':
   outfilename = optarg;
   break;
  case 'm':
   mastername = optarg;
   break;
  case 'h':
  default:
   usage();
   break;
  }
 }

 argc -= optind;
 argv += optind;

 if (un) {
  map = argv[0];
  if (map == ((void*)0))
   usage();
  unwind(map);
  exit(0);

 }

 infile = argv[0];
 map = argv[1];

 if (infile == ((void*)0) || map == ((void*)0)) {
  if (clear)
   goto doclear;
  usage();
 }

 if (mastername == ((void*)0)) {
  if (gethostname((char *)&hname, sizeof(hname)) == -1)
   err(1, "gethostname() failed");
  mastername = (char *)&hname;
 }






 if (!strcmp(infile, "-")) {
  ifp = stdin;
 } else {
  if ((ifp = fopen(infile, "r")) == ((void*)0))
   err(1, "failed to open %s", infile);
 }

 if ((dbp = open_db(map, O_RDWR|O_EXLOCK|O_EXCL|O_CREAT)) == ((void*)0))
  err(1, "open_db(%s) failed", map);

 if (interdom) {
  key.data = "YP_INTERDOMAIN";
  key.size = sizeof("YP_INTERDOMAIN") - 1;
  data.data = "";
  data.size = 0;
  yp_put_record(dbp, &key, &data, 0);
 }

 if (secure) {
  key.data = "YP_SECURE";
  key.size = sizeof("YP_SECURE") - 1;
  data.data = "";
  data.size = 0;
  yp_put_record(dbp, &key, &data, 0);
 }

 key.data = "YP_MASTER_NAME";
 key.size = sizeof("YP_MASTER_NAME") - 1;
 data.data = mastername;
 data.size = strlen(mastername);
 yp_put_record(dbp, &key, &data, 0);

 key.data = "YP_LAST_MODIFIED";
 key.size = sizeof("YP_LAST_MODIFIED") - 1;
 snprintf(buf, sizeof(buf), "%jd", (intmax_t)time(((void*)0)));
 data.data = (char *)&buf;
 data.size = strlen(buf);
 yp_put_record(dbp, &key, &data, 0);

 if (infilename) {
  key.data = "YP_INPUT_FILE";
  key.size = sizeof("YP_INPUT_FILE") - 1;
  data.data = infilename;
  data.size = strlen(infilename);
  yp_put_record(dbp, &key, &data, 0);
 }

 if (outfilename) {
  key.data = "YP_OUTPUT_FILE";
  key.size = sizeof("YP_OUTPUT_FILE") - 1;
  data.data = outfilename;
  data.size = strlen(outfilename);
  yp_put_record(dbp, &key, &data, 0);
 }

 if (domain) {
  key.data = "YP_DOMAIN_NAME";
  key.size = sizeof("YP_DOMAIN_NAME") - 1;
  data.data = domain;
  data.size = strlen(domain);
  yp_put_record(dbp, &key, &data, 0);
 }

 while (fgets((char *)&buf, sizeof(buf), ifp)) {
  char *sep = ((void*)0);
  int rval;


  if ((sep = strchr(buf, '\n')))
   *sep = '\0';


  while (buf[strlen(buf) - 1] == '\\') {
   fgets((char *)&buf[strlen(buf) - 1],
     sizeof(buf) - strlen(buf), ifp);
   if ((sep = strchr(buf, '\n')))
    *sep = '\0';
  }


  if ((sep = strpbrk(buf, " \t")) == ((void*)0)) {
   warnx("bad input -- no white space: %s", buf);
   continue;
  }


  keybuf = (char *)&buf;
  datbuf = sep + 1;
  *sep = '\0';


  while (*datbuf == ' ' || *datbuf == '\t')
   datbuf++;


  if (filter_plusminus) {
   if (*keybuf == '+' || *keybuf == '-' ||
        *datbuf == '+' || *datbuf == '-') {
    warnx("bad character at "
        "start of line: %s", buf);
    continue;
   }
  }

  if (strlen(keybuf) > YPMAXRECORD) {
   warnx("key too long: %s", keybuf);
   continue;
  }

  if (!strlen(keybuf)) {
   warnx("no key -- check source file for blank lines");
   continue;
  }

  if (strlen(datbuf) > YPMAXRECORD) {
   warnx("data too long: %s", datbuf);
   continue;
  }

  key.data = keybuf;
  key.size = strlen(keybuf);
  data.data = datbuf;
  data.size = strlen(datbuf);

  if ((rval = yp_put_record(dbp, &key, &data, 0)) != YP_TRUE) {
   switch (rval) {
   case 128:
    warnx("duplicate key '%s' - skipping", keybuf);
    break;
   case 129:
   default:
    err(1,"failed to write new record - exiting");
    break;
   }
  }

 }

 (void)(dbp->close)(dbp);

doclear:
 if (clear) {
  char in = 0;
  char *out = ((void*)0);
  int stat;
  if ((stat = callrpc("localhost", YPPROG,YPVERS, YPPROC_CLEAR,
   (xdrproc_t)xdr_void, &in,
   (xdrproc_t)xdr_void, out)) != RPC_SUCCESS) {
   warnx("failed to send 'clear' to local ypserv: %s",
    clnt_sperrno((enum clnt_stat) stat));
  }
 }

 exit(0);
}
