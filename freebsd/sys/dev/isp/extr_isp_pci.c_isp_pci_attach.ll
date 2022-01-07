; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32 }
%struct.isp_pcisoftc = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_34__, i32*, i32*, i32*, i64, %struct.TYPE_30__*, i8**, i8* }
%struct.TYPE_34__ = type { i32, i32, i32, i32, %struct.TYPE_33__, i32*, i32, %struct.TYPE_35__*, i32*, i32*, i8*, i8* }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_31__* }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@isp_nvports = common dso_local global i64 0, align 8
@PCI_DFLT_LNSZ = common dso_local global i32 0, align 4
@BIU_REGS_OFF = common dso_local global i8* null, align 8
@BIU_BLOCK = common dso_local global i64 0, align 8
@_BLK_REG_SHFT = common dso_local global i64 0, align 8
@PCI_MBOX_REGS_OFF = common dso_local global i8* null, align 8
@MBOX_BLOCK = common dso_local global i64 0, align 8
@PCI_SXP_REGS_OFF = common dso_local global i8* null, align 8
@SXP_BLOCK = common dso_local global i64 0, align 8
@PCI_RISC_REGS_OFF = common dso_local global i8* null, align 8
@RISC_BLOCK = common dso_local global i64 0, align 8
@DMA_REGS_OFF = common dso_local global i8* null, align 8
@DMA_BLOCK = common dso_local global i64 0, align 8
@mdvec = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_SCSI_UNKNOWN = common dso_local global i8* null, align 8
@mdvec_1080 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_SCSI_1080 = common dso_local global i8* null, align 8
@ISP1080_DMA_REGS_OFF = common dso_local global i8* null, align 8
@ISP_HA_SCSI_1240 = common dso_local global i8* null, align 8
@ISP_HA_SCSI_1280 = common dso_local global i8* null, align 8
@mdvec_12160 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_SCSI_10160 = common dso_local global i8* null, align 8
@ISP_HA_SCSI_12160 = common dso_local global i8* null, align 8
@mdvec_2100 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_FC_2100 = common dso_local global i8* null, align 8
@PCI_MBOX_REGS2100_OFF = common dso_local global i8* null, align 8
@mdvec_2200 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_FC_2200 = common dso_local global i8* null, align 8
@mdvec_2300 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_FC_2300 = common dso_local global i8* null, align 8
@PCI_MBOX_REGS2300_OFF = common dso_local global i8* null, align 8
@ISP_HA_FC_2312 = common dso_local global i8* null, align 8
@ISP_HA_FC_2322 = common dso_local global i8* null, align 8
@mdvec_2400 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_FC_2400 = common dso_local global i8* null, align 8
@PCI_MBOX_REGS2400_OFF = common dso_local global i8* null, align 8
@mdvec_2500 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_FC_2500 = common dso_local global i8* null, align 8
@mdvec_2600 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_FC_2600 = common dso_local global i8* null, align 8
@mdvec_2700 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@ISP_HA_FC_2700 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown device type\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i8* null, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to map any ports\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Using %s space register mapping\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"cannot allocate parameter data\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"isp_%04x\00", align 1
@ISP_LOGCONFIG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"loaded firmware %s\00", align 1
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_SEREN = common dso_local global i32 0, align 4
@PCIM_CMD_PERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_INVEN = common dso_local global i32 0, align 4
@PCIM_CMD_INTX_DISABLE = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"set PCI line size to %d from %d\00", align 1
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@PCI_DFLT_LTNCY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"set PCI latency to %d\00", align 1
@PCIR_ROMADDR = common dso_local global i32 0, align 4
@ISP_LOGWARN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [74 x i8] c"See the ispfw(4) man page on how to load known good firmware at boot time\00", align 1
@SYS_RES_IRQ = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @isp_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_pci_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.isp_pcisoftc*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.isp_pcisoftc* @device_get_softc(i8* %14)
  store %struct.isp_pcisoftc* %15, %struct.isp_pcisoftc** %4, align 8
  %16 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %17 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %16, i32 0, i32 6
  store %struct.TYPE_34__* %17, %struct.TYPE_34__** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %20 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %19, i32 0, i32 13
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 11
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 3
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %28)
  store i64 0, i64* @isp_nvports, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %32 = call i32 @isp_get_generic_options(i8* %30, %struct.TYPE_34__* %31)
  %33 = load i32, i32* @PCI_DFLT_LNSZ, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %35 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %34, i32 0, i32 7
  store i32* null, i32** %35, align 8
  %36 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %37 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %36, i32 0, i32 9
  store i32* null, i32** %37, align 8
  %38 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %39 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %41 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %44 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %43, i32 0, i32 13
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @BIU_REGS_OFF, align 8
  %46 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %47 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %46, i32 0, i32 12
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* @BIU_BLOCK, align 8
  %50 = load i64, i64* @_BLK_REG_SHFT, align 8
  %51 = lshr i64 %49, %50
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  store i8* %45, i8** %52, align 8
  %53 = load i8*, i8** @PCI_MBOX_REGS_OFF, align 8
  %54 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %55 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %54, i32 0, i32 12
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* @MBOX_BLOCK, align 8
  %58 = load i64, i64* @_BLK_REG_SHFT, align 8
  %59 = lshr i64 %57, %58
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  store i8* %53, i8** %60, align 8
  %61 = load i8*, i8** @PCI_SXP_REGS_OFF, align 8
  %62 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %63 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %62, i32 0, i32 12
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* @SXP_BLOCK, align 8
  %66 = load i64, i64* @_BLK_REG_SHFT, align 8
  %67 = lshr i64 %65, %66
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %61, i8** %68, align 8
  %69 = load i8*, i8** @PCI_RISC_REGS_OFF, align 8
  %70 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %71 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %70, i32 0, i32 12
  %72 = load i8**, i8*** %71, align 8
  %73 = load i64, i64* @RISC_BLOCK, align 8
  %74 = load i64, i64* @_BLK_REG_SHFT, align 8
  %75 = lshr i64 %73, %74
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75
  store i8* %69, i8** %76, align 8
  %77 = load i8*, i8** @DMA_REGS_OFF, align 8
  %78 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %79 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %78, i32 0, i32 12
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* @DMA_BLOCK, align 8
  %82 = load i64, i64* @_BLK_REG_SHFT, align 8
  %83 = lshr i64 %81, %82
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  store i8* %77, i8** %84, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @pci_get_devid(i8* %85)
  switch i32 %86, label %340 [
    i32 149, label %87
    i32 148, label %93
    i32 146, label %107
    i32 145, label %123
    i32 150, label %137
    i32 147, label %151
    i32 143, label %167
    i32 142, label %186
    i32 141, label %200
    i32 140, label %214
    i32 130, label %214
    i32 139, label %228
    i32 129, label %228
    i32 138, label %242
    i32 137, label %242
    i32 136, label %263
    i32 131, label %284
    i32 144, label %298
    i32 128, label %298
    i32 135, label %319
    i32 134, label %319
    i32 133, label %319
    i32 132, label %319
  ]

