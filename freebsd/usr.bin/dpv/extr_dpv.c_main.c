
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;
struct dpv_file_node {char* name; int length; char* path; struct dpv_file_node* next; } ;
struct dpv_config {char* backtitle; scalar_t__ display_type; char* status_solo; char* status_many; int label_size; char* output; int display_limit; int pbar_size; char* title; int status_updates_per_second; void* keep_tite; int action; void* output_type; int options; int * pprompt; void* debug; int * aprompt; } ;


 void* BYTE_STATUS_SOLO ;
 size_t DPV_APROMPT_MAX ;
 scalar_t__ DPV_DISPLAY_DIALOG ;
 scalar_t__ DPV_DISPLAY_LIBDIALOG ;
 scalar_t__ DPV_DISPLAY_XDIALOG ;
 int DPV_NO_OVERRUN ;
 void* DPV_OUTPUT_FILE ;
 void* DPV_OUTPUT_SHELL ;
 size_t DPV_PPROMPT_MAX ;
 int DPV_TEST_MODE ;
 int DPV_WIDE_MODE ;
 int EINVAL ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 void* LINE_STATUS_SOLO ;
 int SIGINT ;
 void* TRUE ;
 void* debug ;
 scalar_t__ dpv (struct dpv_config*,struct dpv_file_node*) ;
 int dpv_free () ;
 int end_dialog () ;
 int errno ;
 int errx (int ,char*,...) ;
 int exit (int ) ;
 struct dpv_file_node* file_list ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 void* line_mode ;
 void* malloc (size_t) ;
 int memset (void*,char,size_t) ;
 void* multiple ;
 scalar_t__ nfiles ;
 void* no_overrun ;
 int operate_on_bytes ;
 int operate_on_lines ;
 char* optarg ;
 scalar_t__ optind ;
 void* output_type ;
 char* pgm ;
 int sig_int ;
 int sigaction (int ,struct sigaction*,int ) ;
 int snprintf (int *,size_t,char*,char*) ;
 int sscanf (char*,char*,int*,char*) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strtol (char*,char**,int) ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 char dummy;
 int ch;
 int n = 0;
 size_t config_size = sizeof(struct dpv_config);
 size_t file_node_size = sizeof(struct dpv_file_node);
 struct dpv_config *config;
 struct dpv_file_node *curfile;
 struct sigaction act;

 pgm = argv[0];


 if ((config = malloc(config_size)) == ((void*)0))
  errx(EXIT_FAILURE, "Out of memory?!");
 memset((void *)(config), '\0', config_size);




 while ((ch = getopt(argc, argv,
     "a:b:dDhi:I:klL:mn:No:p:P:t:TU:wx:X")) != -1) {
  switch(ch) {
  case 'a':
   if (config->aprompt == ((void*)0)) {
    config->aprompt = malloc(DPV_APROMPT_MAX);
    if (config->aprompt == ((void*)0))
     errx(EXIT_FAILURE, "Out of memory?!");
   }
   snprintf(config->aprompt, DPV_APROMPT_MAX, "%s",
       optarg);
   break;
  case 'b':
   if (config->backtitle != ((void*)0))
    free((char *)config->backtitle);
   config->backtitle = malloc(strlen(optarg) + 1);
   if (config->backtitle == ((void*)0))
    errx(EXIT_FAILURE, "Out of memory?!");
   *(config->backtitle) = '\0';
   strcat(config->backtitle, optarg);
   break;
  case 'd':
   debug = TRUE;
   config->debug = debug;
   break;
  case 'D':
   config->display_type = DPV_DISPLAY_DIALOG;
   break;
  case 'h':
   usage();
   break;
  case 'i':
   config->status_solo = optarg;
   break;
  case 'I':
   config->status_many = optarg;
   break;
  case 'k':
   config->keep_tite = TRUE;
   break;
  case 'l':
   line_mode = TRUE;
   break;
  case 'L':
   config->label_size =
       (int)strtol(optarg, (char **)((void*)0), 10);
   if (config->label_size == 0 && errno == EINVAL)
    errx(EXIT_FAILURE,
        "`-L' argument must be numeric");
   else if (config->label_size < -1)
    config->label_size = -1;
   break;
  case 'm':
   multiple = TRUE;
   break;
  case 'o':
   output_type = DPV_OUTPUT_FILE;
   config->output_type = DPV_OUTPUT_FILE;
   config->output = optarg;
   break;
  case 'n':
   config->display_limit =
    (int)strtol(optarg, (char **)((void*)0), 10);
   if (config->display_limit == 0 && errno == EINVAL)
    errx(EXIT_FAILURE,
        "`-n' argument must be numeric");
   else if (config->display_limit < 0)
    config->display_limit = -1;
   break;
  case 'N':
   no_overrun = TRUE;
   config->options |= DPV_NO_OVERRUN;
   break;
  case 'p':
   if (config->pprompt == ((void*)0)) {
    config->pprompt = malloc(DPV_PPROMPT_MAX + 2);
    if (config->pprompt == ((void*)0))
     errx(EXIT_FAILURE, "Out of memory?!");

   }
   snprintf(config->pprompt, DPV_PPROMPT_MAX, "%s",
       optarg);
   break;
  case 'P':
   config->pbar_size =
       (int)strtol(optarg, (char **)((void*)0), 10);
   if (config->pbar_size == 0 && errno == EINVAL)
    errx(EXIT_FAILURE,
        "`-P' argument must be numeric");
   else if (config->pbar_size < -1)
    config->pbar_size = -1;
   break;
  case 't':
   if (config->title != ((void*)0))
    free(config->title);
   config->title = malloc(strlen(optarg) + 1);
   if (config->title == ((void*)0))
    errx(EXIT_FAILURE, "Out of memory?!");
   *(config->title) = '\0';
   strcat(config->title, optarg);
   break;
  case 'T':
   config->options |= DPV_TEST_MODE;
   break;
  case 'U':
   config->status_updates_per_second =
       (int)strtol(optarg, (char **)((void*)0), 10);
   if (config->status_updates_per_second == 0 &&
       errno == EINVAL)
    errx(EXIT_FAILURE,
        "`-U' argument must be numeric");
   break;
  case 'w':
   config->options |= DPV_WIDE_MODE;
   break;
  case 'x':
   output_type = DPV_OUTPUT_SHELL;
   config->output_type = DPV_OUTPUT_SHELL;
   config->output = optarg;
   break;
  case 'X':
   config->display_type = DPV_DISPLAY_XDIALOG;
   break;
  case '?':

  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;


 for (curfile = file_list; n < argc; n++) {
  nfiles++;


  if (curfile == ((void*)0)) {
   if ((curfile = malloc(file_node_size)) == ((void*)0))
    errx(EXIT_FAILURE, "Out of memory?!");
   memset((void *)(curfile), '\0', file_node_size);
   file_list = curfile;
  } else {
   if ((curfile->next = malloc(file_node_size)) == ((void*)0))
    errx(EXIT_FAILURE, "Out of memory?!");
   memset((void *)(curfile->next), '\0', file_node_size);
   curfile = curfile->next;
  }
  curfile->name = argv[n];


  if (sscanf(curfile->name, "%lli:%c", &(curfile->length),
      &dummy) == 2)
   curfile->name = strchr(curfile->name, ':') + 1;
  else
   curfile->length = -1;


  if (multiple) {
   if (++n >= argc)
    errx(EXIT_FAILURE, "Missing path argument "
        "for label number %i", nfiles);
   curfile->path = argv[n];
  } else
   break;
 }


 if (nfiles == 0) {
  warnx("no labels provided");
  usage();

 }




 if (config->display_type == DPV_DISPLAY_LIBDIALOG) {
  act.sa_handler = sig_int;
  sigaction(SIGINT, &act, 0);
 }


 if (line_mode) {
  config->status_solo = LINE_STATUS_SOLO;
  config->status_many = LINE_STATUS_SOLO;
  config->action = operate_on_lines;
 } else {
  config->status_solo = BYTE_STATUS_SOLO;
  config->status_many = BYTE_STATUS_SOLO;
  config->action = operate_on_bytes;
 }




 if (dpv(config, file_list) != 0 && debug)
  warnx("dpv(3) returned error!?");

 if (!config->keep_tite)
  end_dialog();
 dpv_free();

 exit(EXIT_SUCCESS);
}
