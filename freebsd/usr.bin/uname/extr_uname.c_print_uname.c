
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int BFLAG ;
 int IFLAG ;
 int KFLAG ;
 int MFLAG ;
 int NFLAG ;
 int PFLAG ;
 int PRINT_FLAG (int ,int ,int ) ;
 int RFLAG ;
 int SFLAG ;
 int UFLAG ;
 int VFLAG ;
 int arch ;
 int buildid ;
 int hostname ;
 int ident ;
 int kernvers ;
 int platform ;
 int printf (char*) ;
 int release ;
 int sysname ;
 int uservers ;
 int version ;

__attribute__((used)) static void
print_uname(u_int flags)
{
 PRINT_FLAG(flags, SFLAG, sysname);
 PRINT_FLAG(flags, NFLAG, hostname);
 PRINT_FLAG(flags, RFLAG, release);
 PRINT_FLAG(flags, VFLAG, version);
 PRINT_FLAG(flags, MFLAG, platform);
 PRINT_FLAG(flags, PFLAG, arch);
 PRINT_FLAG(flags, IFLAG, ident);
 PRINT_FLAG(flags, KFLAG, kernvers);
 PRINT_FLAG(flags, UFLAG, uservers);
 PRINT_FLAG(flags, BFLAG, buildid);
 printf("\n");
}