87:                                               ; preds = %1
  store i32 4160, i32* %10, align 4
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec, %struct.TYPE_35__** %89, align 8
  %90 = load i8*, i8** @ISP_HA_SCSI_UNKNOWN, align 8
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 10
  store i8* %90, i8** %92, align 8
  br label %343

93:                                               ; preds = %1
  store i32 4224, i32* %10, align 4
  %94 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %94, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_1080, %struct.TYPE_35__** %95, align 8
  %96 = load i8*, i8** @ISP_HA_SCSI_1080, align 8
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 10
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @ISP1080_DMA_REGS_OFF, align 8
  %100 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %101 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %100, i32 0, i32 12
  %102 = load i8**, i8*** %101, align 8
  %103 = load i64, i64* @DMA_BLOCK, align 8
  %104 = load i64, i64* @_BLK_REG_SHFT, align 8
  %105 = lshr i64 %103, %104
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  store i8* %99, i8** %106, align 8
  br label %343

107:                                              ; preds = %1
  store i32 4224, i32* %10, align 4
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_1080, %struct.TYPE_35__** %109, align 8
  %110 = load i8*, i8** @ISP_HA_SCSI_1240, align 8
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 10
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 0
  store i32 2, i32* %114, align 8
  %115 = load i8*, i8** @ISP1080_DMA_REGS_OFF, align 8
  %116 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %117 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %116, i32 0, i32 12
  %118 = load i8**, i8*** %117, align 8
  %119 = load i64, i64* @DMA_BLOCK, align 8
  %120 = load i64, i64* @_BLK_REG_SHFT, align 8
  %121 = lshr i64 %119, %120
  %122 = getelementptr inbounds i8*, i8** %118, i64 %121
  store i8* %115, i8** %122, align 8
  br label %343

123:                                              ; preds = %1
  store i32 4224, i32* %10, align 4
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_1080, %struct.TYPE_35__** %125, align 8
  %126 = load i8*, i8** @ISP_HA_SCSI_1280, align 8
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i32 0, i32 10
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @ISP1080_DMA_REGS_OFF, align 8
  %130 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %131 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %130, i32 0, i32 12
  %132 = load i8**, i8*** %131, align 8
  %133 = load i64, i64* @DMA_BLOCK, align 8
  %134 = load i64, i64* @_BLK_REG_SHFT, align 8
  %135 = lshr i64 %133, %134
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  store i8* %129, i8** %136, align 8
  br label %343

137:                                              ; preds = %1
  store i32 74080, i32* %10, align 4
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %138, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_12160, %struct.TYPE_35__** %139, align 8
  %140 = load i8*, i8** @ISP_HA_SCSI_10160, align 8
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 10
  store i8* %140, i8** %142, align 8
  %143 = load i8*, i8** @ISP1080_DMA_REGS_OFF, align 8
  %144 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %145 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %144, i32 0, i32 12
  %146 = load i8**, i8*** %145, align 8
  %147 = load i64, i64* @DMA_BLOCK, align 8
  %148 = load i64, i64* @_BLK_REG_SHFT, align 8
  %149 = lshr i64 %147, %148
  %150 = getelementptr inbounds i8*, i8** %146, i64 %149
  store i8* %143, i8** %150, align 8
  br label %343

151:                                              ; preds = %1
  store i32 74080, i32* %10, align 4
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 0
  store i32 2, i32* %153, align 8
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_12160, %struct.TYPE_35__** %155, align 8
  %156 = load i8*, i8** @ISP_HA_SCSI_12160, align 8
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 10
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** @ISP1080_DMA_REGS_OFF, align 8
  %160 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %161 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %160, i32 0, i32 12
  %162 = load i8**, i8*** %161, align 8
  %163 = load i64, i64* @DMA_BLOCK, align 8
  %164 = load i64, i64* @_BLK_REG_SHFT, align 8
  %165 = lshr i64 %163, %164
  %166 = getelementptr inbounds i8*, i8** %162, i64 %165
  store i8* %159, i8** %166, align 8
  br label %343

167:                                              ; preds = %1
  store i32 8448, i32* %10, align 4
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2100, %struct.TYPE_35__** %169, align 8
  %170 = load i8*, i8** @ISP_HA_FC_2100, align 8
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 10
  store i8* %170, i8** %172, align 8
  %173 = load i8*, i8** @PCI_MBOX_REGS2100_OFF, align 8
  %174 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %175 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %174, i32 0, i32 12
  %176 = load i8**, i8*** %175, align 8
  %177 = load i64, i64* @MBOX_BLOCK, align 8
  %178 = load i64, i64* @_BLK_REG_SHFT, align 8
  %179 = lshr i64 %177, %178
  %180 = getelementptr inbounds i8*, i8** %176, i64 %179
  store i8* %173, i8** %180, align 8
  %181 = load i8*, i8** %3, align 8
  %182 = call i32 @pci_get_revid(i8* %181)
  %183 = icmp slt i32 %182, 3
  br i1 %183, label %184, label %185

184:                                              ; preds = %167
  store i32 1, i32* %9, align 4
  br label %185

185:                                              ; preds = %184, %167
  br label %343

