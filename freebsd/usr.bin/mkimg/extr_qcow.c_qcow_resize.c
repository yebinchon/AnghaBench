
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int u_int ;
typedef int lba_t ;


 unsigned int QCOW1_CLSTR_LOG2SZ ;
 unsigned int QCOW2_CLSTR_LOG2SZ ;


 int assert (int ) ;
 unsigned int clstr_log2sz ;
 int fprintf (int ,char*,int ,int) ;
 int image_set_size (int) ;
 int round_clstr (int) ;
 int secsz ;
 int stderr ;
 scalar_t__ verbose ;

__attribute__((used)) static int
qcow_resize(lba_t imgsz, u_int version)
{
 uint64_t imagesz;

 switch (version) {
 case 129:
  clstr_log2sz = QCOW1_CLSTR_LOG2SZ;
  break;
 case 128:
  clstr_log2sz = QCOW2_CLSTR_LOG2SZ;
  break;
 default:
  assert(0);
 }

 imagesz = round_clstr(imgsz * secsz);

 if (verbose)
  fprintf(stderr, "QCOW: image size = %ju, cluster size = %u\n",
      (uintmax_t)imagesz, (u_int)(1U << clstr_log2sz));

 return (image_set_size(imagesz / secsz));
}
