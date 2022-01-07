
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct nv {int dummy; } ;
struct hast_snmp_resource {unsigned int index; int replication; int status; void* idle_queue; void* done_queue; void* recv_queue; void* send_queue; void* local_queue; int workerpid; void* flush_errors; void* delete_errors; void* write_errors; void* read_errors; void* activemap_updates; void* flushes; void* deletes; void* writes; void* reads; void* dirty; int sourceaddr; int remoteaddr; void* keepdirty; void* extentsize; int localpath; int provname; int role; int name; } ;


 int HASTCTL_CMD_STATUS ;
 int HAST_ROLE_UNDEF ;
 int TAILQ_INSERT_TAIL (int *,struct hast_snmp_resource*,int ) ;
 scalar_t__ UPDATE_INTERVAL ;
 struct hast_snmp_resource* calloc (int,int) ;
 int free_resources () ;
 scalar_t__ get_ticks () ;
 int hastctl (struct nv*,struct nv**) ;
 scalar_t__ last_resources_update ;
 int link ;
 int nv_add_string (struct nv*,char*,char*,int ) ;
 int nv_add_uint8 (struct nv*,int ,char*) ;
 struct nv* nv_alloc () ;
 int nv_free (struct nv*) ;
 int nv_get_int16 (struct nv*,char*,unsigned int) ;
 int nv_get_int32 (struct nv*,char*,unsigned int) ;
 char* nv_get_string (struct nv*,char*,unsigned int) ;
 void* nv_get_uint32 (struct nv*,char*,unsigned int) ;
 void* nv_get_uint64 (struct nv*,char*,unsigned int) ;
 int pjdlog_error (char*,int) ;
 int resources ;
 int str2replication (char const*) ;
 int str2role (char const*) ;
 int str2status (char const*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int
update_resources(void)
{
 struct hast_snmp_resource *res;
 struct nv *nvin, *nvout;
 static uint64_t now;
 unsigned int i;
 const char *str;
 int error;

 now = get_ticks();
 if (now - last_resources_update < UPDATE_INTERVAL)
  return (0);

 last_resources_update = now;

 free_resources();

 nvin = nv_alloc();
 nv_add_uint8(nvin, HASTCTL_CMD_STATUS, "cmd");
 nv_add_string(nvin, "all", "resource%d", 0);
 error = hastctl(nvin, &nvout);
 nv_free(nvin);
 if (error != 0)
  return (-1);

 for (i = 0; ; i++) {
  str = nv_get_string(nvout, "resource%u", i);
  if (str == ((void*)0))
   break;
  res = calloc(1, sizeof(*res));
  if (res == ((void*)0)) {
   pjdlog_error("Unable to allocate %zu bytes for "
       "resource", sizeof(*res));
   return (-1);
  }
  res->index = i + 1;
  strncpy(res->name, str, sizeof(res->name) - 1);
  error = nv_get_int16(nvout, "error%u", i);
  if (error != 0)
   continue;
  str = nv_get_string(nvout, "role%u", i);
  res->role = str != ((void*)0) ? str2role(str) : HAST_ROLE_UNDEF;
  str = nv_get_string(nvout, "provname%u", i);
  if (str != ((void*)0))
   strncpy(res->provname, str, sizeof(res->provname) - 1);
  str = nv_get_string(nvout, "localpath%u", i);
  if (str != ((void*)0)) {
   strncpy(res->localpath, str,
       sizeof(res->localpath) - 1);
  }
  res->extentsize = nv_get_uint32(nvout, "extentsize%u", i);
  res->keepdirty = nv_get_uint32(nvout, "keepdirty%u", i);
  str = nv_get_string(nvout, "remoteaddr%u", i);
  if (str != ((void*)0)) {
   strncpy(res->remoteaddr, str,
       sizeof(res->remoteaddr) - 1);
  }
  str = nv_get_string(nvout, "sourceaddr%u", i);
  if (str != ((void*)0)) {
   strncpy(res->sourceaddr, str,
       sizeof(res->sourceaddr) - 1);
  }
  str = nv_get_string(nvout, "replication%u", i);
  res->replication = str != ((void*)0) ? str2replication(str) : -1;
  str = nv_get_string(nvout, "status%u", i);
  res->status = str != ((void*)0) ? str2status(str) : -1;
  res->dirty = nv_get_uint64(nvout, "dirty%u", i);
  res->reads = nv_get_uint64(nvout, "stat_read%u", i);
  res->writes = nv_get_uint64(nvout, "stat_write%u", i);
  res->deletes = nv_get_uint64(nvout, "stat_delete%u", i);
  res->flushes = nv_get_uint64(nvout, "stat_flush%u", i);
  res->activemap_updates =
      nv_get_uint64(nvout, "stat_activemap_update%u", i);
  res->read_errors =
      nv_get_uint64(nvout, "stat_read_error%u", i);
  res->write_errors =
      nv_get_uint64(nvout, "stat_write_error%u", i);
  res->delete_errors =
      nv_get_uint64(nvout, "stat_delete_error%u", i);
  res->flush_errors =
      nv_get_uint64(nvout, "stat_flush_error%u", i);
  res->workerpid = nv_get_int32(nvout, "workerpid%u", i);
  res->local_queue =
      nv_get_uint64(nvout, "local_queue_size%u", i);
  res->send_queue =
      nv_get_uint64(nvout, "send_queue_size%u", i);
  res->recv_queue =
      nv_get_uint64(nvout, "recv_queue_size%u", i);
  res->done_queue =
      nv_get_uint64(nvout, "done_queue_size%u", i);
  res->idle_queue =
      nv_get_uint64(nvout, "idle_queue_size%u", i);
  TAILQ_INSERT_TAIL(&resources, res, link);
 }
 nv_free(nvout);
 return (0);
}