186:                                              ; preds = %1
  store i32 8704, i32* %10, align 4
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2200, %struct.TYPE_35__** %188, align 8
  %189 = load i8*, i8** @ISP_HA_FC_2200, align 8
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 10
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** @PCI_MBOX_REGS2100_OFF, align 8
  %193 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %194 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %193, i32 0, i32 12
  %195 = load i8**, i8*** %194, align 8
  %196 = load i64, i64* @MBOX_BLOCK, align 8
  %197 = load i64, i64* @_BLK_REG_SHFT, align 8
  %198 = lshr i64 %196, %197
  %199 = getelementptr inbounds i8*, i8** %195, i64 %198
  store i8* %192, i8** %199, align 8
  br label %343

200:                                              ; preds = %1
  store i32 8960, i32* %10, align 4
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2300, %struct.TYPE_35__** %202, align 8
  %203 = load i8*, i8** @ISP_HA_FC_2300, align 8
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %204, i32 0, i32 10
  store i8* %203, i8** %205, align 8
  %206 = load i8*, i8** @PCI_MBOX_REGS2300_OFF, align 8
  %207 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %208 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %207, i32 0, i32 12
  %209 = load i8**, i8*** %208, align 8
  %210 = load i64, i64* @MBOX_BLOCK, align 8
  %211 = load i64, i64* @_BLK_REG_SHFT, align 8
  %212 = lshr i64 %210, %211
  %213 = getelementptr inbounds i8*, i8** %209, i64 %212
  store i8* %206, i8** %213, align 8
  br label %343

214:                                              ; preds = %1, %1
  store i32 8960, i32* %10, align 4
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2300, %struct.TYPE_35__** %216, align 8
  %217 = load i8*, i8** @ISP_HA_FC_2312, align 8
  %218 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %218, i32 0, i32 10
  store i8* %217, i8** %219, align 8
  %220 = load i8*, i8** @PCI_MBOX_REGS2300_OFF, align 8
  %221 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %222 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %221, i32 0, i32 12
  %223 = load i8**, i8*** %222, align 8
  %224 = load i64, i64* @MBOX_BLOCK, align 8
  %225 = load i64, i64* @_BLK_REG_SHFT, align 8
  %226 = lshr i64 %224, %225
  %227 = getelementptr inbounds i8*, i8** %223, i64 %226
  store i8* %220, i8** %227, align 8
  br label %343

228:                                              ; preds = %1, %1
  store i32 8994, i32* %10, align 4
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2300, %struct.TYPE_35__** %230, align 8
  %231 = load i8*, i8** @ISP_HA_FC_2322, align 8
  %232 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %232, i32 0, i32 10
  store i8* %231, i8** %233, align 8
  %234 = load i8*, i8** @PCI_MBOX_REGS2300_OFF, align 8
  %235 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %236 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %235, i32 0, i32 12
  %237 = load i8**, i8*** %236, align 8
  %238 = load i64, i64* @MBOX_BLOCK, align 8
  %239 = load i64, i64* @_BLK_REG_SHFT, align 8
  %240 = lshr i64 %238, %239
  %241 = getelementptr inbounds i8*, i8** %237, i64 %240
  store i8* %234, i8** %241, align 8
  br label %343

242:                                              ; preds = %1, %1
  store i32 9216, i32* %10, align 4
  %243 = load i64, i64* @isp_nvports, align 8
  %244 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %243
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 8
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2400, %struct.TYPE_35__** %251, align 8
  %252 = load i8*, i8** @ISP_HA_FC_2400, align 8
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 10
  store i8* %252, i8** %254, align 8
  %255 = load i8*, i8** @PCI_MBOX_REGS2400_OFF, align 8
  %256 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %257 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %256, i32 0, i32 12
  %258 = load i8**, i8*** %257, align 8
  %259 = load i64, i64* @MBOX_BLOCK, align 8
  %260 = load i64, i64* @_BLK_REG_SHFT, align 8
  %261 = lshr i64 %259, %260
  %262 = getelementptr inbounds i8*, i8** %258, i64 %261
  store i8* %255, i8** %262, align 8
  br label %343

263:                                              ; preds = %1
  store i32 9472, i32* %10, align 4
  %264 = load i64, i64* @isp_nvports, align 8
  %265 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %268, %264
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %266, align 8
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %271, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2500, %struct.TYPE_35__** %272, align 8
  %273 = load i8*, i8** @ISP_HA_FC_2500, align 8
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %274, i32 0, i32 10
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** @PCI_MBOX_REGS2400_OFF, align 8
  %277 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %278 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %277, i32 0, i32 12
  %279 = load i8**, i8*** %278, align 8
  %280 = load i64, i64* @MBOX_BLOCK, align 8
  %281 = load i64, i64* @_BLK_REG_SHFT, align 8
  %282 = lshr i64 %280, %281
  %283 = getelementptr inbounds i8*, i8** %279, i64 %282
  store i8* %276, i8** %283, align 8
  br label %343

284:                                              ; preds = %1
  store i32 9472, i32* %10, align 4
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2500, %struct.TYPE_35__** %286, align 8
  %287 = load i8*, i8** @ISP_HA_FC_2500, align 8
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 10
  store i8* %287, i8** %289, align 8
  %290 = load i8*, i8** @PCI_MBOX_REGS2400_OFF, align 8
  %291 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %292 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %291, i32 0, i32 12
  %293 = load i8**, i8*** %292, align 8
  %294 = load i64, i64* @MBOX_BLOCK, align 8
  %295 = load i64, i64* @_BLK_REG_SHFT, align 8
  %296 = lshr i64 %294, %295
  %297 = getelementptr inbounds i8*, i8** %293, i64 %296
  store i8* %290, i8** %297, align 8
  br label %343

