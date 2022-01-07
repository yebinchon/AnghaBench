
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ABUSEHOST ;
 char* ANICHOST ;
 char* FNICHOST ;
 char* GNICHOST ;
 char* IANAHOST ;
 char* INICHOST ;
 char* KNICHOST ;
 char* LNICHOST ;
 char* MNICHOST ;
 char* PDBHOST ;
 char* PNICHOST ;
 int QNICHOST_TAIL ;
 char* RNICHOST ;
 int SOCKSinit (char*) ;
 int WHOIS_QUICK ;
 int WHOIS_RECURSE ;
 int WHOIS_SPAM_ME ;
 char const* choose_server (char*) ;
 int exit (int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 void* optarg ;
 scalar_t__ optind ;
 void* port ;
 int reset_rir () ;
 int s_asprintf (char**,char*,char const*,int ) ;
 int usage () ;
 int whois (char*,char const*,int) ;

int
main(int argc, char *argv[])
{
 const char *country, *host;
 int ch, flags;





 country = host = ((void*)0);
 flags = 0;
 while ((ch = getopt(argc, argv, "aAbc:fgh:iIklmp:PQrRS")) != -1) {
  switch (ch) {
  case 'a':
   host = ANICHOST;
   break;
  case 'A':
   host = PNICHOST;
   break;
  case 'b':
   host = ABUSEHOST;
   break;
  case 'c':
   country = optarg;
   break;
  case 'f':
   host = FNICHOST;
   break;
  case 'g':
   host = GNICHOST;
   break;
  case 'h':
   host = optarg;
   break;
  case 'i':
   host = INICHOST;
   break;
  case 'I':
   host = IANAHOST;
   break;
  case 'k':
   host = KNICHOST;
   break;
  case 'l':
   host = LNICHOST;
   break;
  case 'm':
   host = MNICHOST;
   break;
  case 'p':
   port = optarg;
   break;
  case 'P':
   host = PDBHOST;
   break;
  case 'Q':
   flags |= WHOIS_QUICK;
   break;
  case 'r':
   host = RNICHOST;
   break;
  case 'R':
   flags |= WHOIS_RECURSE;
   break;
  case 'S':
   flags |= WHOIS_SPAM_ME;
   break;
  case '?':
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 if (!argc || (country != ((void*)0) && host != ((void*)0)))
  usage();




 if (host == ((void*)0) && country == ((void*)0)) {
  if ((host = getenv("WHOIS_SERVER")) == ((void*)0) &&
      (host = getenv("RA_SERVER")) == ((void*)0)) {
   if (!(flags & WHOIS_QUICK))
    flags |= WHOIS_RECURSE;
  }
 }
 while (argc-- > 0) {
  if (country != ((void*)0)) {
   char *qnichost;
   s_asprintf(&qnichost, "%s%s", country, QNICHOST_TAIL);
   whois(*argv, qnichost, flags);
   free(qnichost);
  } else
   whois(*argv, host != ((void*)0) ? host :
         choose_server(*argv), flags);
  reset_rir();
  argv++;
 }
 exit(0);
}
