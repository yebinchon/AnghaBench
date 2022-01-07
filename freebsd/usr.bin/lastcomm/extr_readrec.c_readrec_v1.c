
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acctv3 {int ac_version; int ac_len; int ac_len2; int ac_utime; int ac_stime; int ac_etime; int ac_io; int ac_flagx; int ac_tty; int ac_mem; int ac_gid; int ac_uid; int ac_btime; int ac_comm; scalar_t__ ac_zero; } ;
struct acctv1 {int ac_flag; int ac_tty; int ac_io; int ac_mem; int ac_gid; int ac_uid; int ac_btime; int ac_etime; int ac_stime; int ac_utime; int ac_comm; } ;
typedef int av1 ;
typedef int FILE ;


 int AC_COMM_LEN ;
 int ANVER ;
 int EOF ;
 int decode_comp (int ) ;
 int fread_record (struct acctv1*,int,int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
readrec_v1(FILE *f, struct acctv3 *av3)
{
 struct acctv1 av1;
 int rv;

 if ((rv = fread_record(&av1, sizeof(av1), f)) == EOF)
  return (EOF);
 av3->ac_zero = 0;
 av3->ac_version = 3;
 av3->ac_len = av3->ac_len2 = sizeof(*av3);
 memcpy(av3->ac_comm, av1.ac_comm, AC_COMM_LEN);
 av3->ac_utime = decode_comp(av1.ac_utime) * 1000000;
 av3->ac_stime = decode_comp(av1.ac_stime) * 1000000;
 av3->ac_etime = decode_comp(av1.ac_etime) * 1000000;
 av3->ac_btime = av1.ac_btime;
 av3->ac_uid = av1.ac_uid;
 av3->ac_gid = av1.ac_gid;
 av3->ac_mem = av1.ac_mem;
 av3->ac_io = decode_comp(av1.ac_io);
 av3->ac_tty = av1.ac_tty;
 av3->ac_flagx = av1.ac_flag | ANVER;
 return (0);
}
