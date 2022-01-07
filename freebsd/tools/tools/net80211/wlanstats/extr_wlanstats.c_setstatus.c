
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nitems (char const**) ;
 int snprintf (char*,size_t,char*,...) ;

void
setstatus(char b[], size_t bs, int v)
{
    static const char *status[] = {
 [133] = "success",
 [129] = "unspecified",
 [150] = "capinfo",
 [142] = "not assoced",
 [141] = "other",
 [152] = "algorithm",
 [137] = "sequence",
 [148] = "challenge",
 [131] = "timeout",
 [130] = "toomany",
 [151] = "basic rate",
 [134] = "sp required",
 [139] = "pbcc required",
 [149] = "ca required",
 [135] = "specmgmt required",
 [138] = "pwrcap required",
 [132] = "supchan required",
 [136] = "shortslot required",
 [146] = "dsssofdm required",
 [144] = "invalid ie",
 [145] = "group cipher invalid",
 [140]= "pairwise cipher invalid",
 [153] = "akmp invalid",
 [128]= "unsupported rsn ie version",
 [143] = "invalid rsn ie cap",
 [147]= "cipher suite rejected",
    };
    if (v < nitems(status) && status[v] != ((void*)0))
     snprintf(b, bs, "%s (%u)", status[v], v);
    else
     snprintf(b, bs, "%u", v);
}
