
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGEMT ;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int SIGTRAP ;
 int SIGURG ;
 int T_USER ;

int
gdb_cpu_signal(int type, int code)
{

 switch (type & ~T_USER) {
 case 0: return (SIGFPE);
 case 1: return (SIGTRAP);
 case 3: return (SIGTRAP);
 case 4: return (SIGURG);
 case 5: return (SIGURG);
 case 6: return (SIGILL);
 case 7: return (SIGFPE);
 case 8: return (SIGEMT);
 case 9: return (SIGSEGV);
 case 10: return (SIGTRAP);
 case 11: return (SIGSEGV);
 case 12: return (SIGSEGV);
 case 13: return (SIGSEGV);
 case 14: return (SIGSEGV);
 case 16: return (SIGEMT);
 }
 return (SIGEMT);
}
