
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int socklen_t ;
typedef int newvalue ;


 int IPPROTO_IP ;
 int err (int,char*,...) ;
 int errx (int,char*,char const*,char*,...) ;
 scalar_t__ getsockopt (int,int ,int,int*,int*) ;
 scalar_t__ setsockopt (int,int ,int,int*,int) ;

__attribute__((used)) static void
test_ip_boolean(int sock, const char *socktypename, int option,
    char *optionname, int initial, int rootonly)
{
 int newvalue, val[2];
 socklen_t len;






 if (initial == 0)
  newvalue = 0xff;
 else
  newvalue = 0;

 val[0] = -1;
 val[1] = -1;
 len = sizeof(val);
 if (getsockopt(sock, IPPROTO_IP, option, val, &len) < 0)
  err(-1, "test_ip_boolean: initial getsockopt()");

 if (len != sizeof(val[0]))
  errx(-1, "test_ip_boolean(%s, %s): initial getsockopt() "
      "returned %d bytes", socktypename, optionname, len);

 if (val[0] == -1)
  errx(-1, "test_ip_boolean(%s, %s): initial getsockopt() "
      "didn't return data", socktypename, optionname);

 if (val[0] != initial)
  errx(-1, "test_ip_boolean(%s, %s): initial getsockopt() "
      "returned %d (expected %d)", socktypename, optionname,
      val[0], initial);




 if (setsockopt(sock, IPPROTO_IP, option, &newvalue, sizeof(newvalue))
     < 0)
  err(-1, "test_ip_boolean(%s, %s): setsockopt() to %d",
      socktypename, optionname, newvalue);





 val[0] = -1;
 val[1] = -1;
 len = sizeof(val);
 if (getsockopt(sock, IPPROTO_IP, option, val, &len) < 0)
  err(-1, "test_ip_boolean(%s, %s): getsockopt() after set to "
      "%d", socktypename, optionname, newvalue);

 if (len != sizeof(val[0]))
  errx(-1, "test_ip_boolean(%s, %s): getsockopt() after set "
      "to %d returned %d bytes", socktypename, optionname,
      newvalue, len);

 if (val[0] == -1)
  errx(-1, "test_ip_boolean(%s, %s): getsockopt() after set "
      "to %d didn't return data", socktypename, optionname,
      newvalue);




 if (val[0] != (newvalue ? 1 : 0))
  errx(-1, "test_ip_boolean(%s, %s): getsockopt() after set "
      "to %d returned %d", socktypename, optionname, newvalue,
      val[0]);




 newvalue = initial;
 if (setsockopt(sock, IPPROTO_IP, option, &newvalue, sizeof(newvalue))
     < 0)
  err(-1, "test_ip_boolean(%s, %s): setsockopt() to reset",
      socktypename, optionname);




 val[0] = -1;
 val[1] = -1;
 len = sizeof(val);
 if (getsockopt(sock, IPPROTO_IP, option, val, &len) < 0)
  err(-1, "test_ip_boolean(%s, %s): getsockopt() after reset",
      socktypename, optionname);

 if (len != sizeof(val[0]))
  errx(-1, "test_ip_boolean(%s, %s): getsockopt() after reset "
      "returned %d bytes", socktypename, optionname, len);

 if (val[0] == -1)
  errx(-1, "test_ip_boolean(%s, %s): getsockopt() after reset "
      "didn't return data", socktypename, optionname);

 if (val[0] != newvalue)
  errx(-1, "test_ip_boolean(%s, %s): getsockopt() after reset "
      "returned %d", socktypename, optionname, newvalue);
}
