
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROC_PDEATHSIG_STATUS ;
 int P_PID ;
 int SIGINFO ;
 int assert (int) ;
 int procctl (int ,int ,int ,int*) ;

int main(int argc, char **argv)
{
        int signum;
        int rc;






        signum = 0xdeadbeef;
        rc = procctl(P_PID, 0, PROC_PDEATHSIG_STATUS, &signum);
        assert(rc == 0);
        assert(signum == SIGINFO);

        return 0;
}
