
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct memory_type_list {int dummy; } ;
struct memory_type {int dummy; } ;


 int MEMSTAT_ERROR_KVM ;
 int MEMTYPE_MAXNAME ;
 int * kd ;
 int kvm_geterr (int *) ;
 scalar_t__ memstat_get_count (struct memory_type*) ;
 scalar_t__ memstat_get_countlimit (struct memory_type*) ;
 scalar_t__ memstat_get_failures (struct memory_type*) ;
 scalar_t__ memstat_get_free (struct memory_type*) ;
 int memstat_get_name (struct memory_type*) ;
 scalar_t__ memstat_get_numallocs (struct memory_type*) ;
 scalar_t__ memstat_get_size (struct memory_type*) ;
 scalar_t__ memstat_get_sleeps (struct memory_type*) ;
 scalar_t__ memstat_get_xdomain (struct memory_type*) ;
 scalar_t__ memstat_kvm_uma (struct memory_type_list*,int *) ;
 struct memory_type_list* memstat_mtl_alloc () ;
 struct memory_type* memstat_mtl_first (struct memory_type_list*) ;
 int memstat_mtl_free (struct memory_type_list*) ;
 int memstat_mtl_geterror (struct memory_type_list*) ;
 struct memory_type* memstat_mtl_next (struct memory_type*) ;
 int memstat_strerror (int) ;
 scalar_t__ memstat_sysctl_uma (struct memory_type_list*,int ) ;
 int strcat (char*,char*) ;
 int strlcpy (char*,int ,int ) ;
 int xo_close_container (char*) ;
 int xo_close_instance (char*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_container (char*) ;
 int xo_open_instance (char*) ;
 int xo_open_list (char*) ;
 int xo_warn (char*) ;
 int xo_warnx (char*,int ) ;

__attribute__((used)) static void
domemstat_zone(void)
{
 struct memory_type_list *mtlp;
 struct memory_type *mtp;
 int error;
 char name[MEMTYPE_MAXNAME + 1];

 mtlp = memstat_mtl_alloc();
 if (mtlp == ((void*)0)) {
  xo_warn("memstat_mtl_alloc");
  return;
 }
 if (kd == ((void*)0)) {
  if (memstat_sysctl_uma(mtlp, 0) < 0) {
   xo_warnx("memstat_sysctl_uma: %s",
       memstat_strerror(memstat_mtl_geterror(mtlp)));
   return;
  }
 } else {
  if (memstat_kvm_uma(mtlp, kd) < 0) {
   error = memstat_mtl_geterror(mtlp);
   if (error == MEMSTAT_ERROR_KVM)
    xo_warnx("memstat_kvm_uma: %s",
        kvm_geterr(kd));
   else
    xo_warnx("memstat_kvm_uma: %s",
        memstat_strerror(error));
  }
 }
 xo_open_container("memory-zone-statistics");
 xo_emit("{T:/%-20s} {T:/%6s} {T:/%6s} {T:/%8s} {T:/%8s} {T:/%8s} {T:/%8s}"
     "{T:/%4s} {T:/%4s}\n\n", "ITEM", "SIZE",
     "LIMIT", "USED", "FREE", "REQ", "FAIL", "SLEEP", "XDOMAIN");
 xo_open_list("zone");
 for (mtp = memstat_mtl_first(mtlp); mtp != ((void*)0);
     mtp = memstat_mtl_next(mtp)) {
  strlcpy(name, memstat_get_name(mtp), MEMTYPE_MAXNAME);
  strcat(name, ":");
  xo_open_instance("zone");
  xo_emit("{d:name/%-20s}{ke:name/%s} {:size/%6ju}, "
      "{:limit/%6ju},{:used/%8ju},"
      "{:free/%8ju},{:requests/%8ju},"
      "{:fail/%4ju},{:sleep/%4ju},{:xdomain/%4ju}\n", name,
      memstat_get_name(mtp),
      (uintmax_t)memstat_get_size(mtp),
      (uintmax_t)memstat_get_countlimit(mtp),
      (uintmax_t)memstat_get_count(mtp),
      (uintmax_t)memstat_get_free(mtp),
      (uintmax_t)memstat_get_numallocs(mtp),
      (uintmax_t)memstat_get_failures(mtp),
      (uintmax_t)memstat_get_sleeps(mtp),
      (uintmax_t)memstat_get_xdomain(mtp));
  xo_close_instance("zone");
 }
 memstat_mtl_free(mtlp);
 xo_close_list("zone");
 xo_close_container("memory-zone-statistics");
 xo_emit("\n");
}
