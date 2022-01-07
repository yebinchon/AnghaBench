
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hcb_p ;


 int GEN ;
 int INW (int ) ;
 int OUTB (int ,int) ;
 int OUTW (int ,int ) ;
 int UDELAY (int) ;
 int nc_dien ;
 int nc_scntl3 ;
 int nc_sien ;
 int nc_sist ;
 int nc_stime1 ;
 int printf (char*,char*,int,unsigned int,unsigned int) ;
 char* sym_name (int ) ;
 int sym_verbose ;

__attribute__((used)) static unsigned getfreq (hcb_p np, int gen)
{
 unsigned int ms = 0;
 unsigned int f;
 OUTW (nc_sien , 0);
 (void) INW (nc_sist);
 OUTB (nc_dien , 0);
 (void) INW (nc_sist);
 OUTB (nc_scntl3, 4);
 OUTB (nc_stime1, 0);
 OUTB (nc_stime1, gen);
 while (!(INW(nc_sist) & GEN) && ms++ < 100000)
  UDELAY (1000);
 OUTB (nc_stime1, 0);





  OUTB (nc_scntl3, 0);




 f = ms ? ((1 << gen) * 4340) / ms : 0;

 if (sym_verbose >= 2)
  printf ("%s: Delay (GEN=%d): %u msec, %u KHz\n",
   sym_name(np), gen, ms, f);

 return f;
}
