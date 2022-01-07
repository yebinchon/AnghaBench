
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct storage_entry {scalar_t__ allocationFailures; scalar_t__ used; scalar_t__ size; scalar_t__ allocationUnits; int * type; int flags; } ;
struct memory_type {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef int alloc_descr ;




 int HRDBG (char*) ;
 int HR_STORAGE_FOUND ;
 scalar_t__ INT_MAX ;
 int LOG_ERR ;
 int OIDX_hrStorageRam_c ;
 int SE_DESC_MLEN ;
 int memstat_get_allocator (struct memory_type*) ;
 scalar_t__ memstat_get_count (struct memory_type*) ;
 scalar_t__ memstat_get_countlimit (struct memory_type*) ;
 scalar_t__ memstat_get_failures (struct memory_type*) ;
 char* memstat_get_name (struct memory_type*) ;
 scalar_t__ memstat_get_size (struct memory_type*) ;
 scalar_t__ memstat_get_sizemask (struct memory_type*) ;
 int * memstat_mtl_alloc () ;
 struct memory_type* memstat_mtl_first (int *) ;
 int memstat_mtl_geterror (int *) ;
 struct memory_type* memstat_mtl_next (struct memory_type*) ;
 int memstat_strerror (int ) ;
 scalar_t__ memstat_sysctl_all (int *,int ) ;
 int * mt_list ;
 int snprintf (char*,int,char*,...) ;
 struct storage_entry* storage_entry_create (char*) ;
 struct storage_entry* storage_find_by_name (char*) ;
 scalar_t__ strlen (char const*) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static void
storage_OS_get_memstat(void)
{
 struct memory_type *mt_item;
 struct storage_entry *entry;

 if (mt_list == ((void*)0)) {
  if ((mt_list = memstat_mtl_alloc()) == ((void*)0))

  return;
 }

 if (memstat_sysctl_all(mt_list, 0) < 0) {
  syslog(LOG_ERR, "memstat_sysctl_all failed: %s",
      memstat_strerror(memstat_mtl_geterror(mt_list)) );
  return;
 }

 if ((mt_item = memstat_mtl_first(mt_list)) == ((void*)0)) {

  HRDBG("memstat_mtl_first failed");
  return;
 }

 do {
  const char *memstat_name;
  uint64_t tmp_size;
  int allocator;
  char alloc_descr[SE_DESC_MLEN];

  memstat_name = memstat_get_name(mt_item);

  if (memstat_name == ((void*)0) || strlen(memstat_name) == 0)
   continue;

  switch (allocator = memstat_get_allocator(mt_item)) {

    case 129:
   snprintf(alloc_descr, sizeof(alloc_descr),
       "MALLOC: %s", memstat_name);
   break;

    case 128:
   snprintf(alloc_descr, sizeof(alloc_descr),
       "UMA: %s", memstat_name);
   break;

    default:
   snprintf(alloc_descr, sizeof(alloc_descr),
       "UNKNOWN%d: %s", allocator, memstat_name);
   break;
  }

  if ((entry = storage_find_by_name(alloc_descr)) == ((void*)0) &&
      (entry = storage_entry_create(alloc_descr)) == ((void*)0))
   return;

  entry->flags |= HR_STORAGE_FOUND;
  entry->type = &OIDX_hrStorageRam_c;

  if ((tmp_size = memstat_get_size(mt_item)) == 0)
   tmp_size = memstat_get_sizemask(mt_item);
  entry->allocationUnits =
      (tmp_size > INT_MAX ? INT_MAX : (int32_t)tmp_size);

  tmp_size = memstat_get_countlimit(mt_item);
  entry->size =
      (tmp_size > INT_MAX ? INT_MAX : (int32_t)tmp_size);

  tmp_size = memstat_get_count(mt_item);
  entry->used =
      (tmp_size > INT_MAX ? INT_MAX : (int32_t)tmp_size);

  tmp_size = memstat_get_failures(mt_item);
  entry->allocationFailures =
      (tmp_size > INT_MAX ? INT_MAX : (int32_t)tmp_size);

 } while((mt_item = memstat_mtl_next(mt_item)) != ((void*)0));
}
