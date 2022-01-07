
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acctv3 {int ac_version; int ac_len; int ac_len2; int ac_flagx; int ac_tty; int ac_io; int ac_mem; int ac_gid; int ac_uid; int ac_btime; int ac_etime; int ac_stime; int ac_utime; int ac_comm; scalar_t__ ac_zero; } ;
struct acctv2 {int ac_flagx; int ac_tty; int ac_io; int ac_mem; int ac_gid; int ac_uid; int ac_btime; int ac_etime; int ac_stime; int ac_utime; int ac_comm; } ;
typedef int av2 ;
typedef int FILE ;


 int AC_COMM_LEN ;
 int EOF ;
 int fread_record (struct acctv2*,int,int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
readrec_v2(FILE *f, struct acctv3 *av3)
{
 struct acctv2 av2;
 int rv;

 if ((rv = fread_record(&av2, sizeof(av2), f)) == EOF)
  return (EOF);
 av3->ac_zero = 0;
 av3->ac_version = 3;
 av3->ac_len = av3->ac_len2 = sizeof(*av3);
 memcpy(av3->ac_comm, av2.ac_comm, AC_COMM_LEN);
 av3->ac_utime = av2.ac_utime;
 av3->ac_stime = av2.ac_stime;
 av3->ac_etime = av2.ac_etime;
 av3->ac_btime = av2.ac_btime;
 av3->ac_uid = av2.ac_uid;
 av3->ac_gid = av2.ac_gid;
 av3->ac_mem = av2.ac_mem;
 av3->ac_io = av2.ac_io;
 av3->ac_tty = av2.ac_tty;
 av3->ac_flagx = av2.ac_flagx;
 return (0);
}
