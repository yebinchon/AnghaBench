
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* HexStr (unsigned int,int *,int ) ;

__attribute__((used)) static const char *
protoname(unsigned proto)
{
  static const char * const cftypes[] = {

    ((void*)0),
    "MRU",
    "ACCMAP",
    "AUTHPROTO",
    "QUALPROTO",
    "MAGICNUM",
    "RESERVED",
    "PROTOCOMP",
    "ACFCOMP",
    "FCSALT",
    "SDP",
    "NUMMODE",
    "MULTIPROC",
    "CALLBACK",
    "CONTIME",
    "COMPFRAME",
    "NDE",
    "MRRU",
    "SHORTSEQ",
    "ENDDISC",
    "PROPRIETRY",
    "DCEID",
    "MULTIPP",
    "LDBACP",
  };

  if (proto > sizeof cftypes / sizeof *cftypes || cftypes[proto] == ((void*)0))
    return HexStr(proto, ((void*)0), 0);

  return cftypes[proto];
}
