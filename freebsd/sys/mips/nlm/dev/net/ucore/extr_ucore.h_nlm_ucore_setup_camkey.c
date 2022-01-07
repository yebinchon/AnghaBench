
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_write_ucore_cam0 (unsigned int) ;
 int nlm_write_ucore_cam1 (unsigned int) ;
 int nlm_write_ucore_cam2 (unsigned int) ;
 int nlm_write_ucore_cam3 (unsigned int) ;

__attribute__((used)) static __inline__ void
nlm_ucore_setup_camkey(unsigned int cam_key0, unsigned int cam_key1,
    unsigned int cam_key2, unsigned int cam_key3)
{
 nlm_write_ucore_cam0(cam_key0);
 nlm_write_ucore_cam1(cam_key1);
 nlm_write_ucore_cam2(cam_key2);
 nlm_write_ucore_cam3(cam_key3);
}