298:                                              ; preds = %1, %1
  store i32 9728, i32* %10, align 4
  %299 = load i64, i64* @isp_nvports, align 8
  %300 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = add nsw i64 %303, %299
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %301, align 8
  %306 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %306, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2600, %struct.TYPE_35__** %307, align 8
  %308 = load i8*, i8** @ISP_HA_FC_2600, align 8
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 10
  store i8* %308, i8** %310, align 8
  %311 = load i8*, i8** @PCI_MBOX_REGS2400_OFF, align 8
  %312 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %313 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %312, i32 0, i32 12
  %314 = load i8**, i8*** %313, align 8
  %315 = load i64, i64* @MBOX_BLOCK, align 8
  %316 = load i64, i64* @_BLK_REG_SHFT, align 8
  %317 = lshr i64 %315, %316
  %318 = getelementptr inbounds i8*, i8** %314, i64 %317
  store i8* %311, i8** %318, align 8
  br label %343

319:                                              ; preds = %1, %1, %1, %1
  store i32 9984, i32* %10, align 4
  %320 = load i64, i64* @isp_nvports, align 8
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %324, %320
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* %322, align 8
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 7
  store %struct.TYPE_35__* @mdvec_2700, %struct.TYPE_35__** %328, align 8
  %329 = load i8*, i8** @ISP_HA_FC_2700, align 8
  %330 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %330, i32 0, i32 10
  store i8* %329, i8** %331, align 8
  %332 = load i8*, i8** @PCI_MBOX_REGS2400_OFF, align 8
  %333 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %334 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %333, i32 0, i32 12
  %335 = load i8**, i8*** %334, align 8
  %336 = load i64, i64* @MBOX_BLOCK, align 8
  %337 = load i64, i64* @_BLK_REG_SHFT, align 8
  %338 = lshr i64 %336, %337
  %339 = getelementptr inbounds i8*, i8** %335, i64 %338
  store i8* %332, i8** %339, align 8
  br label %343

