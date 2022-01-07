
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int ub ;
struct uma_bucket {int ub_cnt; scalar_t__ ub_entries; } ;
struct bucketlist {int dummy; } ;
typedef int kvm_t ;


 struct uma_bucket* LIST_FIRST (struct bucketlist*) ;
 struct uma_bucket* LIST_NEXT (struct uma_bucket*,int ) ;
 int errx (int,char*,int ) ;
 int kread (int *,struct uma_bucket*,struct uma_bucket*,int,int ) ;
 int kvm_geterr (int *) ;
 int printf (char*,...) ;
 int ub_link ;
 int uma_print_bucket (struct uma_bucket*,char*) ;

__attribute__((used)) static void
uma_print_bucketlist(kvm_t *kvm, struct bucketlist *bucketlist,
    const char *name, const char *spaces)
{
 struct uma_bucket *ubp, ub;
 uint64_t total_entries, total_cnt;
 int count, ret;

 printf("%s%s {", spaces, name);

 total_entries = total_cnt = 0;
 count = 0;
 for (ubp = LIST_FIRST(bucketlist); ubp != ((void*)0); ubp =
     LIST_NEXT(&ub, ub_link)) {
  ret = kread(kvm, ubp, &ub, sizeof(ub), 0);
  if (ret != 0)
   errx(-1, "uma_print_bucketlist: %s", kvm_geterr(kvm));
  if (count % 2 == 0)
   printf("\n%s  ", spaces);
  uma_print_bucket(&ub, "");
  printf(" ");
  total_entries += ub.ub_entries;
  total_cnt += ub.ub_cnt;
  count++;
 }

 printf("\n");
 printf("%s};  // total cnt %ju, total entries %ju\n", spaces,
     total_cnt, total_entries);
}
