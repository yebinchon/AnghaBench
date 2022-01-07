
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct videomode {int dot_clock; } ;
struct TYPE_3__ {int er_max_clock; } ;
struct TYPE_4__ {int ec_whitey; int ec_whitex; int ec_bluey; int ec_bluex; int ec_greeny; int ec_greenx; void* ec_redy; void* ec_redx; } ;
struct edid_info {int edid_product; char* edid_vendorname; char* edid_productname; char* edid_serial; size_t edid_nmodes; char* edid_comment; TYPE_1__ edid_range; scalar_t__ edid_have_range; struct videomode* edid_modes; int * edid_preferred_mode; int edid_ext_block_count; TYPE_2__ edid_chroma; int edid_features; int edid_gamma; int edid_max_vsize; int edid_max_hsize; int edid_video_input; int edid_revision; int edid_version; int edid_year; int edid_week; int * edid_vendor; } ;


 int EDID_BLOCK_COUNT ;
 int EDID_BLOCK_SIZE ;
 int EDID_CHROMA_BLUEX (int*) ;
 int EDID_CHROMA_BLUEY (int*) ;
 int EDID_CHROMA_GREENX (int*) ;
 int EDID_CHROMA_GREENY (int*) ;
 void* EDID_CHROMA_REDX (int*) ;
 int EDID_CHROMA_WHITEX (int*) ;
 int EDID_CHROMA_WHITEY (int*) ;
 int EDID_EST_TIMING (int*) ;
 int EDID_EXT_BLOCK_COUNT (int*) ;
 int EDID_FEATURES (int*) ;
 int EDID_GAMMA (int*) ;
 int EDID_MANFID_0 (int) ;
 int EDID_MANFID_1 (int) ;
 int EDID_MANFID_2 (int) ;
 int EDID_MAX_HSIZE (int*) ;
 int EDID_MAX_VSIZE (int*) ;
 int EDID_OFFSET_DESC_BLOCK ;
 size_t EDID_OFFSET_PRODUCT_ID ;
 int EDID_OFFSET_STD_TIMING ;
 int EDID_REVISION (int*) ;
 int EDID_SERIAL_NUMBER (int*) ;
 int EDID_STD_TIMING_COUNT ;
 int EDID_VENDOR_ID (int*) ;
 int EDID_VERSION (int*) ;
 int EDID_VIDEO_INPUT (int*) ;
 int EDID_WEEK (int*) ;
 int EDID_YEAR (int*) ;
 char** _edid_modes ;
 scalar_t__ bootverbose ;
 int edid_block (struct edid_info*,int*) ;
 char* edid_findproduct (int *,int) ;
 char* edid_findvendor (int *) ;
 scalar_t__ edid_is_valid (int*) ;
 struct videomode* edid_mode_lookup_list (char*) ;
 struct videomode* edid_search_mode (struct edid_info*,struct videomode*) ;
 scalar_t__ edid_std_timing (int*,struct videomode*) ;
 int edid_strchomp (char*) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (char*,char const*,int) ;

