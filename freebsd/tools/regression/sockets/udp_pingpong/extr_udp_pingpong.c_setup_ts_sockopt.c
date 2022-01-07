
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sval2 ;
typedef int sval1 ;
struct test_ctx {int ts_type; int name; } ;


 int SOL_SOCKET ;
 int SO_BINTIME ;
 int SO_TIMESTAMP ;
 int SO_TS_CLOCK ;






 int abort () ;
 int err (int,char*,int ,int,int,...) ;
 int setsockopt (int,int ,int,int*,int) ;

__attribute__((used)) static void
setup_ts_sockopt(struct test_ctx *tcp, int fd)
{
    int rval, oname1, oname2, sval1, sval2;

    oname1 = SO_TIMESTAMP;
    oname2 = -1;
    sval2 = -1;

    switch (tcp->ts_type) {
    case 130:
    case 128:
    case 131:
    case 132:
        oname2 = SO_TS_CLOCK;
        sval2 = tcp->ts_type;
        break;

    case 129:
        break;

    case 133:
        oname1 = SO_BINTIME;
        break;

    default:
        abort();
    }

    sval1 = 1;
    rval = setsockopt(fd, SOL_SOCKET, oname1, &sval1,
      sizeof(sval1));
    if (rval != 0) {
        err(1, "%s: setup_udp: setsockopt(%d, %d, 1)", tcp->name,
          fd, oname1);
    }
    if (oname2 == -1)
        return;
    rval = setsockopt(fd, SOL_SOCKET, oname2, &sval2,
      sizeof(sval2));
    if (rval != 0) {
        err(1, "%s: setup_udp: setsockopt(%d, %d, %d)",
          tcp->name, fd, oname2, sval2);
    }
}