340:                                              ; preds = %1
  %341 = load i8*, i8** %3, align 8
  %342 = call i32 (i8*, i8*, ...) @device_printf(i8* %341, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %728

343:                                              ; preds = %319, %298, %284, %263, %242, %228, %214, %200, %186, %185, %151, %137, %123, %107, %93, %87
  %344 = load i8*, i8** %3, align 8
  %345 = call i32 @pci_get_revid(i8* %344)
  %346 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 4
  %348 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %349 = call i64 @IS_26XX(%struct.TYPE_34__* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %409

351:                                              ; preds = %343
  %352 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %353 = ptrtoint i8* %352 to i64
  %354 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %355 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %354, i32 0, i32 1
  store i64 %353, i64* %355, align 8
  %356 = call i8* @PCIR_BAR(i32 0)
  %357 = ptrtoint i8* %356 to i64
  %358 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %359 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %358, i32 0, i32 0
  store i64 %357, i64* %359, align 8
  %360 = load i8*, i8** %3, align 8
  %361 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %362 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %365 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %364, i32 0, i32 0
  %366 = load i32, i32* @RF_ACTIVE, align 4
  %367 = call i8* @bus_alloc_resource_any(i8* %360, i64 %363, i64* %365, i32 %366)
  %368 = bitcast i8* %367 to i32*
  %369 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %370 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %369, i32 0, i32 9
  store i32* %368, i32** %370, align 8
  %371 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %372 = ptrtoint i8* %371 to i64
  %373 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %374 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %373, i32 0, i32 2
  store i64 %372, i64* %374, align 8
  %375 = call i8* @PCIR_BAR(i32 2)
  %376 = ptrtoint i8* %375 to i64
  %377 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %378 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %377, i32 0, i32 3
  store i64 %376, i64* %378, align 8
  %379 = load i8*, i8** %3, align 8
  %380 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %381 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %380, i32 0, i32 2
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %384 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %383, i32 0, i32 3
  %385 = load i32, i32* @RF_ACTIVE, align 4
  %386 = call i8* @bus_alloc_resource_any(i8* %379, i64 %382, i64* %384, i32 %385)
  %387 = bitcast i8* %386 to i32*
  %388 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %389 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %388, i32 0, i32 8
  store i32* %387, i32** %389, align 8
  %390 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %391 = ptrtoint i8* %390 to i64
  %392 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %393 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %392, i32 0, i32 4
  store i64 %391, i64* %393, align 8
  %394 = call i8* @PCIR_BAR(i32 4)
  %395 = ptrtoint i8* %394 to i64
  %396 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %397 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %396, i32 0, i32 5
  store i64 %395, i64* %397, align 8
  %398 = load i8*, i8** %3, align 8
  %399 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %400 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %399, i32 0, i32 4
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %403 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %402, i32 0, i32 5
  %404 = load i32, i32* @RF_ACTIVE, align 4
  %405 = call i8* @bus_alloc_resource_any(i8* %398, i64 %401, i64* %403, i32 %404)
  %406 = bitcast i8* %405 to i32*
  %407 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %408 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %407, i32 0, i32 7
  store i32* %406, i32** %408, align 8
  br label %453

409:                                              ; preds = %343
  %410 = load i8*, i8** @SYS_RES_MEMORY, align 8
  %411 = ptrtoint i8* %410 to i64
  %412 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %413 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %412, i32 0, i32 1
  store i64 %411, i64* %413, align 8
  %414 = call i8* @PCIR_BAR(i32 1)
  %415 = ptrtoint i8* %414 to i64
  %416 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %417 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %416, i32 0, i32 0
  store i64 %415, i64* %417, align 8
  %418 = load i8*, i8** %3, align 8
  %419 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %420 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %419, i32 0, i32 1
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %423 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %422, i32 0, i32 0
  %424 = load i32, i32* @RF_ACTIVE, align 4
  %425 = call i8* @bus_alloc_resource_any(i8* %418, i64 %421, i64* %423, i32 %424)
  %426 = bitcast i8* %425 to i32*
  %427 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %428 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %427, i32 0, i32 9
  store i32* %426, i32** %428, align 8
  %429 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %430 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %429, i32 0, i32 9
  %431 = load i32*, i32** %430, align 8
  %432 = icmp eq i32* %431, null
  br i1 %432, label %433, label %452

433:                                              ; preds = %409
  %434 = load i64, i64* @SYS_RES_IOPORT, align 8
  %435 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %436 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %435, i32 0, i32 1
  store i64 %434, i64* %436, align 8
  %437 = call i8* @PCIR_BAR(i32 0)
  %438 = ptrtoint i8* %437 to i64
  %439 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %440 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %439, i32 0, i32 0
  store i64 %438, i64* %440, align 8
  %441 = load i8*, i8** %3, align 8
  %442 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %443 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %446 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %445, i32 0, i32 0
  %447 = load i32, i32* @RF_ACTIVE, align 4
  %448 = call i8* @bus_alloc_resource_any(i8* %441, i64 %444, i64* %446, i32 %447)
  %449 = bitcast i8* %448 to i32*
  %450 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %451 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %450, i32 0, i32 9
  store i32* %449, i32** %451, align 8
  br label %452

452:                                              ; preds = %433, %409
  br label %453

453:                                              ; preds = %452, %351
  %454 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %455 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %454, i32 0, i32 9
  %456 = load i32*, i32** %455, align 8
  %457 = icmp eq i32* %456, null
  br i1 %457, label %458, label %461

458:                                              ; preds = %453
  %459 = load i8*, i8** %3, align 8
  %460 = call i32 (i8*, i8*, ...) @device_printf(i8* %459, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %728

461:                                              ; preds = %453
  %462 = load i64, i64* @bootverbose, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %474

464:                                              ; preds = %461
  %465 = load i8*, i8** %3, align 8
  %466 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %467 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @SYS_RES_IOPORT, align 8
  %470 = icmp eq i64 %468, %469
  %471 = zext i1 %470 to i64
  %472 = select i1 %470, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %473 = call i32 (i8*, i8*, ...) @device_printf(i8* %465, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %472)
  br label %474

474:                                              ; preds = %464, %461
  %475 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %476 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %475, i32 0, i32 9
  %477 = load i32*, i32** %476, align 8
  %478 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %478, i32 0, i32 9
  store i32* %477, i32** %479, align 8
  %480 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %481 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %480, i32 0, i32 7
  %482 = load i32*, i32** %481, align 8
  %483 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %483, i32 0, i32 8
  store i32* %482, i32** %484, align 8
  %485 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %486 = call i64 @IS_FC(%struct.TYPE_34__* %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %489

488:                                              ; preds = %474
  store i64 4, i64* %11, align 8
  store i64 4, i64* %12, align 8
  br label %490

489:                                              ; preds = %474
  store i64 4, i64* %11, align 8
  store i64 4, i64* %12, align 8
  br label %490

490:                                              ; preds = %489, %488
  %491 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = sext i32 %493 to i64
  %495 = load i64, i64* %11, align 8
  %496 = mul i64 %495, %494
  store i64 %496, i64* %11, align 8
  %497 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = sext i32 %499 to i64
  %501 = load i64, i64* %12, align 8
  %502 = mul i64 %501, %500
  store i64 %502, i64* %12, align 8
  %503 = load i64, i64* %11, align 8
  %504 = load i32, i32* @M_DEVBUF, align 4
  %505 = load i32, i32* @M_NOWAIT, align 4
  %506 = load i32, i32* @M_ZERO, align 4
  %507 = or i32 %505, %506
  %508 = call i8* @malloc(i64 %503, i32 %504, i32 %507)
  %509 = bitcast i8* %508 to i32*
  %510 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %511 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %510, i32 0, i32 5
  store i32* %509, i32** %511, align 8
  %512 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %512, i32 0, i32 5
  %514 = load i32*, i32** %513, align 8
  %515 = icmp eq i32* %514, null
  br i1 %515, label %516, label %519

516:                                              ; preds = %490
  %517 = load i8*, i8** %3, align 8
  %518 = call i32 (i8*, i8*, ...) @device_printf(i8* %517, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %728

519:                                              ; preds = %490
  %520 = load i64, i64* %12, align 8
  %521 = load i32, i32* @M_DEVBUF, align 4
  %522 = load i32, i32* @M_NOWAIT, align 4
  %523 = load i32, i32* @M_ZERO, align 4
  %524 = or i32 %522, %523
  %525 = call i8* @malloc(i64 %520, i32 %521, i32 %524)
  %526 = bitcast i8* %525 to i32*
  %527 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %527, i32 0, i32 4
  %529 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %529, i32 0, i32 0
  store i32* %526, i32** %530, align 8
  %531 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %531, i32 0, i32 4
  %533 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %533, i32 0, i32 0
  %535 = load i32*, i32** %534, align 8
  %536 = icmp eq i32* %535, null
  br i1 %536, label %537, label %540

537:                                              ; preds = %519
  %538 = load i8*, i8** %3, align 8
  %539 = call i32 (i8*, i8*, ...) @device_printf(i8* %538, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %728

540:                                              ; preds = %519
  store i32 0, i32* %6, align 4
  br label %541

541:                                              ; preds = %552, %540
  %542 = load i32, i32* %6, align 4
  %543 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %544 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = icmp slt i32 %542, %545
  br i1 %546, label %547, label %555

547:                                              ; preds = %541
  %548 = load i8*, i8** %3, align 8
  %549 = load i32, i32* %6, align 4
  %550 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %551 = call i32 @isp_get_specific_options(i8* %548, i32 %549, %struct.TYPE_34__* %550)
  br label %552

552:                                              ; preds = %547
  %553 = load i32, i32* %6, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %6, align 4
  br label %541

555:                                              ; preds = %541
  %556 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %557 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %556, i32 0, i32 4
  %558 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %557, i32 0, i32 1
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %558, align 8
  %559 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %560 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %559, i32 0, i32 4
  %561 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %560, i32 0, i32 1
  %562 = load %struct.TYPE_31__*, %struct.TYPE_31__** %561, align 8
  %563 = icmp eq %struct.TYPE_31__* %562, null
  br i1 %563, label %564, label %573

564:                                              ; preds = %555
  %565 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %566 = load i32, i32* %10, align 4
  %567 = call i32 @snprintf(i8* %565, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %566)
  %568 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %569 = call %struct.TYPE_31__* @firmware_get(i8* %568)
  %570 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %570, i32 0, i32 4
  %572 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %571, i32 0, i32 1
  store %struct.TYPE_31__* %569, %struct.TYPE_31__** %572, align 8
  br label %573

573:                                              ; preds = %564, %555
  %574 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %574, i32 0, i32 4
  %576 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %575, i32 0, i32 1
  %577 = load %struct.TYPE_31__*, %struct.TYPE_31__** %576, align 8
  %578 = icmp ne %struct.TYPE_31__* %577, null
  br i1 %578, label %579, label %594

579:                                              ; preds = %573
  %580 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %581 = load i32, i32* @ISP_LOGCONFIG, align 4
  %582 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %583 = call i32 (%struct.TYPE_34__*, i32, i8*, ...) @isp_prt(%struct.TYPE_34__* %580, i32 %581, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %582)
  %584 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %584, i32 0, i32 4
  %586 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %585, i32 0, i32 1
  %587 = load %struct.TYPE_31__*, %struct.TYPE_31__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %590, i32 0, i32 7
  %592 = load %struct.TYPE_35__*, %struct.TYPE_35__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %592, i32 0, i32 0
  store i32 %589, i32* %593, align 4
  br label %594

594:                                              ; preds = %579, %573
  %595 = load i8*, i8** %3, align 8
  %596 = load i32, i32* @PCIR_COMMAND, align 4
  %597 = call i32 @pci_read_config(i8* %595, i32 %596, i32 2)
  store i32 %597, i32* %8, align 4
  %598 = load i32, i32* @PCIM_CMD_SEREN, align 4
  %599 = load i32, i32* @PCIM_CMD_PERRESPEN, align 4
  %600 = or i32 %598, %599
  %601 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %602 = or i32 %600, %601
  %603 = load i32, i32* @PCIM_CMD_INVEN, align 4
  %604 = or i32 %602, %603
  %605 = load i32, i32* %8, align 4
  %606 = or i32 %605, %604
  store i32 %606, i32* %8, align 4
  %607 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %608 = call i64 @IS_2300(%struct.TYPE_34__* %607)
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %615

610:                                              ; preds = %594
  %611 = load i32, i32* @PCIM_CMD_INVEN, align 4
  %612 = xor i32 %611, -1
  %613 = load i32, i32* %8, align 4
  %614 = and i32 %613, %612
  store i32 %614, i32* %8, align 4
  br label %615

615:                                              ; preds = %610, %594
  %616 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %617 = call i64 @IS_2322(%struct.TYPE_34__* %616)
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %623, label %619

619:                                              ; preds = %615
  %620 = load i8*, i8** %3, align 8
  %621 = call i32 @pci_get_devid(i8* %620)
  %622 = icmp eq i32 %621, 130
  br i1 %622, label %623, label %628

623:                                              ; preds = %619, %615
  %624 = load i32, i32* @PCIM_CMD_INTX_DISABLE, align 4
  %625 = xor i32 %624, -1
  %626 = load i32, i32* %8, align 4
  %627 = and i32 %626, %625
  store i32 %627, i32* %8, align 4
  br label %628

628:                                              ; preds = %623, %619
  %629 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %630 = call i64 @IS_24XX(%struct.TYPE_34__* %629)
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %637

632:                                              ; preds = %628
  %633 = load i32, i32* @PCIM_CMD_INTX_DISABLE, align 4
  %634 = xor i32 %633, -1
  %635 = load i32, i32* %8, align 4
  %636 = and i32 %635, %634
  store i32 %636, i32* %8, align 4
  br label %637

637:                                              ; preds = %632, %628
  %638 = load i8*, i8** %3, align 8
  %639 = load i32, i32* @PCIR_COMMAND, align 4
  %640 = load i32, i32* %8, align 4
  %641 = call i32 @pci_write_config(i8* %638, i32 %639, i32 %640, i32 2)
  %642 = load i8*, i8** %3, align 8
  %643 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %644 = call i32 @pci_read_config(i8* %642, i32 %643, i32 1)
  store i32 %644, i32* %7, align 4
  %645 = load i32, i32* %7, align 4
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %655, label %647

647:                                              ; preds = %637
  %648 = load i32, i32* %9, align 4
  %649 = load i32, i32* @PCI_DFLT_LNSZ, align 4
  %650 = icmp ne i32 %648, %649
  br i1 %650, label %651, label %666

651:                                              ; preds = %647
  %652 = load i32, i32* %7, align 4
  %653 = load i32, i32* %9, align 4
  %654 = icmp ne i32 %652, %653
  br i1 %654, label %655, label %666

655:                                              ; preds = %651, %637
  %656 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %657 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %658 = load i32, i32* %9, align 4
  %659 = load i32, i32* %7, align 4
  %660 = call i32 (%struct.TYPE_34__*, i32, i8*, ...) @isp_prt(%struct.TYPE_34__* %656, i32 %657, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %658, i32 %659)
  %661 = load i32, i32* %9, align 4
  store i32 %661, i32* %7, align 4
  %662 = load i8*, i8** %3, align 8
  %663 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %664 = load i32, i32* %7, align 4
  %665 = call i32 @pci_write_config(i8* %662, i32 %663, i32 %664, i32 1)
  br label %666

666:                                              ; preds = %655, %651, %647
  %667 = load i8*, i8** %3, align 8
  %668 = load i32, i32* @PCIR_LATTIMER, align 4
  %669 = call i32 @pci_read_config(i8* %667, i32 %668, i32 1)
  store i32 %669, i32* %7, align 4
  %670 = load i32, i32* %7, align 4
  %671 = load i32, i32* @PCI_DFLT_LTNCY, align 4
  %672 = icmp slt i32 %670, %671
  br i1 %672, label %673, label %683

673:                                              ; preds = %666
  %674 = load i32, i32* @PCI_DFLT_LTNCY, align 4
  store i32 %674, i32* %7, align 4
  %675 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %676 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %677 = load i32, i32* %7, align 4
  %678 = call i32 (%struct.TYPE_34__*, i32, i8*, ...) @isp_prt(%struct.TYPE_34__* %675, i32 %676, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %677)
  %679 = load i8*, i8** %3, align 8
  %680 = load i32, i32* @PCIR_LATTIMER, align 4
  %681 = load i32, i32* %7, align 4
  %682 = call i32 @pci_write_config(i8* %679, i32 %680, i32 %681, i32 1)
  br label %683

683:                                              ; preds = %673, %666
  %684 = load i8*, i8** %3, align 8
  %685 = load i32, i32* @PCIR_ROMADDR, align 4
  %686 = call i32 @pci_read_config(i8* %684, i32 %685, i32 4)
  store i32 %686, i32* %7, align 4
  %687 = load i32, i32* %7, align 4
  %688 = and i32 %687, -2
  store i32 %688, i32* %7, align 4
  %689 = load i8*, i8** %3, align 8
  %690 = load i32, i32* @PCIR_ROMADDR, align 4
  %691 = load i32, i32* %7, align 4
  %692 = call i32 @pci_write_config(i8* %689, i32 %690, i32 %691, i32 4)
  %693 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %694 = call i64 @IS_23XX(%struct.TYPE_34__* %693)
  %695 = icmp ne i64 %694, 0
  br i1 %695, label %700, label %696

696:                                              ; preds = %683
  %697 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %698 = call i64 @IS_24XX(%struct.TYPE_34__* %697)
  %699 = icmp ne i64 %698, 0
  br i1 %699, label %700, label %705

700:                                              ; preds = %696, %683
  %701 = load i8*, i8** %3, align 8
  %702 = call i32 @pci_get_function(i8* %701)
  %703 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %704 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %703, i32 0, i32 6
  store i32 %702, i32* %704, align 8
  br label %705

705:                                              ; preds = %700, %696
  %706 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %707 = call i32 @ISP_LOCK(%struct.TYPE_34__* %706)
  %708 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %709 = call i64 @isp_reinit(%struct.TYPE_34__* %708, i32 1)
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %705
  %712 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %713 = call i32 @ISP_UNLOCK(%struct.TYPE_34__* %712)
  br label %728

714:                                              ; preds = %705
  %715 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %716 = call i32 @ISP_UNLOCK(%struct.TYPE_34__* %715)
  %717 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %718 = call i64 @isp_attach(%struct.TYPE_34__* %717)
  %719 = icmp ne i64 %718, 0
  br i1 %719, label %720, label %727

720:                                              ; preds = %714
  %721 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %722 = call i32 @ISP_LOCK(%struct.TYPE_34__* %721)
  %723 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %724 = call i32 @isp_shutdown(%struct.TYPE_34__* %723)
  %725 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %726 = call i32 @ISP_UNLOCK(%struct.TYPE_34__* %725)
  br label %728

727:                                              ; preds = %714
  store i32 0, i32* %2, align 4
  br label %890

728:                                              ; preds = %720, %711, %537, %516, %458, %340
  %729 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %730 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %729, i32 0, i32 4
  %731 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %730, i32 0, i32 1
  %732 = load %struct.TYPE_31__*, %struct.TYPE_31__** %731, align 8
  %733 = icmp eq %struct.TYPE_31__* %732, null
  br i1 %733, label %734, label %742

734:                                              ; preds = %728
  %735 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %736 = call i64 @IS_26XX(%struct.TYPE_34__* %735)
  %737 = icmp ne i64 %736, 0
  br i1 %737, label %742, label %738

738:                                              ; preds = %734
  %739 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %740 = load i32, i32* @ISP_LOGWARN, align 4
  %741 = call i32 (%struct.TYPE_34__*, i32, i8*, ...) @isp_prt(%struct.TYPE_34__* %739, i32 %740, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.11, i64 0, i64 0))
  br label %742

742:                                              ; preds = %738, %734, %728
  store i32 0, i32* %6, align 4
  br label %743

743:                                              ; preds = %785, %742
  %744 = load i32, i32* %6, align 4
  %745 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %746 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %745, i32 0, i32 2
  %747 = load i32, i32* %746, align 8
  %748 = icmp slt i32 %744, %747
  br i1 %748, label %749, label %788

749:                                              ; preds = %743
  %750 = load i8*, i8** %3, align 8
  %751 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %752 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %751, i32 0, i32 11
  %753 = load %struct.TYPE_30__*, %struct.TYPE_30__** %752, align 8
  %754 = load i32, i32* %6, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %753, i64 %755
  %757 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %756, i32 0, i32 1
  %758 = load i32*, i32** %757, align 8
  %759 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %760 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %759, i32 0, i32 11
  %761 = load %struct.TYPE_30__*, %struct.TYPE_30__** %760, align 8
  %762 = load i32, i32* %6, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %761, i64 %763
  %765 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %764, i32 0, i32 2
  %766 = load i32, i32* %765, align 8
  %767 = call i32 @bus_teardown_intr(i8* %750, i32* %758, i32 %766)
  %768 = load i8*, i8** %3, align 8
  %769 = load i64, i64* @SYS_RES_IRQ, align 8
  %770 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %771 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %770, i32 0, i32 11
  %772 = load %struct.TYPE_30__*, %struct.TYPE_30__** %771, align 8
  %773 = load i32, i32* %6, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %772, i64 %774
  %776 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %775, i32 0, i32 0
  %777 = load i64, i64* %776, align 8
  %778 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %779 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %778, i32 0, i32 11
  %780 = load %struct.TYPE_30__*, %struct.TYPE_30__** %779, align 8
  %781 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %780, i64 0
  %782 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %781, i32 0, i32 1
  %783 = load i32*, i32** %782, align 8
  %784 = call i32 @bus_release_resource(i8* %768, i64 %769, i64 %777, i32* %783)
  br label %785

785:                                              ; preds = %749
  %786 = load i32, i32* %6, align 4
  %787 = add nsw i32 %786, 1
  store i32 %787, i32* %6, align 4
  br label %743

788:                                              ; preds = %743
  %789 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %790 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %789, i32 0, i32 10
  %791 = load i64, i64* %790, align 8
  %792 = icmp ne i64 %791, 0
  br i1 %792, label %793, label %796

793:                                              ; preds = %788
  %794 = load i8*, i8** %3, align 8
  %795 = call i32 @pci_release_msi(i8* %794)
  br label %796

796:                                              ; preds = %793, %788
  %797 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %798 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %797, i32 0, i32 9
  %799 = load i32*, i32** %798, align 8
  %800 = icmp ne i32* %799, null
  br i1 %800, label %801, label %813

801:                                              ; preds = %796
  %802 = load i8*, i8** %3, align 8
  %803 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %804 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %803, i32 0, i32 1
  %805 = load i64, i64* %804, align 8
  %806 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %807 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %806, i32 0, i32 0
  %808 = load i64, i64* %807, align 8
  %809 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %810 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %809, i32 0, i32 9
  %811 = load i32*, i32** %810, align 8
  %812 = call i32 @bus_release_resource(i8* %802, i64 %805, i64 %808, i32* %811)
  br label %813

813:                                              ; preds = %801, %796
  %814 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %815 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %814, i32 0, i32 8
  %816 = load i32*, i32** %815, align 8
  %817 = icmp ne i32* %816, null
  br i1 %817, label %818, label %830

818:                                              ; preds = %813
  %819 = load i8*, i8** %3, align 8
  %820 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %821 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %820, i32 0, i32 2
  %822 = load i64, i64* %821, align 8
  %823 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %824 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %823, i32 0, i32 3
  %825 = load i64, i64* %824, align 8
  %826 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %827 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %826, i32 0, i32 8
  %828 = load i32*, i32** %827, align 8
  %829 = call i32 @bus_release_resource(i8* %819, i64 %822, i64 %825, i32* %828)
  br label %830

830:                                              ; preds = %818, %813
  %831 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %832 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %831, i32 0, i32 7
  %833 = load i32*, i32** %832, align 8
  %834 = icmp ne i32* %833, null
  br i1 %834, label %835, label %847

835:                                              ; preds = %830
  %836 = load i8*, i8** %3, align 8
  %837 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %838 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %837, i32 0, i32 4
  %839 = load i64, i64* %838, align 8
  %840 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %841 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %840, i32 0, i32 5
  %842 = load i64, i64* %841, align 8
  %843 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %844 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %843, i32 0, i32 7
  %845 = load i32*, i32** %844, align 8
  %846 = call i32 @bus_release_resource(i8* %836, i64 %839, i64 %842, i32* %845)
  br label %847

847:                                              ; preds = %835, %830
  %848 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %849 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %848, i32 0, i32 6
  %850 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %849, i32 0, i32 5
  %851 = load i32*, i32** %850, align 8
  %852 = icmp ne i32* %851, null
  br i1 %852, label %853, label %863

853:                                              ; preds = %847
  %854 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %855 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %854, i32 0, i32 6
  %856 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %855, i32 0, i32 5
  %857 = load i32*, i32** %856, align 8
  %858 = load i32, i32* @M_DEVBUF, align 4
  %859 = call i32 @free(i32* %857, i32 %858)
  %860 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %861 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %860, i32 0, i32 6
  %862 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %861, i32 0, i32 5
  store i32* null, i32** %862, align 8
  br label %863

863:                                              ; preds = %853, %847
  %864 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %865 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %864, i32 0, i32 6
  %866 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %865, i32 0, i32 4
  %867 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %866, i32 0, i32 0
  %868 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %867, i32 0, i32 0
  %869 = load i32*, i32** %868, align 8
  %870 = icmp ne i32* %869, null
  br i1 %870, label %871, label %885

871:                                              ; preds = %863
  %872 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %873 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %872, i32 0, i32 6
  %874 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %873, i32 0, i32 4
  %875 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %874, i32 0, i32 0
  %876 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %875, i32 0, i32 0
  %877 = load i32*, i32** %876, align 8
  %878 = load i32, i32* @M_DEVBUF, align 4
  %879 = call i32 @free(i32* %877, i32 %878)
  %880 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %881 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %880, i32 0, i32 6
  %882 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %881, i32 0, i32 4
  %883 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %882, i32 0, i32 0
  %884 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %883, i32 0, i32 0
  store i32* null, i32** %884, align 8
  br label %885

885:                                              ; preds = %871, %863
  %886 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %887 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %886, i32 0, i32 3
  %888 = call i32 @mtx_destroy(i32* %887)
  %889 = load i32, i32* @ENXIO, align 4
  store i32 %889, i32* %2, align 4
  br label %890

890:                                              ; preds = %885, %727
  %891 = load i32, i32* %2, align 4
  ret i32 %891
}

declare dso_local %struct.isp_pcisoftc* @device_get_softc(i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @isp_get_generic_options(i8*, %struct.TYPE_34__*) #1

declare dso_local i32 @pci_get_devid(i8*) #1

declare dso_local i32 @pci_get_revid(i8*) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i64 @IS_26XX(%struct.TYPE_34__*) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i64, i64*, i32) #1

declare dso_local i64 @IS_FC(%struct.TYPE_34__*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @isp_get_specific_options(i8*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_31__* @firmware_get(i8*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_34__*, i32, i8*, ...) #1

declare dso_local i32 @pci_read_config(i8*, i32, i32) #1

declare dso_local i64 @IS_2300(%struct.TYPE_34__*) #1

declare dso_local i64 @IS_2322(%struct.TYPE_34__*) #1

declare dso_local i64 @IS_24XX(%struct.TYPE_34__*) #1

declare dso_local i32 @pci_write_config(i8*, i32, i32, i32) #1

declare dso_local i64 @IS_23XX(%struct.TYPE_34__*) #1

declare dso_local i32 @pci_get_function(i8*) #1

declare dso_local i32 @ISP_LOCK(%struct.TYPE_34__*) #1

declare dso_local i64 @isp_reinit(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_34__*) #1

declare dso_local i64 @isp_attach(%struct.TYPE_34__*) #1

declare dso_local i32 @isp_shutdown(%struct.TYPE_34__*) #1

declare dso_local i32 @bus_teardown_intr(i8*, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i8*, i64, i64, i32*) #1

declare dso_local i32 @pci_release_msi(i8*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
