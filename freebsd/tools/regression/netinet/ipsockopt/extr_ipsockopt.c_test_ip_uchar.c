
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int socklen_t ;


 scalar_t__ EINVAL ;
 int IPPROTO_IP ;
 int err (int,char*,char const*,char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*,char const*,...) ;
 scalar_t__ getsockopt (int,int ,int,int*,int*) ;
 scalar_t__ setsockopt (int,int ,int,int*,int) ;

__attribute__((used)) static void
test_ip_uchar(int sock, const char *socktypename, int option,
    const char *optionname, int initial)
{
 int val[2];
 socklen_t len;





 val[0] = -1;
 val[1] = -1;
 len = sizeof(val);
 if (getsockopt(sock, IPPROTO_IP, option, val, &len) < 0)
  err(-1, "test_ip_uchar(%s, %s): initial getsockopt()",
      socktypename, optionname);

 if (len != sizeof(val[0]))
  errx(-1, "test_ip_uchar(%s, %s): initial getsockopt() "
      "returned %d bytes", socktypename, optionname, len);

 if (val[0] == -1)
  errx(-1, "test_ip_uchar(%s, %s): initial getsockopt() didn't "
      "return data", socktypename, optionname);

 if (val[0] != initial)
  errx(-1, "test_ip_uchar(%s, %s): initial getsockopt() "
      "returned value of %d, not %d", socktypename, optionname,
      val[0], initial);




 val[0] = 128;
 val[1] = -1;
 if (setsockopt(sock, IPPROTO_IP, option, val, sizeof(val[0])) < 0)
  err(-1, "test_ip_uchar(%s, %s): setsockopt(128)",
      socktypename, optionname);




 val[0] = -1;
 val[1] = -1;
 len = sizeof(val);
 if (getsockopt(sock, IPPROTO_IP, option, val, &len) < 0)
  err(-1, "test_ip_uchar(%s, %s): getsockopt() after set to "
      "128", socktypename, optionname);

 if (len != sizeof(val[0]))
  errx(-1, "test_ip_uchar(%s, %s): getsockopt() after set to "
      "128 returned %d bytes", socktypename, optionname, len);

 if (val[0] == -1)
  errx(-1, "test_ip_uchar(%s, %s): getsockopt() after set to "
      "128 didn't return data", socktypename, optionname);

 if (val[0] != 128)
  errx(-1, "test_ip_uchar(%s, %s): getsockopt() after set to "
      "128 returned %d", socktypename, optionname, val[0]);




 val[0] = 0;
 val[1] = 0;
 if (setsockopt(sock, IPPROTO_IP, option, val, sizeof(val[0])) < 0)
  err(-1, "test_ip_uchar(%s, %s): setsockopt() to reset from "
      "128", socktypename, optionname);

 if (len != sizeof(val[0]))
  errx(-1, "test_ip_uchar(%s, %s): getsockopt() after reset "
     "from 128 returned %d bytes", socktypename, optionname,
      len);

 if (val[0] == -1)
  errx(-1, "test_ip_uchar(%s, %s): getsockopt() after reset "
      "from 128 didn't return data", socktypename, optionname);

 if (val[0] != 0)
  errx(-1, "test_ip_uchar(%s, %s): getsockopt() after reset "
      "from 128 returned %d", socktypename, optionname,
      val[0]);







 val[0] = 32000;
 val[1] = -1;
 if (setsockopt(sock, IPPROTO_IP, option, val, sizeof(val[0])) < 0) {




  if (errno == EINVAL)
   return;
  err(-1, "test_ip_uchar(%s, %s): getsockopt(32000)",
      socktypename, optionname);
 }

 val[0] = -1;
 val[1] = -1;
 len = sizeof(val);
 if (getsockopt(sock, IPPROTO_IP, option, val, &len) < 0)
  err(-1, "test_ip_uchar(%s, %s): getsockopt() after set to "
      "32000", socktypename, optionname);

 if (len != sizeof(val[0]))
  errx(-1, "test_ip_uchar(%s, %s): getsockopt() after set to "
      "32000 returned %d bytes", socktypename, optionname,
      len);

 if (val[0] == -1)
  errx(-1, "test_ip_uchar(%s, %s): getsockopt() after set to "
      "32000 didn't return data", socktypename, optionname);

 if (val[0] == 32000)
  errx(-1, "test_ip_uchar(%s, %s): getsockopt() after set to "
      "32000 returned 32000: failed to truncate", socktypename,
      optionname);
}
