
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mtlocate {int dest_type; int block_address_mode; int partition; int flags; int logical_id; } ;
typedef int mtl ;
typedef int mt_locate_dest_type ;
typedef int int64_t ;


 int MTIOCEXTLOCATE ;
 int MT_LOCATE_BAM_EXPLICIT ;
 int MT_LOCATE_BAM_IMPLICIT ;




 int MT_LOCATE_FLAG_CHANGE_PART ;
 int MT_LOCATE_FLAG_IMMED ;
 int bzero (struct mtlocate*,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*) ;
 int getopt (int,char**,char*) ;
 int ioctl (int,int ,struct mtlocate*) ;
 int optarg ;
 int strtol (int ,int *,int ) ;
 int strtoull (int ,int *,int ) ;

__attribute__((used)) static int
mt_locate(int argc, char **argv, int mtfd, const char *tape)
{
 struct mtlocate mtl;
 uint64_t logical_id = 0;
 mt_locate_dest_type dest_type = 130;
 int eod = 0, explicit = 0, immediate = 0;
 int64_t partition = 0;
 int block_addr_set = 0, partition_set = 0, file_set = 0, set_set = 0;
 int c, retval;

 retval = 0;
 bzero(&mtl, sizeof(mtl));

 while ((c = getopt(argc, argv, "b:eEf:ip:s:")) != -1) {
  switch (c) {
  case 'b':

   logical_id = strtoull(optarg, ((void*)0), 0);
   dest_type = 129;
   block_addr_set = 1;
   break;
  case 'e':

   eod = 1;
   dest_type = 131;
   break;
  case 'E':





   explicit = 1;
   break;
  case 'f':

   logical_id = strtoull(optarg, ((void*)0), 0);
   dest_type = 130;
   file_set = 1;
   break;
  case 'i':





   immediate = 1;
   break;
  case 'p':



   partition = strtol(optarg, ((void*)0), 0);
   partition_set = 1;
   break;
  case 's':

   logical_id = strtoull(optarg, ((void*)0), 0);
   dest_type = 128;
   set_set = 1;
   break;
  default:
   break;
  }
 }





 if ((block_addr_set + file_set + eod + set_set) != 1)
  errx(1, "You must specify only one of -b, -f, -e, or -s");

 mtl.dest_type = dest_type;
 switch (dest_type) {
 case 129:
 case 130:
 case 128:
  mtl.logical_id = logical_id;
  break;
 case 131:
  break;
 }

 if (immediate != 0)
  mtl.flags |= MT_LOCATE_FLAG_IMMED;

 if (partition_set != 0) {
  mtl.flags |= MT_LOCATE_FLAG_CHANGE_PART;
  mtl.partition = partition;
 }

 if (explicit != 0)
  mtl.block_address_mode = MT_LOCATE_BAM_EXPLICIT;
 else
  mtl.block_address_mode = MT_LOCATE_BAM_IMPLICIT;

 if (ioctl(mtfd, MTIOCEXTLOCATE, &mtl) == -1)
  err(1, "MTIOCEXTLOCATE ioctl failed on %s", tape);

 return (retval);
}
