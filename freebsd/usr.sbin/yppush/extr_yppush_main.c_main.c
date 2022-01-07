
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
typedef int myname ;
struct TYPE_4__ {char* data; int size; } ;
typedef TYPE_1__ DBT ;


 int MAXHOSTNAMELEN ;
 int SIGINT ;
 int SIGTERM ;
 scalar_t__ YP_TRUE ;
 int _yp_check (char**) ;
 void* atoi (void*) ;
 int errno ;
 int exit (int ) ;
 scalar_t__ gethostname (char*,int) ;
 int getopt (int,char**,char*) ;
 int handler ;
 char* malloc (int) ;
 void* optarg ;
 scalar_t__ optind ;
 int signal (int ,int ) ;
 int skip_master ;
 char* strdup (void*) ;
 int strerror (int ) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 int time (int *) ;
 int usage () ;
 int verbose ;
 void* yp_dir ;
 int yp_error (char*,...) ;
 int yp_get_default_domain (char**) ;
 scalar_t__ yp_get_record (char*,char*,TYPE_1__*,TYPE_1__*,int) ;
 char* yppush_domain ;
 int yppush_exit (int) ;
 int yppush_foreach (scalar_t__,int *,int ,char*,int ,int *) ;
 int yppush_jobs ;
 char* yppush_mapname ;
 char* yppush_master ;
 void* yppush_timeout ;
 int yppush_transid ;
 int ypxfr_get_map (char*,char*,char*,int (*) (scalar_t__,int *,int ,char*,int ,int *)) ;

int
main(int argc, char *argv[])
{
 int ch;
 DBT key, data;
 char myname[MAXHOSTNAMELEN];
 struct hostlist {
  char *name;
  struct hostlist *next;
 };
 struct hostlist *yppush_hostlist = ((void*)0);
 struct hostlist *tmp;

 while ((ch = getopt(argc, argv, "d:j:p:h:t:v")) != -1) {
  switch (ch) {
  case 'd':
   yppush_domain = optarg;
   break;
  case 'j':
   yppush_jobs = atoi(optarg);
   if (yppush_jobs <= 0)
    yppush_jobs = 1;
   break;
  case 'p':
   yp_dir = optarg;
   break;
  case 'h':
   if ((tmp = (struct hostlist *)malloc(sizeof(struct hostlist))) == ((void*)0)) {
    yp_error("malloc failed");
    yppush_exit(1);
   }
   tmp->name = strdup(optarg);
   tmp->next = yppush_hostlist;
   yppush_hostlist = tmp;
   break;
  case 't':
   yppush_timeout = atoi(optarg);
   break;
  case 'v':
   verbose++;
   break;
  default:
   usage();
   break;
  }
 }

 argc -= optind;
 argv += optind;

 yppush_mapname = argv[0];

 if (yppush_mapname == ((void*)0)) {

  usage();
 }





 if (yppush_domain == ((void*)0)) {
  char *yppush_check_domain;
  if (!yp_get_default_domain(&yppush_check_domain) &&
   !_yp_check(&yppush_check_domain)) {
   yp_error("no domain specified and NIS not running");
   usage();
  } else
   yp_get_default_domain(&yppush_domain);
 }



 if (gethostname ((char *)&myname, sizeof(myname))) {
  yp_error("failed to get name of local host: %s",
   strerror(errno));
  yppush_exit(1);
 }

 key.data = "YP_MASTER_NAME";
 key.size = sizeof("YP_MASTER_NAME") - 1;

 if (yp_get_record(yppush_domain, yppush_mapname,
     &key, &data, 1) != YP_TRUE) {
  yp_error("couldn't open %s map: %s", yppush_mapname,
    strerror(errno));
  yppush_exit(1);
 }

 if (strncasecmp(myname, data.data, data.size) == 0) {



  if (yppush_hostlist == ((void*)0))
   skip_master = 1;
 } else {
  yp_error("warning: this host is not the master for %s",
       yppush_mapname);



 }

 yppush_master = malloc(data.size + 1);
 strncpy(yppush_master, data.data, data.size);
 yppush_master[data.size] = '\0';


 signal(SIGTERM, handler);
 signal(SIGINT, handler);


 yppush_transid = time((time_t *)((void*)0));

 if (yppush_hostlist) {




  tmp = yppush_hostlist;
  while (tmp) {
   yppush_foreach(YP_TRUE, ((void*)0), 0, tmp->name,
       strlen(tmp->name), ((void*)0));
   tmp = tmp->next;
  }
 } else {




  ypxfr_get_map("ypservers", yppush_domain,
         "localhost", yppush_foreach);
 }

 if (verbose > 1)
  yp_error("all jobs dispatched");


 yppush_exit(0);


 exit(0);
}
