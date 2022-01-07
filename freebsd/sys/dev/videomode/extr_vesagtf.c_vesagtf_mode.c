
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;
struct vesagtf_params {int J; int K; int C; int M; int min_vsbp; int hsync_pct; int vsync_rqd; int min_porch; int margin_ppt; } ;


 int VESAGTF_C ;
 int VESAGTF_HSYNC_PCT ;
 int VESAGTF_J ;
 int VESAGTF_K ;
 int VESAGTF_M ;
 int VESAGTF_MARGIN_PPT ;
 int VESAGTF_MIN_PORCH ;
 int VESAGTF_MIN_VSBP ;
 int VESAGTF_VSYNC_RQD ;
 int vesagtf_mode_params (unsigned int,unsigned int,unsigned int,struct vesagtf_params*,int ,struct videomode*) ;

void
vesagtf_mode(unsigned x, unsigned y, unsigned refresh, struct videomode *vmp)
{
 struct vesagtf_params params;

 params.margin_ppt = VESAGTF_MARGIN_PPT;
 params.min_porch = VESAGTF_MIN_PORCH;
 params.vsync_rqd = VESAGTF_VSYNC_RQD;
 params.hsync_pct = VESAGTF_HSYNC_PCT;
 params.min_vsbp = VESAGTF_MIN_VSBP;
 params.M = VESAGTF_M;
 params.C = VESAGTF_C;
 params.K = VESAGTF_K;
 params.J = VESAGTF_J;

 vesagtf_mode_params(x, y, refresh, &params, 0, vmp);
}