int
edid_parse(uint8_t *data, struct edid_info *edid)
{
 uint16_t manfid, estmodes;
 const struct videomode *vmp;
 int i;
 const char *name;
 int max_dotclock = 0;
 int mhz;

 if (edid_is_valid(data) != 0)
  return -1;


 manfid = EDID_VENDOR_ID(data);
 edid->edid_vendor[0] = EDID_MANFID_0(manfid);
 edid->edid_vendor[1] = EDID_MANFID_1(manfid);
 edid->edid_vendor[2] = EDID_MANFID_2(manfid);
 edid->edid_vendor[3] = 0;

 edid->edid_product = data[EDID_OFFSET_PRODUCT_ID] +
     (data[EDID_OFFSET_PRODUCT_ID + 1] << 8);

 name = edid_findvendor(edid->edid_vendor);
 if (name != ((void*)0))
  strlcpy(edid->edid_vendorname, name,
      sizeof(edid->edid_vendorname));
 else
  edid->edid_vendorname[0] = '\0';

 name = edid_findproduct(edid->edid_vendor, edid->edid_product);
 if (name != ((void*)0))
  strlcpy(edid->edid_productname, name,
      sizeof(edid->edid_productname));
 else
     edid->edid_productname[0] = '\0';

 snprintf(edid->edid_serial, sizeof(edid->edid_serial), "%08x",
     EDID_SERIAL_NUMBER(data));

 edid->edid_week = EDID_WEEK(data);
 edid->edid_year = EDID_YEAR(data);


 edid->edid_version = EDID_VERSION(data);
 edid->edid_revision = EDID_REVISION(data);

 edid->edid_video_input = EDID_VIDEO_INPUT(data);
 edid->edid_max_hsize = EDID_MAX_HSIZE(data);
 edid->edid_max_vsize = EDID_MAX_VSIZE(data);

 edid->edid_gamma = EDID_GAMMA(data);
 edid->edid_features = EDID_FEATURES(data);

 edid->edid_chroma.ec_redx = EDID_CHROMA_REDX(data);
 edid->edid_chroma.ec_redy = EDID_CHROMA_REDX(data);
 edid->edid_chroma.ec_greenx = EDID_CHROMA_GREENX(data);
 edid->edid_chroma.ec_greeny = EDID_CHROMA_GREENY(data);
 edid->edid_chroma.ec_bluex = EDID_CHROMA_BLUEX(data);
 edid->edid_chroma.ec_bluey = EDID_CHROMA_BLUEY(data);
 edid->edid_chroma.ec_whitex = EDID_CHROMA_WHITEX(data);
 edid->edid_chroma.ec_whitey = EDID_CHROMA_WHITEY(data);

 edid->edid_ext_block_count = EDID_EXT_BLOCK_COUNT(data);


 edid->edid_nmodes = 0;
 edid->edid_preferred_mode = ((void*)0);
 estmodes = EDID_EST_TIMING(data);

 for (i = 15; i >= 0; i--) {
  if (estmodes & (1 << i)) {
   vmp = edid_mode_lookup_list(_edid_modes[i]);
   if (vmp != ((void*)0)) {
    edid->edid_modes[edid->edid_nmodes] = *vmp;
    edid->edid_nmodes++;
   }





  }
 }


 for (i = 0; i < EDID_STD_TIMING_COUNT; i++) {
  struct videomode mode, *exist_mode;
  if (edid_std_timing(data + EDID_OFFSET_STD_TIMING + i * 2,
   &mode)) {

   exist_mode = edid_search_mode(edid, &mode);
   if (exist_mode == ((void*)0)) {
    edid->edid_modes[edid->edid_nmodes] = mode;
    edid->edid_nmodes++;
   }
  }
 }


 for (i = 0; i < EDID_BLOCK_COUNT; i++) {
  edid_block(edid, data + EDID_OFFSET_DESC_BLOCK +
      i * EDID_BLOCK_SIZE);
 }

 edid_strchomp(edid->edid_vendorname);
 edid_strchomp(edid->edid_productname);
 edid_strchomp(edid->edid_serial);
 edid_strchomp(edid->edid_comment);
 for (i = 0; i < edid->edid_nmodes; i++)
  if (edid->edid_modes[i].dot_clock > max_dotclock)
   max_dotclock = edid->edid_modes[i].dot_clock;
 if (bootverbose) {
  printf("edid: max_dotclock according to supported modes: %d\n",
      max_dotclock);
 }
 mhz = (max_dotclock + 999) / 1000;

 if (edid->edid_have_range) {
  if (mhz > edid->edid_range.er_max_clock)
   edid->edid_range.er_max_clock = mhz;
 } else
  edid->edid_range.er_max_clock = mhz;

 return 0;
}
