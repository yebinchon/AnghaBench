
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct gss_resource {int gr_id; void* gr_res; } ;


 int LIST_INSERT_HEAD (int *,struct gss_resource*,int ) ;
 int debug_level ;
 int gr_link ;
 int gss_next_id ;
 int gss_resource_count ;
 int gss_resources ;
 scalar_t__ gss_start_time ;
 struct gss_resource* malloc (int) ;
 int printf (char*,int) ;

__attribute__((used)) static uint64_t
gssd_make_resource(void *res)
{
 struct gss_resource *gr;

 if (!res)
  return (0);

 gr = malloc(sizeof(struct gss_resource));
 if (!gr)
  return (0);
 gr->gr_id = (gss_next_id++) + ((uint64_t) gss_start_time << 32);
 gr->gr_res = res;
 LIST_INSERT_HEAD(&gss_resources, gr, gr_link);
 gss_resource_count++;
 if (debug_level > 1)
  printf("%d resources allocated\n", gss_resource_count);

 return (gr->gr_id);
}
