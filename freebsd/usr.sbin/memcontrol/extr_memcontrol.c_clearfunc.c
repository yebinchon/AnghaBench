
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range_op {struct mem_range_desc* mo_desc; void** mo_arg; } ;
struct mem_range_desc {scalar_t__ mr_base; scalar_t__ mr_len; int mr_flags; int mr_owner; } ;


 int MDF_ACTIVE ;
 int MDF_FIXACTIVE ;
 int MEMRANGE_SET ;
 void* MEMRANGE_SET_REMOVE ;
 int err (int,char*) ;
 int getopt (int,char**,char*) ;
 int help (char*) ;
 scalar_t__ ioctl (int,int ,struct mem_range_op*) ;
 struct mem_range_desc* mrgetall (int,int*) ;
 char* optarg ;
 int strcmp (char*,int ) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 void* strtouq (char*,char**,int ) ;
 int warn (char*,char*) ;

__attribute__((used)) static void
clearfunc(int memfd, int argc, char *argv[])
{
    struct mem_range_desc mrd, *mrdp;
    struct mem_range_op mro;
    int i, nd;
    int ch;
    char *ep, *owner;

    mrd.mr_base = 0;
    mrd.mr_len = 0;
    owner = ((void*)0);
    while ((ch = getopt(argc, argv, "b:l:o:")) != -1)
 switch(ch) {
 case 'b':
     mrd.mr_base = strtouq(optarg, &ep, 0);
     if ((ep == optarg) || (*ep != 0))
  help("clear");
     break;
 case 'l':
     mrd.mr_len = strtouq(optarg, &ep, 0);
     if ((ep == optarg) || (*ep != 0))
  help("clear");
     break;
 case 'o':
     if ((*optarg == 0) || (strlen(optarg) > 7))
  help("clear");
     owner = strdup(optarg);
     break;

 case '?':
 default:
     help("clear");
 }

    if (owner != ((void*)0)) {

 if ((mrd.mr_base != 0) || (mrd.mr_len != 0))
     help("clear");

 mrdp = mrgetall(memfd, &nd);
 mro.mo_arg[0] = MEMRANGE_SET_REMOVE;
 for (i = 0; i < nd; i++) {
     if (!strcmp(owner, mrdp[i].mr_owner) &&
  (mrdp[i].mr_flags & MDF_ACTIVE) &&
  !(mrdp[i].mr_flags & MDF_FIXACTIVE)) {

  mro.mo_desc = mrdp + i;
  if (ioctl(memfd, MEMRANGE_SET, &mro))
      warn("couldn't clear range owned by '%s'", owner);
     }
 }
    } else if (mrd.mr_len != 0) {

 mro.mo_arg[0] = MEMRANGE_SET_REMOVE;
 mro.mo_desc = &mrd;
 if (ioctl(memfd, MEMRANGE_SET, &mro))
     err(1, "couldn't clear range");
    } else {
 help("clear");
    }
}
