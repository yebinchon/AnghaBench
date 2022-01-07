
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char**) ;
 char* ENUM2STR (int ) ;
__attribute__((used)) static inline char *mid2str(int mid)
{

 static char *mid2str[] = {
  [134] = "SDP_MID_HELLO",
  [133] = "SDP_MID_HELLO_ACK",
  [139] = "SDP_MID_ABORT",
  [135] = "SDP_MID_DISCONN",
  [131] = "SDP_MID_SENDSM",
  [132] = "SDP_MID_RDMARDCOMPL",
  [128] = "SDP_MID_SRCAVAIL_CANCEL",
  [138] = "SDP_MID_CHRCVBUF",
  [137] = "SDP_MID_CHRCVBUF_ACK",
  [136] = "SDP_MID_DATA",
  [129] = "SDP_MID_SRCAVAIL",
  [130] = "SDP_MID_SINKAVAIL",
 };

 if (mid >= ARRAY_SIZE(mid2str))
  return ((void*)0);

 return mid2str[mid];
}
