
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* uintmax_t ;
struct kinfo_vmobject {char const* kvo_ref_count; char const* kvo_shadow_count; int kvo_memattr; int kvo_type; char const* kvo_path; scalar_t__ kvo_inactive; scalar_t__ kvo_active; scalar_t__ kvo_resident; } ;
 int xo_close_instance (char*) ;
 int xo_emit (char*,char const*) ;
 int xo_open_instance (char*) ;

__attribute__((used)) static void
display_object(struct kinfo_vmobject *kvo)
{
 const char *str;

 xo_open_instance("object");
 xo_emit("{:resident/%5ju} ", (uintmax_t)kvo->kvo_resident);
 xo_emit("{:active/%5ju} ", (uintmax_t)kvo->kvo_active);
 xo_emit("{:inactive/%5ju} ", (uintmax_t)kvo->kvo_inactive);
 xo_emit("{:refcount/%3d} ", kvo->kvo_ref_count);
 xo_emit("{:shadowcount/%3d} ", kvo->kvo_shadow_count);
 switch (kvo->kvo_memattr) {

 case 134:
  str = "UC";
  break;


 case 130:
  str = "WC";
  break;


 case 128:
  str = "WT";
  break;


 case 129:
  str = "WP";
  break;


 case 131:
  str = "WB";
  break;


 case 132:
  str = "UC-";
  break;


 case 133:
  str = "WB";
  break;


 case 136:
  str = "NC";
  break;


 case 137:
  str = "DEV";
  break;


 case 138:
  str = "C";
  break;


 case 135:
  str = "PRE";
  break;

 default:
  str = "??";
  break;
 }
 xo_emit("{:attribute/%-3s} ", str);
 switch (kvo->kvo_type) {
 case 144:
  str = "--";
  break;
 case 147:
  str = "df";
  break;
 case 139:
  str = "vn";
  break;
 case 141:
  str = "sw";
  break;
 case 146:
  str = "dv";
  break;
 case 143:
  str = "ph";
  break;
 case 148:
  str = "dd";
  break;
 case 142:
  str = "sg";
  break;
 case 145:
  str = "md";
  break;
 case 140:
 default:
  str = "??";
  break;
 }
 xo_emit("{:type/%-2s} ", str);
 xo_emit("{:path/%-s}\n", kvo->kvo_path);
 xo_close_instance("object");
}
