; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i64, i64, i64, i64, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32*, i32, i32, i32*, i32, i32, i32, %struct.emu_sc_info*, i32 }

@EMU_HCFG = common dso_local global i32 0, align 4
@EMU_HCFG_LOCKSOUNDCACHE = common dso_local global i32 0, align 4
@EMU_HCFG_LOCKTANKCACHE_MASK = common dso_local global i32 0, align 4
@EMU_HCFG_MUTEBUTTONENABLE = common dso_local global i32 0, align 4
@EMU_MICBS = common dso_local global i32 0, align 4
@EMU_RECBS_BUFSIZE_NONE = common dso_local global i32 0, align 4
@EMU_MICBA = common dso_local global i32 0, align 4
@EMU_FXBS = common dso_local global i32 0, align 4
@EMU_FXBA = common dso_local global i32 0, align 4
@EMU_ADCBS = common dso_local global i32 0, align 4
@EMU_ADCBA = common dso_local global i32 0, align 4
@EMU_INTE = common dso_local global i32 0, align 4
@EMU_INTE_INTERTIMERENB = common dso_local global i32 0, align 4
@EMU_INTE_SAMPLERATER = common dso_local global i32 0, align 4
@EMU_INTE_PCIERRENABLE = common dso_local global i32 0, align 4
@EMU_CLIEL = common dso_local global i32 0, align 4
@EMU_CLIEH = common dso_local global i32 0, align 4
@EMU_SOLEL = common dso_local global i32 0, align 4
@EMU_SOLEH = common dso_local global i32 0, align 4
@EMU_INTE2 = common dso_local global i32 0, align 4
@EMU_INTE3 = common dso_local global i32 0, align 4
@EMU_AC97SLOT_CENTER = common dso_local global i32 0, align 4
@EMU_AC97SLOT_LFE = common dso_local global i32 0, align 4
@EMU_AC97SLOT_REAR_LEFT = common dso_local global i32 0, align 4
@EMU_AC97SLOT_REAR_RIGHT = common dso_local global i32 0, align 4
@EMU_AC97SLOT = common dso_local global i32 0, align 4
@EMU_SPBYPASS = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@EMU_MAX_BUFSZ = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EMU_MAXPAGES = common dso_local global i32 0, align 4
@EMUPAGESIZE = common dso_local global i32 0, align 4
@NUM_G = common dso_local global i32 0, align 4
@EMU_CHAN_MAPA = common dso_local global i32 0, align 4
@EMU_CHAN_MAP_PTI_MASK = common dso_local global i32 0, align 4
@EMU_CHAN_MAPB = common dso_local global i32 0, align 4
@EMU_PTB = common dso_local global i32 0, align 4
@EMU_TCB = common dso_local global i32 0, align 4
@EMU_TCBS = common dso_local global i32 0, align 4
@EMU_CHAN_DCYSUSV = common dso_local global i32 0, align 4
@EMU_CHAN_IP = common dso_local global i32 0, align 4
@EMU_CHAN_VTFT = common dso_local global i32 0, align 4
@EMU_CHAN_CVCF = common dso_local global i32 0, align 4
@EMU_CHAN_PTRX = common dso_local global i32 0, align 4
@EMU_CHAN_CPF = common dso_local global i32 0, align 4
@EMU_CHAN_CCR = common dso_local global i32 0, align 4
@EMU_CHAN_PSST = common dso_local global i32 0, align 4
@EMU_CHAN_DSL = common dso_local global i32 0, align 4
@EMU_CHAN_CCCA = common dso_local global i32 0, align 4
@EMU_CHAN_Z1 = common dso_local global i32 0, align 4
@EMU_CHAN_Z2 = common dso_local global i32 0, align 4
@EMU_CHAN_FXRT = common dso_local global i32 0, align 4
@EMU_CHAN_ATKHLDM = common dso_local global i32 0, align 4
@EMU_CHAN_DCYSUSM = common dso_local global i32 0, align 4
@EMU_CHAN_IFATN = common dso_local global i32 0, align 4
@EMU_CHAN_PEFE = common dso_local global i32 0, align 4
@EMU_CHAN_FMMOD = common dso_local global i32 0, align 4
@EMU_CHAN_TREMFRQ = common dso_local global i32 0, align 4
@EMU_CHAN_FM2FRQ2 = common dso_local global i32 0, align 4
@EMU_CHAN_TEMPENV = common dso_local global i32 0, align 4
@EMU_CHAN_LFOVAL2 = common dso_local global i32 0, align 4
@EMU_CHAN_LFOVAL1 = common dso_local global i32 0, align 4
@EMU_CHAN_ATKHLDV = common dso_local global i32 0, align 4
@EMU_CHAN_ENVVOL = common dso_local global i32 0, align 4
@EMU_CHAN_ENVVAL = common dso_local global i32 0, align 4
@EMU_A_CHAN_FXRT1 = common dso_local global i32 0, align 4
@EMU_A_CHAN_FXRT2 = common dso_local global i32 0, align 4
@EMU_A_CHAN_SENDAMOUNTS = common dso_local global i32 0, align 4
@SPDIF_MODE_PCM = common dso_local global i32 0, align 4
@EMU_A_SPDIF_SAMPLERATE = common dso_local global i32 0, align 4
@EMU_A_SPDIF_48000 = common dso_local global i32 0, align 4
@EMU_A_I2S_CAPTURE_96000 = common dso_local global i32 0, align 4
@EMU_A2_SRCSel = common dso_local global i32 0, align 4
@EMU_A2_SRCMULTI_ENABLE = common dso_local global i32 0, align 4
@EMU_A2_MIXER_I2S_ENABLE = common dso_local global i32 0, align 4
@EMU_A2_MIXER_SPDIF_ENABLE = common dso_local global i32 0, align 4
@EMU_A_IOCFG = common dso_local global i32 0, align 4
@MODE_ANALOG = common dso_local global i32 0, align 4
@MODE_DIGITAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Audigy card initialized in analog mode.\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Card Configuration (   0x%08x )\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Card Configuration ( & 0xff000000 ) : %s%s%s%s%s%s%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"[Legacy MPIC] \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"[0x40] \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"[0x20] \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"[0x10] \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"[0x08] \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"[0x04] \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"[0x02] \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"[0x01]\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"Card Configuration ( & 0x00ff0000 ) : %s%s%s%s%s%s%s%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"[0x80] \00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"[Legacy INT] \00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"[Codec4] \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"[Codec2] \00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"[I2S Codec]\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"Card Configuration ( & 0x0000ff00 ) : %s%s%s%s%s%s%s%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"[GPINPUT0] \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"[GPINPUT1] \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"[GPOUT0] \00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"[GPOUT1] \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"[GPOUT2] \00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"[Joystick] \00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"Card Configuration ( & 0x000000ff ) : %s%s%s%s%s%s%s%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"[AUTOMUTE] \00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"[LOCKSOUNDCACHE] \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"[LOCKTANKCACHE] \00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"[MUTEBUTTONENABLE] \00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"[AUDIOENABLE]\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"Audigy Card Configuration (    0x%04x )\0A\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"Audigy Card Configuration (  & 0xff00 )\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c" : %s%s%s%s%s%s%s%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"[Rear Speakers] \00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"[Front Speakers] \00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"[AudigyDrive Phones]\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"Audigy Card Configuration (  & 0x00ff )\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"[Mute AnalogOut] \00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"[GPOUT2]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu_sc_info*)* @emu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_init(%struct.emu_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emu_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %3, align 8
  %10 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %11 = load i32, i32* @EMU_HCFG, align 4
  %12 = load i32, i32* @EMU_HCFG_LOCKSOUNDCACHE, align 4
  %13 = load i32, i32* @EMU_HCFG_LOCKTANKCACHE_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @EMU_HCFG_MUTEBUTTONENABLE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @emu_wr(%struct.emu_sc_info* %10, i32 %11, i32 %16, i32 4)
  %18 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %19 = load i32, i32* @EMU_MICBS, align 4
  %20 = load i32, i32* @EMU_RECBS_BUFSIZE_NONE, align 4
  %21 = call i32 @emu_wrptr(%struct.emu_sc_info* %18, i32 0, i32 %19, i32 %20)
  %22 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %23 = load i32, i32* @EMU_MICBA, align 4
  %24 = call i32 @emu_wrptr(%struct.emu_sc_info* %22, i32 0, i32 %23, i32 0)
  %25 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %26 = load i32, i32* @EMU_FXBS, align 4
  %27 = load i32, i32* @EMU_RECBS_BUFSIZE_NONE, align 4
  %28 = call i32 @emu_wrptr(%struct.emu_sc_info* %25, i32 0, i32 %26, i32 %27)
  %29 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %30 = load i32, i32* @EMU_FXBA, align 4
  %31 = call i32 @emu_wrptr(%struct.emu_sc_info* %29, i32 0, i32 %30, i32 0)
  %32 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %33 = load i32, i32* @EMU_ADCBS, align 4
  %34 = load i32, i32* @EMU_RECBS_BUFSIZE_NONE, align 4
  %35 = call i32 @emu_wrptr(%struct.emu_sc_info* %32, i32 0, i32 %33, i32 %34)
  %36 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %37 = load i32, i32* @EMU_ADCBA, align 4
  %38 = call i32 @emu_wrptr(%struct.emu_sc_info* %36, i32 0, i32 %37, i32 0)
  %39 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %40 = load i32, i32* @EMU_INTE, align 4
  %41 = load i32, i32* @EMU_INTE_INTERTIMERENB, align 4
  %42 = load i32, i32* @EMU_INTE_SAMPLERATER, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @EMU_INTE_PCIERRENABLE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @emu_wr(%struct.emu_sc_info* %39, i32 %40, i32 %45, i32 4)
  %47 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %48 = load i32, i32* @EMU_CLIEL, align 4
  %49 = call i32 @emu_wrptr(%struct.emu_sc_info* %47, i32 0, i32 %48, i32 0)
  %50 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %51 = load i32, i32* @EMU_CLIEH, align 4
  %52 = call i32 @emu_wrptr(%struct.emu_sc_info* %50, i32 0, i32 %51, i32 0)
  %53 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %54 = load i32, i32* @EMU_SOLEL, align 4
  %55 = call i32 @emu_wrptr(%struct.emu_sc_info* %53, i32 0, i32 %54, i32 0)
  %56 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %57 = load i32, i32* @EMU_SOLEH, align 4
  %58 = call i32 @emu_wrptr(%struct.emu_sc_info* %56, i32 0, i32 %57, i32 0)
  %59 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %60 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %1
  %64 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %65 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63, %1
  %69 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %70 = load i32, i32* @EMU_INTE2, align 4
  %71 = call i32 @emu_wr(%struct.emu_sc_info* %69, i32 %70, i32 0, i32 4)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %74 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %79 = load i32, i32* @EMU_INTE3, align 4
  %80 = call i32 @emu_wr(%struct.emu_sc_info* %78, i32 %79, i32 0, i32 4)
  br label %81

81:                                               ; preds = %77, %72
  store i32 0, i32* %7, align 4
  %82 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %83 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @EMU_AC97SLOT_CENTER, align 4
  %88 = load i32, i32* @EMU_AC97SLOT_LFE, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %92 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i32, i32* @EMU_AC97SLOT_CENTER, align 4
  %97 = load i32, i32* @EMU_AC97SLOT_LFE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @EMU_AC97SLOT_REAR_LEFT, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @EMU_AC97SLOT_REAR_RIGHT, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %95, %90
  %104 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %105 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, 64
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %113 = load i32, i32* @EMU_AC97SLOT, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @emu_wrptr(%struct.emu_sc_info* %112, i32 0, i32 %113, i32 %114)
  %116 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %117 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %122 = load i32, i32* @EMU_SPBYPASS, align 4
  %123 = call i32 @emu_wrptr(%struct.emu_sc_info* %121, i32 0, i32 %122, i32 3840)
  br label %124

124:                                              ; preds = %120, %111
  %125 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %126 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @bus_get_dma_tag(i32 %127)
  %129 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %130 = load i32, i32* @EMU_MAX_BUFSZ, align 4
  %131 = load i32, i32* @busdma_lock_mutex, align 4
  %132 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %133 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 8
  %135 = call i64 @bus_dma_tag_create(i32 %128, i32 2, i32 0, i32 2147483647, i32 %129, i32* null, i32* null, i32 %130, i32 1, i32 262143, i32 0, i32 %131, i32* @Giant, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %124
  %138 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %139 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %142 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %143 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @bus_dma_tag_destroy(i32 %145)
  %147 = load i32, i32* @ENOMEM, align 4
  store i32 %147, i32* %2, align 4
  br label %858

148:                                              ; preds = %124
  %149 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %150 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %151 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 7
  store %struct.emu_sc_info* %149, %struct.emu_sc_info** %152, align 8
  %153 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %154 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 6
  %156 = call i32 @SLIST_INIT(i32* %155)
  %157 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %158 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %157, i32 0, i32 5
  %159 = load i32, i32* @EMU_MAXPAGES, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %164 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %167 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 4
  %169 = call i8* @emu_malloc(%struct.TYPE_3__* %158, i32 %162, i32* %165, i32* %168)
  %170 = bitcast i8* %169 to i32*
  %171 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %172 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32* %170, i32** %173, align 8
  %174 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %175 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %148
  %180 = load i32, i32* @ENOMEM, align 4
  store i32 %180, i32* %2, align 4
  br label %858

181:                                              ; preds = %148
  %182 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %183 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %182, i32 0, i32 5
  %184 = load i32, i32* @EMUPAGESIZE, align 4
  %185 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %186 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %189 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 5
  %191 = call i8* @emu_malloc(%struct.TYPE_3__* %183, i32 %184, i32* %187, i32* %190)
  %192 = bitcast i8* %191 to i32*
  %193 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %194 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 3
  store i32* %192, i32** %195, align 8
  %196 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %197 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %214

201:                                              ; preds = %181
  %202 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %203 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %202, i32 0, i32 5
  %204 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %205 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %209 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @emu_free(%struct.TYPE_3__* %203, i32* %207, i32 %211)
  %213 = load i32, i32* @ENOMEM, align 4
  store i32 %213, i32* %2, align 4
  br label %858

214:                                              ; preds = %181
  %215 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %216 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* @EMUPAGESIZE, align 4
  %220 = call i32 @bzero(i32* %218, i32 %219)
  %221 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %222 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 1
  store i32 %225, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %226

226:                                              ; preds = %241, %214
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* @EMU_MAXPAGES, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %244

230:                                              ; preds = %226
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* %9, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %235 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %233, i32* %240, align 4
  br label %241

241:                                              ; preds = %230
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %9, align 4
  br label %226

244:                                              ; preds = %226
  store i32 0, i32* %4, align 4
  br label %245

245:                                              ; preds = %264, %244
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* @NUM_G, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %267

249:                                              ; preds = %245
  %250 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @EMU_CHAN_MAPA, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* @EMU_CHAN_MAP_PTI_MASK, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @emu_wrptr(%struct.emu_sc_info* %250, i32 %251, i32 %252, i32 %255)
  %257 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* @EMU_CHAN_MAPB, align 4
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* @EMU_CHAN_MAP_PTI_MASK, align 4
  %262 = or i32 %260, %261
  %263 = call i32 @emu_wrptr(%struct.emu_sc_info* %257, i32 %258, i32 %259, i32 %262)
  br label %264

264:                                              ; preds = %249
  %265 = load i32, i32* %4, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %4, align 4
  br label %245

267:                                              ; preds = %245
  %268 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %269 = load i32, i32* @EMU_PTB, align 4
  %270 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %271 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @emu_wrptr(%struct.emu_sc_info* %268, i32 0, i32 %269, i32 %273)
  %275 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %276 = load i32, i32* @EMU_TCB, align 4
  %277 = call i32 @emu_wrptr(%struct.emu_sc_info* %275, i32 0, i32 %276, i32 0)
  %278 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %279 = load i32, i32* @EMU_TCBS, align 4
  %280 = call i32 @emu_wrptr(%struct.emu_sc_info* %278, i32 0, i32 %279, i32 0)
  store i32 0, i32* %4, align 4
  br label %281

281:                                              ; preds = %430, %267
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* @NUM_G, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %433

285:                                              ; preds = %281
  %286 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* @EMU_CHAN_DCYSUSV, align 4
  %289 = call i32 @emu_wrptr(%struct.emu_sc_info* %286, i32 %287, i32 %288, i32 0)
  %290 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %291 = load i32, i32* %4, align 4
  %292 = load i32, i32* @EMU_CHAN_IP, align 4
  %293 = call i32 @emu_wrptr(%struct.emu_sc_info* %290, i32 %291, i32 %292, i32 0)
  %294 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %295 = load i32, i32* %4, align 4
  %296 = load i32, i32* @EMU_CHAN_VTFT, align 4
  %297 = call i32 @emu_wrptr(%struct.emu_sc_info* %294, i32 %295, i32 %296, i32 65535)
  %298 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @EMU_CHAN_CVCF, align 4
  %301 = call i32 @emu_wrptr(%struct.emu_sc_info* %298, i32 %299, i32 %300, i32 65535)
  %302 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* @EMU_CHAN_PTRX, align 4
  %305 = call i32 @emu_wrptr(%struct.emu_sc_info* %302, i32 %303, i32 %304, i32 0)
  %306 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %307 = load i32, i32* %4, align 4
  %308 = load i32, i32* @EMU_CHAN_CPF, align 4
  %309 = call i32 @emu_wrptr(%struct.emu_sc_info* %306, i32 %307, i32 %308, i32 0)
  %310 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* @EMU_CHAN_CCR, align 4
  %313 = call i32 @emu_wrptr(%struct.emu_sc_info* %310, i32 %311, i32 %312, i32 0)
  %314 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* @EMU_CHAN_PSST, align 4
  %317 = call i32 @emu_wrptr(%struct.emu_sc_info* %314, i32 %315, i32 %316, i32 0)
  %318 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %319 = load i32, i32* %4, align 4
  %320 = load i32, i32* @EMU_CHAN_DSL, align 4
  %321 = call i32 @emu_wrptr(%struct.emu_sc_info* %318, i32 %319, i32 %320, i32 16)
  %322 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %323 = load i32, i32* %4, align 4
  %324 = load i32, i32* @EMU_CHAN_CCCA, align 4
  %325 = call i32 @emu_wrptr(%struct.emu_sc_info* %322, i32 %323, i32 %324, i32 0)
  %326 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %327 = load i32, i32* %4, align 4
  %328 = load i32, i32* @EMU_CHAN_Z1, align 4
  %329 = call i32 @emu_wrptr(%struct.emu_sc_info* %326, i32 %327, i32 %328, i32 0)
  %330 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %331 = load i32, i32* %4, align 4
  %332 = load i32, i32* @EMU_CHAN_Z2, align 4
  %333 = call i32 @emu_wrptr(%struct.emu_sc_info* %330, i32 %331, i32 %332, i32 0)
  %334 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %335 = load i32, i32* %4, align 4
  %336 = load i32, i32* @EMU_CHAN_FXRT, align 4
  %337 = call i32 @emu_wrptr(%struct.emu_sc_info* %334, i32 %335, i32 %336, i32 -803471360)
  %338 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %339 = load i32, i32* %4, align 4
  %340 = load i32, i32* @EMU_CHAN_ATKHLDM, align 4
  %341 = call i32 @emu_wrptr(%struct.emu_sc_info* %338, i32 %339, i32 %340, i32 0)
  %342 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %343 = load i32, i32* %4, align 4
  %344 = load i32, i32* @EMU_CHAN_DCYSUSM, align 4
  %345 = call i32 @emu_wrptr(%struct.emu_sc_info* %342, i32 %343, i32 %344, i32 0)
  %346 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %347 = load i32, i32* %4, align 4
  %348 = load i32, i32* @EMU_CHAN_IFATN, align 4
  %349 = call i32 @emu_wrptr(%struct.emu_sc_info* %346, i32 %347, i32 %348, i32 65535)
  %350 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %351 = load i32, i32* %4, align 4
  %352 = load i32, i32* @EMU_CHAN_PEFE, align 4
  %353 = call i32 @emu_wrptr(%struct.emu_sc_info* %350, i32 %351, i32 %352, i32 0)
  %354 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %355 = load i32, i32* %4, align 4
  %356 = load i32, i32* @EMU_CHAN_FMMOD, align 4
  %357 = call i32 @emu_wrptr(%struct.emu_sc_info* %354, i32 %355, i32 %356, i32 0)
  %358 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %359 = load i32, i32* %4, align 4
  %360 = load i32, i32* @EMU_CHAN_TREMFRQ, align 4
  %361 = call i32 @emu_wrptr(%struct.emu_sc_info* %358, i32 %359, i32 %360, i32 24)
  %362 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %363 = load i32, i32* %4, align 4
  %364 = load i32, i32* @EMU_CHAN_FM2FRQ2, align 4
  %365 = call i32 @emu_wrptr(%struct.emu_sc_info* %362, i32 %363, i32 %364, i32 24)
  %366 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %367 = load i32, i32* %4, align 4
  %368 = load i32, i32* @EMU_CHAN_TEMPENV, align 4
  %369 = call i32 @emu_wrptr(%struct.emu_sc_info* %366, i32 %367, i32 %368, i32 0)
  %370 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %371 = load i32, i32* %4, align 4
  %372 = load i32, i32* @EMU_CHAN_LFOVAL2, align 4
  %373 = call i32 @emu_wrptr(%struct.emu_sc_info* %370, i32 %371, i32 %372, i32 0)
  %374 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %375 = load i32, i32* %4, align 4
  %376 = load i32, i32* @EMU_CHAN_LFOVAL1, align 4
  %377 = call i32 @emu_wrptr(%struct.emu_sc_info* %374, i32 %375, i32 %376, i32 0)
  %378 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %379 = load i32, i32* %4, align 4
  %380 = load i32, i32* @EMU_CHAN_ATKHLDV, align 4
  %381 = call i32 @emu_wrptr(%struct.emu_sc_info* %378, i32 %379, i32 %380, i32 0)
  %382 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %383 = load i32, i32* %4, align 4
  %384 = load i32, i32* @EMU_CHAN_ENVVOL, align 4
  %385 = call i32 @emu_wrptr(%struct.emu_sc_info* %382, i32 %383, i32 %384, i32 0)
  %386 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %387 = load i32, i32* %4, align 4
  %388 = load i32, i32* @EMU_CHAN_ENVVAL, align 4
  %389 = call i32 @emu_wrptr(%struct.emu_sc_info* %386, i32 %387, i32 %388, i32 0)
  %390 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %391 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %390, i32 0, i32 3
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %404, label %394

394:                                              ; preds = %285
  %395 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %396 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %404, label %399

399:                                              ; preds = %394
  %400 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %401 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %429

404:                                              ; preds = %399, %394, %285
  %405 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %406 = load i32, i32* %4, align 4
  %407 = call i32 @emu_wrptr(%struct.emu_sc_info* %405, i32 %406, i32 76, i32 0)
  %408 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %409 = load i32, i32* %4, align 4
  %410 = call i32 @emu_wrptr(%struct.emu_sc_info* %408, i32 %409, i32 77, i32 0)
  %411 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %412 = load i32, i32* %4, align 4
  %413 = call i32 @emu_wrptr(%struct.emu_sc_info* %411, i32 %412, i32 78, i32 0)
  %414 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %415 = load i32, i32* %4, align 4
  %416 = call i32 @emu_wrptr(%struct.emu_sc_info* %414, i32 %415, i32 79, i32 0)
  %417 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %418 = load i32, i32* %4, align 4
  %419 = load i32, i32* @EMU_A_CHAN_FXRT1, align 4
  %420 = call i32 @emu_wrptr(%struct.emu_sc_info* %417, i32 %418, i32 %419, i32 1061109567)
  %421 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %422 = load i32, i32* %4, align 4
  %423 = load i32, i32* @EMU_A_CHAN_FXRT2, align 4
  %424 = call i32 @emu_wrptr(%struct.emu_sc_info* %421, i32 %422, i32 %423, i32 1061109567)
  %425 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %426 = load i32, i32* %4, align 4
  %427 = load i32, i32* @EMU_A_CHAN_SENDAMOUNTS, align 4
  %428 = call i32 @emu_wrptr(%struct.emu_sc_info* %425, i32 %426, i32 %427, i32 0)
  br label %429

429:                                              ; preds = %404, %399
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %4, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %4, align 4
  br label %281

433:                                              ; preds = %281
  %434 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %435 = load i32, i32* @SPDIF_MODE_PCM, align 4
  %436 = call i32 @emumix_set_spdif_mode(%struct.emu_sc_info* %434, i32 %435)
  %437 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %438 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %437, i32 0, i32 3
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %451, label %441

441:                                              ; preds = %433
  %442 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %443 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %441
  %447 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %448 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %446, %441, %433
  %452 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %453 = load i32, i32* @EMU_A_SPDIF_SAMPLERATE, align 4
  %454 = load i32, i32* @EMU_A_SPDIF_48000, align 4
  %455 = call i32 @emu_wrptr(%struct.emu_sc_info* %452, i32 0, i32 %453, i32 %454)
  br label %456

456:                                              ; preds = %451, %446
  %457 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %458 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %457, i32 0, i32 2
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %466, label %461

461:                                              ; preds = %456
  %462 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %463 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %506

466:                                              ; preds = %461, %456
  %467 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %468 = load i32, i32* @EMU_A_SPDIF_SAMPLERATE, align 4
  %469 = call i32 @emu_rdptr(%struct.emu_sc_info* %467, i32 0, i32 %468)
  store i32 %469, i32* %6, align 4
  %470 = load i32, i32* %6, align 4
  %471 = and i32 %470, -3585
  store i32 %471, i32* %6, align 4
  %472 = load i32, i32* @EMU_A_I2S_CAPTURE_96000, align 4
  %473 = load i32, i32* %6, align 4
  %474 = or i32 %473, %472
  store i32 %474, i32* %6, align 4
  %475 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %476 = load i32, i32* @EMU_A_SPDIF_SAMPLERATE, align 4
  %477 = load i32, i32* %6, align 4
  %478 = call i32 @emu_wrptr(%struct.emu_sc_info* %475, i32 0, i32 %476, i32 %477)
  %479 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %480 = load i32, i32* @EMU_A2_SRCSel, align 4
  %481 = call i32 @emu_wr_p16vptr(%struct.emu_sc_info* %479, i32 0, i32 %480, i32 20)
  %482 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %483 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %482, i32 0, i32 2
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %490

486:                                              ; preds = %466
  %487 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %488 = load i32, i32* @EMU_A2_SRCMULTI_ENABLE, align 4
  %489 = call i32 @emu_wr_p16vptr(%struct.emu_sc_info* %487, i32 0, i32 %488, i32 -16711936)
  br label %505

490:                                              ; preds = %466
  %491 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %492 = load i32, i32* @EMU_A2_MIXER_I2S_ENABLE, align 4
  %493 = call i32 @emu_wr_p16vptr(%struct.emu_sc_info* %491, i32 0, i32 %492, i32 -16777216)
  %494 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %495 = load i32, i32* @EMU_A2_MIXER_SPDIF_ENABLE, align 4
  %496 = call i32 @emu_wr_p16vptr(%struct.emu_sc_info* %494, i32 0, i32 %495, i32 -16777216)
  %497 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %498 = load i32, i32* @EMU_A_IOCFG, align 4
  %499 = call i32 @emu_rd(%struct.emu_sc_info* %497, i32 %498, i32 2)
  store i32 %499, i32* %5, align 4
  %500 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %501 = load i32, i32* @EMU_A_IOCFG, align 4
  %502 = load i32, i32* %5, align 4
  %503 = and i32 %502, -9
  %504 = call i32 @emu_wr(%struct.emu_sc_info* %500, i32 %501, i32 %503, i32 2)
  br label %505

505:                                              ; preds = %490, %486
  br label %506

506:                                              ; preds = %505, %461
  %507 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %508 = call i32 @emu_initefx(%struct.emu_sc_info* %507)
  %509 = load i32, i32* @MODE_ANALOG, align 4
  store i32 %509, i32* %8, align 4
  %510 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %511 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %510, i32 0, i32 3
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %524, label %514

514:                                              ; preds = %506
  %515 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %516 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %515, i32 0, i32 2
  %517 = load i64, i64* %516, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %524, label %519

519:                                              ; preds = %514
  %520 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %521 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %520, i32 0, i32 1
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %526

524:                                              ; preds = %519, %514, %506
  %525 = load i32, i32* @MODE_DIGITAL, align 4
  store i32 %525, i32* %8, align 4
  br label %526

526:                                              ; preds = %524, %519
  %527 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %528 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %527, i32 0, i32 3
  %529 = load i64, i64* %528, align 8
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %541, label %531

531:                                              ; preds = %526
  %532 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %533 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %532, i32 0, i32 2
  %534 = load i64, i64* %533, align 8
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %541, label %536

536:                                              ; preds = %531
  %537 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %538 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %537, i32 0, i32 1
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %552

541:                                              ; preds = %536, %531, %526
  %542 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %543 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %542, i32 0, i32 4
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %552

546:                                              ; preds = %541
  %547 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %548 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = call i32 (i32, i8*, ...) @device_printf(i32 %549, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %551 = load i32, i32* @MODE_ANALOG, align 4
  store i32 %551, i32* %8, align 4
  br label %552

552:                                              ; preds = %546, %541, %536
  %553 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %554 = load i32, i32* %8, align 4
  %555 = call i32 @emumix_set_mode(%struct.emu_sc_info* %553, i32 %554)
  %556 = load i64, i64* @bootverbose, align 8
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %857

558:                                              ; preds = %552
  %559 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %560 = load i32, i32* @EMU_HCFG, align 4
  %561 = call i32 @emu_rd(%struct.emu_sc_info* %559, i32 %560, i32 4)
  store i32 %561, i32* %5, align 4
  %562 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %563 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = load i32, i32* %5, align 4
  %566 = call i32 (i32, i8*, ...) @device_printf(i32 %564, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %565)
  %567 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %568 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = load i32, i32* %5, align 4
  %571 = and i32 %570, -2147483648
  %572 = icmp ne i32 %571, 0
  %573 = zext i1 %572 to i64
  %574 = select i1 %572, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %575 = load i32, i32* %5, align 4
  %576 = and i32 %575, 1073741824
  %577 = icmp ne i32 %576, 0
  %578 = zext i1 %577 to i64
  %579 = select i1 %577, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %580 = load i32, i32* %5, align 4
  %581 = and i32 %580, 536870912
  %582 = icmp ne i32 %581, 0
  %583 = zext i1 %582 to i64
  %584 = select i1 %582, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %585 = load i32, i32* %5, align 4
  %586 = and i32 %585, 268435456
  %587 = icmp ne i32 %586, 0
  %588 = zext i1 %587 to i64
  %589 = select i1 %587, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %590 = load i32, i32* %5, align 4
  %591 = and i32 %590, 134217728
  %592 = icmp ne i32 %591, 0
  %593 = zext i1 %592 to i64
  %594 = select i1 %592, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %595 = load i32, i32* %5, align 4
  %596 = and i32 %595, 67108864
  %597 = icmp ne i32 %596, 0
  %598 = zext i1 %597 to i64
  %599 = select i1 %597, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %600 = load i32, i32* %5, align 4
  %601 = and i32 %600, 33554432
  %602 = icmp ne i32 %601, 0
  %603 = zext i1 %602 to i64
  %604 = select i1 %602, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %605 = load i32, i32* %5, align 4
  %606 = and i32 %605, 16777216
  %607 = icmp ne i32 %606, 0
  %608 = zext i1 %607 to i64
  %609 = select i1 %607, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %610 = call i32 (i32, i8*, ...) @device_printf(i32 %569, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %574, i8* %579, i8* %584, i8* %589, i8* %594, i8* %599, i8* %604, i8* %609)
  %611 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %612 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = load i32, i32* %5, align 4
  %615 = and i32 %614, 8388608
  %616 = icmp ne i32 %615, 0
  %617 = zext i1 %616 to i64
  %618 = select i1 %616, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %619 = load i32, i32* %5, align 4
  %620 = and i32 %619, 4194304
  %621 = icmp ne i32 %620, 0
  %622 = zext i1 %621 to i64
  %623 = select i1 %621, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %624 = load i32, i32* %5, align 4
  %625 = and i32 %624, 2097152
  %626 = icmp ne i32 %625, 0
  %627 = zext i1 %626 to i64
  %628 = select i1 %626, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %629 = load i32, i32* %5, align 4
  %630 = and i32 %629, 1048576
  %631 = icmp ne i32 %630, 0
  %632 = zext i1 %631 to i64
  %633 = select i1 %631, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %634 = load i32, i32* %5, align 4
  %635 = and i32 %634, 524288
  %636 = icmp ne i32 %635, 0
  %637 = zext i1 %636 to i64
  %638 = select i1 %636, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %639 = load i32, i32* %5, align 4
  %640 = and i32 %639, 262144
  %641 = icmp ne i32 %640, 0
  %642 = zext i1 %641 to i64
  %643 = select i1 %641, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %644 = load i32, i32* %5, align 4
  %645 = and i32 %644, 131072
  %646 = icmp ne i32 %645, 0
  %647 = zext i1 %646 to i64
  %648 = select i1 %646, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %649 = load i32, i32* %5, align 4
  %650 = and i32 %649, 65536
  %651 = icmp ne i32 %650, 0
  %652 = zext i1 %651 to i64
  %653 = select i1 %651, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %654 = call i32 (i32, i8*, ...) @device_printf(i32 %613, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i8* %618, i8* %623, i8* %628, i8* %633, i8* %638, i8* %643, i8* %648, i8* %653)
  %655 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %656 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* %5, align 4
  %659 = and i32 %658, 32768
  %660 = icmp ne i32 %659, 0
  %661 = zext i1 %660 to i64
  %662 = select i1 %660, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %663 = load i32, i32* %5, align 4
  %664 = and i32 %663, 16384
  %665 = icmp ne i32 %664, 0
  %666 = zext i1 %665 to i64
  %667 = select i1 %665, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %668 = load i32, i32* %5, align 4
  %669 = and i32 %668, 8192
  %670 = icmp ne i32 %669, 0
  %671 = zext i1 %670 to i64
  %672 = select i1 %670, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %673 = load i32, i32* %5, align 4
  %674 = and i32 %673, 4096
  %675 = icmp ne i32 %674, 0
  %676 = zext i1 %675 to i64
  %677 = select i1 %675, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %678 = load i32, i32* %5, align 4
  %679 = and i32 %678, 2048
  %680 = icmp ne i32 %679, 0
  %681 = zext i1 %680 to i64
  %682 = select i1 %680, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %683 = load i32, i32* %5, align 4
  %684 = and i32 %683, 1024
  %685 = icmp ne i32 %684, 0
  %686 = zext i1 %685 to i64
  %687 = select i1 %685, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %688 = load i32, i32* %5, align 4
  %689 = and i32 %688, 512
  %690 = icmp ne i32 %689, 0
  %691 = zext i1 %690 to i64
  %692 = select i1 %690, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %693 = load i32, i32* %5, align 4
  %694 = and i32 %693, 256
  %695 = icmp ne i32 %694, 0
  %696 = zext i1 %695 to i64
  %697 = select i1 %695, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %698 = call i32 (i32, i8*, ...) @device_printf(i32 %657, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i8* %662, i8* %667, i8* %672, i8* %677, i8* %682, i8* %687, i8* %692, i8* %697)
  %699 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %700 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 8
  %702 = load i32, i32* %5, align 4
  %703 = and i32 %702, 128
  %704 = icmp ne i32 %703, 0
  %705 = zext i1 %704 to i64
  %706 = select i1 %704, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %707 = load i32, i32* %5, align 4
  %708 = and i32 %707, 64
  %709 = icmp ne i32 %708, 0
  %710 = zext i1 %709 to i64
  %711 = select i1 %709, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %712 = load i32, i32* %5, align 4
  %713 = and i32 %712, 32
  %714 = icmp ne i32 %713, 0
  %715 = zext i1 %714 to i64
  %716 = select i1 %714, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %717 = load i32, i32* %5, align 4
  %718 = and i32 %717, 16
  %719 = icmp ne i32 %718, 0
  %720 = zext i1 %719 to i64
  %721 = select i1 %719, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %722 = load i32, i32* %5, align 4
  %723 = and i32 %722, 8
  %724 = icmp ne i32 %723, 0
  %725 = zext i1 %724 to i64
  %726 = select i1 %724, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %727 = load i32, i32* %5, align 4
  %728 = and i32 %727, 4
  %729 = icmp ne i32 %728, 0
  %730 = zext i1 %729 to i64
  %731 = select i1 %729, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %732 = load i32, i32* %5, align 4
  %733 = and i32 %732, 2
  %734 = icmp ne i32 %733, 0
  %735 = zext i1 %734 to i64
  %736 = select i1 %734, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %737 = load i32, i32* %5, align 4
  %738 = and i32 %737, 1
  %739 = icmp ne i32 %738, 0
  %740 = zext i1 %739 to i64
  %741 = select i1 %739, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %742 = call i32 (i32, i8*, ...) @device_printf(i32 %701, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i8* %706, i8* %711, i8* %716, i8* %721, i8* %726, i8* %731, i8* %736, i8* %741)
  %743 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %744 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %743, i32 0, i32 3
  %745 = load i64, i64* %744, align 8
  %746 = icmp ne i64 %745, 0
  br i1 %746, label %757, label %747

747:                                              ; preds = %558
  %748 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %749 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %748, i32 0, i32 2
  %750 = load i64, i64* %749, align 8
  %751 = icmp ne i64 %750, 0
  br i1 %751, label %757, label %752

752:                                              ; preds = %747
  %753 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %754 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %753, i32 0, i32 1
  %755 = load i64, i64* %754, align 8
  %756 = icmp ne i64 %755, 0
  br i1 %756, label %757, label %856

757:                                              ; preds = %752, %747, %558
  %758 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %759 = load i32, i32* @EMU_A_IOCFG, align 4
  %760 = call i32 @emu_rd(%struct.emu_sc_info* %758, i32 %759, i32 2)
  store i32 %760, i32* %5, align 4
  %761 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %762 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %761, i32 0, i32 0
  %763 = load i32, i32* %762, align 8
  %764 = load i32, i32* %5, align 4
  %765 = call i32 (i32, i8*, ...) @device_printf(i32 %763, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0), i32 %764)
  %766 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %767 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %766, i32 0, i32 0
  %768 = load i32, i32* %767, align 8
  %769 = call i32 (i32, i8*, ...) @device_printf(i32 %768, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0))
  %770 = load i32, i32* %5, align 4
  %771 = and i32 %770, 32768
  %772 = icmp ne i32 %771, 0
  %773 = zext i1 %772 to i64
  %774 = select i1 %772, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %775 = load i32, i32* %5, align 4
  %776 = and i32 %775, 16384
  %777 = icmp ne i32 %776, 0
  %778 = zext i1 %777 to i64
  %779 = select i1 %777, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %780 = load i32, i32* %5, align 4
  %781 = and i32 %780, 8192
  %782 = icmp ne i32 %781, 0
  %783 = zext i1 %782 to i64
  %784 = select i1 %782, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %785 = load i32, i32* %5, align 4
  %786 = and i32 %785, 4096
  %787 = icmp ne i32 %786, 0
  %788 = zext i1 %787 to i64
  %789 = select i1 %787, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %790 = load i32, i32* %5, align 4
  %791 = and i32 %790, 2048
  %792 = icmp ne i32 %791, 0
  %793 = zext i1 %792 to i64
  %794 = select i1 %792, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %795 = load i32, i32* %5, align 4
  %796 = and i32 %795, 1024
  %797 = icmp ne i32 %796, 0
  %798 = zext i1 %797 to i64
  %799 = select i1 %797, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %800 = load i32, i32* %5, align 4
  %801 = and i32 %800, 512
  %802 = icmp ne i32 %801, 0
  %803 = zext i1 %802 to i64
  %804 = select i1 %802, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %805 = load i32, i32* %5, align 4
  %806 = and i32 %805, 256
  %807 = icmp ne i32 %806, 0
  %808 = zext i1 %807 to i64
  %809 = select i1 %807, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %810 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* %774, i8* %779, i8* %784, i8* %789, i8* %794, i8* %799, i8* %804, i8* %809)
  %811 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %812 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 8
  %814 = call i32 (i32, i8*, ...) @device_printf(i32 %813, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0))
  %815 = load i32, i32* %5, align 4
  %816 = and i32 %815, 128
  %817 = icmp ne i32 %816, 0
  %818 = zext i1 %817 to i64
  %819 = select i1 %817, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %820 = load i32, i32* %5, align 4
  %821 = and i32 %820, 64
  %822 = icmp ne i32 %821, 0
  %823 = zext i1 %822 to i64
  %824 = select i1 %822, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %825 = load i32, i32* %5, align 4
  %826 = and i32 %825, 32
  %827 = icmp ne i32 %826, 0
  %828 = zext i1 %827 to i64
  %829 = select i1 %827, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %830 = load i32, i32* %5, align 4
  %831 = and i32 %830, 16
  %832 = icmp ne i32 %831, 0
  %833 = zext i1 %832 to i64
  %834 = select i1 %832, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %835 = load i32, i32* %5, align 4
  %836 = and i32 %835, 8
  %837 = icmp ne i32 %836, 0
  %838 = zext i1 %837 to i64
  %839 = select i1 %837, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %840 = load i32, i32* %5, align 4
  %841 = and i32 %840, 4
  %842 = icmp ne i32 %841, 0
  %843 = zext i1 %842 to i64
  %844 = select i1 %842, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %845 = load i32, i32* %5, align 4
  %846 = and i32 %845, 2
  %847 = icmp ne i32 %846, 0
  %848 = zext i1 %847 to i64
  %849 = select i1 %847, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %850 = load i32, i32* %5, align 4
  %851 = and i32 %850, 1
  %852 = icmp ne i32 %851, 0
  %853 = zext i1 %852 to i64
  %854 = select i1 %852, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %855 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* %819, i8* %824, i8* %829, i8* %834, i8* %839, i8* %844, i8* %849, i8* %854)
  br label %856

856:                                              ; preds = %757, %752
  br label %857

857:                                              ; preds = %856, %552
  store i32 0, i32* %2, align 4
  br label %858

858:                                              ; preds = %857, %201, %179, %137
  %859 = load i32, i32* %2, align 4
  ret i32 %859
}

declare dso_local i32 @emu_wr(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @emu_wrptr(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i8* @emu_malloc(%struct.TYPE_3__*, i32, i32*, i32*) #1

declare dso_local i32 @emu_free(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @emumix_set_spdif_mode(%struct.emu_sc_info*, i32) #1

declare dso_local i32 @emu_rdptr(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @emu_wr_p16vptr(%struct.emu_sc_info*, i32, i32, i32) #1

declare dso_local i32 @emu_rd(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @emu_initefx(%struct.emu_sc_info*) #1

declare dso_local i32 @emumix_set_mode(%struct.emu_sc_info*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
