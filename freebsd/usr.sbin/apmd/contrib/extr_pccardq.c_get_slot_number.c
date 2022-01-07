
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int,char*,int) ;
 int sscanf (char*,char*,int*) ;
 int warn (char*) ;
 int warnc (int ,char*) ;
 int write (int,char*,int) ;

int
get_slot_number(int so)
{
    char buf[8];
    int rv;
    int nslot;

    if ((rv = write(so, "S", 1)) < 1) {
 warn("write");
 goto err;
    } else if (rv != 1) {
 warnc(0, "write: fail.");
 goto err;
    }

    if ((rv = read(so, buf, sizeof buf)) < 0) {
 warn("read");
 goto err;
    }
    buf[sizeof buf - 1] = 0;
    if (sscanf(buf, "%d", &nslot) != 1) {
 warnc(0, "Invalid response.");
 goto err;
    }
    return nslot;
  err:
    return -1;
}
