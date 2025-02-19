
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ type; int size; int sectsz; int sectsz_bits; int * ctx; int eui64; } ;
struct TYPE_4__ {char* sn; } ;
struct pci_nvme_softc {void* max_queues; void* num_squeues; void* num_cqueues; void* ioslots; void* max_qentries; TYPE_3__ nvstore; TYPE_2__* nsc_pi; TYPE_1__ ctrldata; } ;
typedef int bident ;
struct TYPE_5__ {int pi_slot; int pi_func; } ;


 void* NVME_IOSLOTS ;
 void* NVME_MAX_QENTRIES ;
 void* NVME_QUEUES ;
 scalar_t__ NVME_STOR_BLOCKIF ;
 scalar_t__ NVME_STOR_RAM ;
 void* atoi (char*) ;
 int * blockif_open (char*,char*) ;
 int blockif_sectsz (int *) ;
 int blockif_size (int *) ;
 int * calloc (int,int) ;
 int cpywithpad (char*,int,char*,char) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int htobe64 (int) ;
 int perror (char*) ;
 int snprintf (char*,int,char*,int,int) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 char* strdup (char*) ;
 char* strtok (char*,char*) ;
 int strtoull (char*,int *,int) ;

__attribute__((used)) static int
pci_nvme_parse_opts(struct pci_nvme_softc *sc, char *opts)
{
 char bident[sizeof("XX:X:X")];
 char *uopt, *xopts, *config;
 uint32_t sectsz;
 int optidx;

 sc->max_queues = NVME_QUEUES;
 sc->max_qentries = NVME_MAX_QENTRIES;
 sc->ioslots = NVME_IOSLOTS;
 sc->num_squeues = sc->max_queues;
 sc->num_cqueues = sc->max_queues;
 sectsz = 0;

 uopt = strdup(opts);
 optidx = 0;
 snprintf(sc->ctrldata.sn, sizeof(sc->ctrldata.sn),
          "NVME-%d-%d", sc->nsc_pi->pi_slot, sc->nsc_pi->pi_func);
 for (xopts = strtok(uopt, ",");
      xopts != ((void*)0);
      xopts = strtok(((void*)0), ",")) {

  if ((config = strchr(xopts, '=')) != ((void*)0))
   *config++ = '\0';

  if (!strcmp("maxq", xopts)) {
   sc->max_queues = atoi(config);
  } else if (!strcmp("qsz", xopts)) {
   sc->max_qentries = atoi(config);
  } else if (!strcmp("ioslots", xopts)) {
   sc->ioslots = atoi(config);
  } else if (!strcmp("sectsz", xopts)) {
   sectsz = atoi(config);
  } else if (!strcmp("ser", xopts)) {





   cpywithpad((char *)sc->ctrldata.sn,
              sizeof(sc->ctrldata.sn), config, ' ');
  } else if (!strcmp("ram", xopts)) {
   uint64_t sz = strtoull(&xopts[4], ((void*)0), 10);

   sc->nvstore.type = NVME_STOR_RAM;
   sc->nvstore.size = sz * 1024 * 1024;
   sc->nvstore.ctx = calloc(1, sc->nvstore.size);
   sc->nvstore.sectsz = 4096;
   sc->nvstore.sectsz_bits = 12;
   if (sc->nvstore.ctx == ((void*)0)) {
    perror("Unable to allocate RAM");
    free(uopt);
    return (-1);
   }
  } else if (!strcmp("eui64", xopts)) {
   sc->nvstore.eui64 = htobe64(strtoull(config, ((void*)0), 0));
  } else if (optidx == 0) {
   snprintf(bident, sizeof(bident), "%d:%d",
            sc->nsc_pi->pi_slot, sc->nsc_pi->pi_func);
   sc->nvstore.ctx = blockif_open(xopts, bident);
   if (sc->nvstore.ctx == ((void*)0)) {
    perror("Could not open backing file");
    free(uopt);
    return (-1);
   }
   sc->nvstore.type = NVME_STOR_BLOCKIF;
   sc->nvstore.size = blockif_size(sc->nvstore.ctx);
  } else {
   fprintf(stderr, "Invalid option %s\n", xopts);
   free(uopt);
   return (-1);
  }

  optidx++;
 }
 free(uopt);

 if (sc->nvstore.ctx == ((void*)0) || sc->nvstore.size == 0) {
  fprintf(stderr, "backing store not specified\n");
  return (-1);
 }
 if (sectsz == 512 || sectsz == 4096 || sectsz == 8192)
  sc->nvstore.sectsz = sectsz;
 else if (sc->nvstore.type != NVME_STOR_RAM)
  sc->nvstore.sectsz = blockif_sectsz(sc->nvstore.ctx);
 for (sc->nvstore.sectsz_bits = 9;
      (1 << sc->nvstore.sectsz_bits) < sc->nvstore.sectsz;
      sc->nvstore.sectsz_bits++);

 if (sc->max_queues <= 0 || sc->max_queues > NVME_QUEUES)
  sc->max_queues = NVME_QUEUES;

 if (sc->max_qentries <= 0) {
  fprintf(stderr, "Invalid qsz option\n");
  return (-1);
 }
 if (sc->ioslots <= 0) {
  fprintf(stderr, "Invalid ioslots option\n");
  return (-1);
 }

 return (0);
}
