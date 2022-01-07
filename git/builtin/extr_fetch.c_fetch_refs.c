
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int dummy; } ;
struct ref {int dummy; } ;


 int check_exist_and_connected (struct ref*) ;
 int the_repository ;
 int trace2_region_enter (char*,char*,int ) ;
 int trace2_region_leave (char*,char*,int ) ;
 int transport_fetch_refs (struct transport*,struct ref*) ;
 int transport_unlock_pack (struct transport*) ;

__attribute__((used)) static int fetch_refs(struct transport *transport, struct ref *ref_map)
{
 int ret = check_exist_and_connected(ref_map);
 if (ret) {
  trace2_region_enter("fetch", "fetch_refs", the_repository);
  ret = transport_fetch_refs(transport, ref_map);
  trace2_region_leave("fetch", "fetch_refs", the_repository);
 }
 if (!ret)




  return 0;
 transport_unlock_pack(transport);
 return ret;
}
