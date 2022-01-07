
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_range_op {scalar_t__* mo_arg; struct mem_range_desc* mo_desc; } ;
struct mem_range_desc {scalar_t__ mr_len; int mr_flags; int mr_owner; void* mr_base; } ;
struct TYPE_2__ {int kind; int * name; int val; } ;


 int MDF_SETTABLE ;
 int MEMRANGE_SET ;
 TYPE_1__* attrnames ;
 int err (int,char*) ;
 int getopt (int,char**,char*) ;
 int help (char*) ;
 scalar_t__ ioctl (int,int ,struct mem_range_op*) ;
 char* optarg ;
 scalar_t__ optind ;
 int strcmp (int *,char*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 void* strtouq (char*,char**,int ) ;

__attribute__((used)) static void
setfunc(int memfd, int argc, char *argv[])
{
    struct mem_range_desc mrd;
    struct mem_range_op mro;
    int i;
    int ch;
    char *ep;

    mrd.mr_base = 0;
    mrd.mr_len = 0;
    mrd.mr_flags = 0;
    strcpy(mrd.mr_owner, "user");
    while ((ch = getopt(argc, argv, "b:l:o:")) != -1)
 switch(ch) {
 case 'b':
     mrd.mr_base = strtouq(optarg, &ep, 0);
     if ((ep == optarg) || (*ep != 0))
  help("set");
     break;
 case 'l':
     mrd.mr_len = strtouq(optarg, &ep, 0);
     if ((ep == optarg) || (*ep != 0))
  help("set");
     break;
 case 'o':
     if ((*optarg == 0) || (strlen(optarg) > 7))
  help("set");
     strcpy(mrd.mr_owner, optarg);
     break;

 case '?':
 default:
     help("set");
 }

    if (mrd.mr_len == 0)
 help("set");

    argc -= optind;
    argv += optind;

    while(argc--) {
 for (i = 0; attrnames[i].name != ((void*)0); i++) {
     if (!strcmp(attrnames[i].name, argv[0])) {
  if (!(attrnames[i].kind & MDF_SETTABLE))
      help("flags");
  mrd.mr_flags |= attrnames[i].val;
  break;
     }
 }
 if (attrnames[i].name == ((void*)0))
     help("flags");
 argv++;
    }

    mro.mo_desc = &mrd;
    mro.mo_arg[0] = 0;
    if (ioctl(memfd, MEMRANGE_SET, &mro))
 err(1, "can't set range");
}
