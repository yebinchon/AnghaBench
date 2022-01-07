
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nitems (char const**) ;
 int snprintf (char*,size_t,char*,...) ;

void
setreason(char b[], size_t bs, int v)
{
    static const char *reasons[] = {
 [129] = "unspecified",
 [143] = "auth expire",
 [142] = "auth leave",
 [147] = "assoc expire",
 [144] = "assoc toomany",
 [131] = "not authed",
 [132] = "not assoced",
 [146] = "assoc leave",
 [145] = "assoc not authed",
 [140] = "disassoc pwrcap bad",
 [139] = "disassoc supchan bad",
 [136] = "ie invalid",
 [133] = "mic failure",
 [150]= "4-way handshake timeout",
 [137] = "group key update timeout",
 [135] = "ie in 4-way differs",
 [138] = "group cipher invalid",
 [130]= "pairwise cipher invalid",
 [148] = "akmp invalid",
 [128]= "unsupported rsn ie version",
 [134] = "invalid rsn ie cap",
 [149] = "802.1x auth failed",
 [141]= "cipher suite rejected",
    };
    if (v < nitems(reasons) && reasons[v] != ((void*)0))
     snprintf(b, bs, "%s (%u)", reasons[v], v);
    else
     snprintf(b, bs, "%u", v);
}
