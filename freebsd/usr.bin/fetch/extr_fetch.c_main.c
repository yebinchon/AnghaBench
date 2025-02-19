
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
typedef void* off_t ;


 int A_flag ;
 scalar_t__ B_size ;
 scalar_t__ ENOENT ;
 int ENOMEM ;
 scalar_t__ FETCH_MOVED ;
 scalar_t__ FETCH_RESOLV ;
 scalar_t__ FETCH_UNAVAIL ;
 scalar_t__ FETCH_UNKNOWN ;
 scalar_t__ FETCH_URL ;
 int F_flag ;
 scalar_t__ MINBUFSIZE ;
 char const* N_filename ;
 int PF_INET ;
 int PF_INET6 ;
 int R_flag ;
 scalar_t__ SA_RESETHAND ;
 int SIGALRM ;
 int SIGINT ;
 int STDERR_FILENO ;
 int S_IFDIR ;
 void* S_size ;
 void* T_secs ;
 int U_flag ;
 int a_flag ;
 int asprintf (char**,char*,char const*,char const*,...) ;
 int b_flag ;
 int * buf ;
 char* c_dirname ;
 int d_flag ;
 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int exit (int) ;
 char* f_filename ;
 int family ;
 int fetch (char*,char const*) ;
 int fetchAuthMethod ;
 scalar_t__ fetchLastErrCode ;
 scalar_t__ fetchRestartCalls ;
 int fprintf (int ,char*,void*) ;
 int free (char*) ;
 scalar_t__ ftp_timeout ;
 char* getenv (char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int getpgrp () ;
 int getpid () ;
 char* h_hostname ;
 scalar_t__ http_timeout ;
 char* i_filename ;
 int i_flag ;
 scalar_t__ isatty (int ) ;
 int kill (int ,int ) ;
 int l_flag ;
 int longopts ;
 int m_flag ;
 int * malloc (scalar_t__) ;
 int n_flag ;
 int o_directory ;
 char const* o_filename ;
 int o_flag ;
 int o_stdout ;
 int once_flag ;
 char* optarg ;
 scalar_t__ optind ;
 int p_flag ;
 int pgrp ;
 int query_auth ;
 int r_flag ;
 int s_flag ;
 int setenv (char*,char const*,int) ;
 int sig_handler ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 scalar_t__ sigint ;
 int sleep (void*) ;
 int stat (char const*,struct stat*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strcspn (char*,char*) ;
 char const* strerror (int ) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 void* strtol (char const*,char**,int) ;
 int t_flag ;
 int usage () ;
 scalar_t__ v_level ;
 int v_progress ;
 scalar_t__ v_tty ;
 void* w_secs ;
 int warnx (char*,...) ;

int
main(int argc, char *argv[])
{
 struct stat sb;
 struct sigaction sa;
 const char *p, *s;
 char *end, *q;
 int c, e, r;


 while ((c = getopt_long(argc, argv,
     "146AaB:bc:dFf:Hh:i:lMmN:nPpo:qRrS:sT:tUvw:",
     longopts, ((void*)0))) != -1)
  switch (c) {
  case '1':
   once_flag = 1;
   break;
  case '4':
   family = PF_INET;
   break;
  case '6':
   family = PF_INET6;
   break;
  case 'A':
   A_flag = 1;
   break;
  case 'a':
   a_flag = 1;
   break;
  case 'B':
   B_size = (off_t)strtol(optarg, &end, 10);
   if (*optarg == '\0' || *end != '\0')
    errx(1, "invalid buffer size (%s)", optarg);
   break;
  case 'b':
   warnx("warning: the -b option is deprecated");
   b_flag = 1;
   break;
  case 'c':
   c_dirname = optarg;
   break;
  case 'd':
   d_flag = 1;
   break;
  case 'F':
   F_flag = 1;
   break;
  case 'f':
   f_filename = optarg;
   break;
  case 'H':
   warnx("the -H option is now implicit, "
       "use -U to disable");
   break;
  case 'h':
   h_hostname = optarg;
   break;
  case 'i':
   i_flag = 1;
   i_filename = optarg;
   break;
  case 'l':
   l_flag = 1;
   break;
  case 'o':
   o_flag = 1;
   o_filename = optarg;
   break;
  case 'M':
  case 'm':
   if (r_flag)
    errx(1, "the -m and -r flags "
        "are mutually exclusive");
   m_flag = 1;
   break;
  case 'N':
   N_filename = optarg;
   break;
  case 'n':
   n_flag = 1;
   break;
  case 'P':
  case 'p':
   p_flag = 1;
   break;
  case 'q':
   v_level = 0;
   break;
  case 'R':
   R_flag = 1;
   break;
  case 'r':
   if (m_flag)
    errx(1, "the -m and -r flags "
        "are mutually exclusive");
   r_flag = 1;
   break;
  case 'S':
   S_size = (off_t)strtol(optarg, &end, 10);
   if (*optarg == '\0' || *end != '\0')
    errx(1, "invalid size (%s)", optarg);
   break;
  case 's':
   s_flag = 1;
   break;
  case 'T':
   T_secs = strtol(optarg, &end, 10);
   if (*optarg == '\0' || *end != '\0')
    errx(1, "invalid timeout (%s)", optarg);
   break;
  case 't':
   t_flag = 1;
   warnx("warning: the -t option is deprecated");
   break;
  case 'U':
   U_flag = 1;
   break;
  case 'v':
   v_level++;
   break;
  case 'w':
   a_flag = 1;
   w_secs = strtol(optarg, &end, 10);
   if (*optarg == '\0' || *end != '\0')
    errx(1, "invalid delay (%s)", optarg);
   break;
  case 141:
   setenv("FETCH_BIND_ADDRESS", optarg, 1);
   break;
  case 138:
   setenv("FTP_PASSIVE_MODE", "no", 1);
   break;
  case 140:
   setenv("HTTP_REFERER", optarg, 1);
   break;
  case 139:
   setenv("HTTP_USER_AGENT", optarg, 1);
   break;
  case 137:
   setenv("NO_PROXY", optarg, 1);
   break;
  case 136:
   setenv("SSL_CA_CERT_FILE", optarg, 1);
   break;
  case 135:
   setenv("SSL_CA_CERT_PATH", optarg, 1);
   break;
  case 134:
   setenv("SSL_CLIENT_CERT_FILE", optarg, 1);
   break;
  case 133:
   setenv("SSL_CLIENT_KEY_FILE", optarg, 1);
   break;
  case 132:
   setenv("SSL_CLIENT_CRL_FILE", optarg, 1);
   break;
  case 131:
   setenv("SSL_NO_SSL3", "", 1);
   break;
  case 130:
   setenv("SSL_NO_TLS1", "", 1);
   break;
  case 129:
   setenv("SSL_NO_VERIFY_HOSTNAME", "", 1);
   break;
  case 128:
   setenv("SSL_NO_VERIFY_PEER", "", 1);
   break;
  default:
   usage();
   exit(1);
  }

 argc -= optind;
 argv += optind;

 if (h_hostname || f_filename || c_dirname) {
  if (!h_hostname || !f_filename || argc) {
   usage();
   exit(1);
  }

  if (strcspn(h_hostname, "@:/") != strlen(h_hostname))
   errx(1, "invalid hostname");
  if (asprintf(argv, "ftp://%s/%s/%s", h_hostname,
      c_dirname ? c_dirname : "", f_filename) == -1)
   errx(1, "%s", strerror(ENOMEM));
  argc++;
 }

 if (!argc) {
  usage();
  exit(1);
 }


 if (B_size < MINBUFSIZE)
  B_size = MINBUFSIZE;
 if ((buf = malloc(B_size)) == ((void*)0))
  errx(1, "%s", strerror(ENOMEM));


 if ((s = getenv("FTP_TIMEOUT")) != ((void*)0)) {
  ftp_timeout = strtol(s, &end, 10);
  if (*s == '\0' || *end != '\0' || ftp_timeout < 0) {
   warnx("FTP_TIMEOUT (%s) is not a positive integer", s);
   ftp_timeout = 0;
  }
 }
 if ((s = getenv("HTTP_TIMEOUT")) != ((void*)0)) {
  http_timeout = strtol(s, &end, 10);
  if (*s == '\0' || *end != '\0' || http_timeout < 0) {
   warnx("HTTP_TIMEOUT (%s) is not a positive integer", s);
   http_timeout = 0;
  }
 }


 sa.sa_flags = 0;
 sa.sa_handler = sig_handler;
 sigemptyset(&sa.sa_mask);
 sigaction(SIGALRM, &sa, ((void*)0));
 sa.sa_flags = SA_RESETHAND;
 sigaction(SIGINT, &sa, ((void*)0));
 fetchRestartCalls = 0;


 if (o_flag) {
  if (strcmp(o_filename, "-") == 0) {
   o_stdout = 1;
  } else if (stat(o_filename, &sb) == -1) {
   if (errno == ENOENT) {
    if (argc > 1)
     errx(1, "%s is not a directory",
         o_filename);
   } else {
    err(1, "%s", o_filename);
   }
  } else {
   if (sb.st_mode & S_IFDIR)
    o_directory = 1;
  }
 }


 v_tty = isatty(STDERR_FILENO);
 v_progress = v_tty && v_level > 0;
 if (v_progress)
  pgrp = getpgrp();

 r = 0;


 if (v_tty)
  fetchAuthMethod = query_auth;
 if (N_filename != ((void*)0))
  if (setenv("NETRC", N_filename, 1) == -1)
   err(1, "setenv: cannot set NETRC=%s", N_filename);

 while (argc) {
  if ((p = strrchr(*argv, '/')) == ((void*)0))
   p = *argv;
  else
   p++;

  if (!*p)
   p = "fetch.out";

  fetchLastErrCode = 0;

  if (o_flag) {
   if (o_stdout) {
    e = fetch(*argv, "-");
   } else if (o_directory) {
    asprintf(&q, "%s/%s", o_filename, p);
    e = fetch(*argv, q);
    free(q);
   } else {
    e = fetch(*argv, o_filename);
   }
  } else {
   e = fetch(*argv, p);
  }

  if (sigint)
   kill(getpid(), SIGINT);

  if (e == 0 && once_flag)
   exit(0);

  if (e) {
   r = 1;
   if ((fetchLastErrCode
       && fetchLastErrCode != FETCH_UNAVAIL
       && fetchLastErrCode != FETCH_MOVED
       && fetchLastErrCode != FETCH_URL
       && fetchLastErrCode != FETCH_RESOLV
       && fetchLastErrCode != FETCH_UNKNOWN)) {
    if (w_secs && v_level)
     fprintf(stderr, "Waiting %ld seconds "
         "before retrying\n", w_secs);
    if (w_secs)
     sleep(w_secs);
    if (a_flag)
     continue;
   }
  }

  argc--, argv++;
 }

 exit(r);
}
