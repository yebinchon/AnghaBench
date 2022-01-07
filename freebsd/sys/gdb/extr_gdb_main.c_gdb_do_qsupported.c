
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int gdb_dbfeatures; } ;


 int BIT (size_t) ;
 int EINVAL ;
 scalar_t__ GDB_BUFSZ ;
 int GDB_DBGP_FEAT_RELIABLE ;
 TYPE_1__* gdb_cur ;
 int * gdb_feature_names ;
 char gdb_rx_char () ;
 char* gdb_rxp ;
 scalar_t__ gdb_rxsz ;
 int gdb_tx_begin (int ) ;
 int gdb_tx_char (char) ;
 int gdb_tx_end () ;
 int gdb_tx_err (int ) ;
 int gdb_tx_str (char*) ;
 int gdb_tx_varhex (scalar_t__) ;
 size_t nitems (int *) ;
 int * strchr (char*,char) ;
 char* strchrnul (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
gdb_do_qsupported(uint32_t *feat)
{
 char *tok, *delim, ok;
 size_t i, toklen;


 *feat = 0;
 if (gdb_rx_char() != ':')
  goto error;

 while (gdb_rxsz > 0) {
  tok = gdb_rxp;
  delim = strchrnul(gdb_rxp, ';');
  toklen = (delim - tok);

  gdb_rxp += toklen;
  gdb_rxsz -= toklen;
  if (*delim != '\0') {
   *delim = '\0';
   gdb_rxp += 1;
   gdb_rxsz -= 1;
  }

  if (toklen < 2)
   goto error;

  ok = tok[toklen - 1];
  if (ok != '-' && ok != '+') {




   if (strchr(tok, '=') != ((void*)0))
    continue;

   goto error;
  }
  if (ok != '+')
   continue;
  tok[toklen - 1] = '\0';

  for (i = 0; i < nitems(gdb_feature_names); i++)
   if (strcmp(gdb_feature_names[i], tok) == 0)
    break;

  if (i == nitems(gdb_feature_names)) {

   continue;
  }

  *feat |= BIT(i);
 }


 gdb_tx_begin(0);

 gdb_tx_str("PacketSize");
 gdb_tx_char('=');




 gdb_tx_varhex(GDB_BUFSZ + strlen("$#nn") - 1);

 gdb_tx_str(";qXfer:threads:read+");






 if (gdb_cur->gdb_dbfeatures & GDB_DBGP_FEAT_RELIABLE)
  gdb_tx_str(";QStartNoAckMode+");






 gdb_tx_end();
 return;

error:
 *feat = 0;
 gdb_tx_err(EINVAL);
}
