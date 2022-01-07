; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sndcard_func = type { %struct.emu_pcminfo*, i8* }
%struct.emu_pcminfo = type { i64, i32, i32, %struct.emu_sc_info* }
%struct.emu_sc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32*, i64, i32**, i32**, i64, i64, %struct.TYPE_3__*, i64*, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32*, i32* }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"emu10kx\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"multichannel_disabled\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Multichannel playback setting\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"multichannel_recording\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Multichannel recording setting\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Debug level\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bridge conf\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"exclusive io\00", align 1
@emu_cards = common dso_local global %struct.TYPE_4__* null, align 8
@HAS_51 = common dso_local global i32 0, align 4
@HAS_71 = common dso_local global i32 0, align 4
@IS_EMU10K1 = common dso_local global i32 0, align 4
@IS_EMU10K2 = common dso_local global i32 0, align 4
@IS_CA0102 = common dso_local global i32 0, align 4
@IS_CA0108 = common dso_local global i32 0, align 4
@IS_CARDBUS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Unable to detect HW chipset\0A\00", align 1
@BROKEN_DIGITAL = common dso_local global i32 0, align 4
@HAS_AC97 = common dso_local global i32 0, align 4
@EMU_A_FXGPREGBASE = common dso_local global i32 0, align 4
@EMU_A_MICROCODEBASE = common dso_local global i32 0, align 4
@EMU_A_PTR_ADDR_MASK = common dso_local global i32 0, align 4
@EMU_MICROCODEBASE = common dso_local global i32 0, align 4
@EMU_FXGPREGBASE = common dso_local global i32 0, align 4
@EMU_PTR_ADDR_MASK = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"unable to map register space\0A\00", align 1
@EMU_MAX_IRQ_CONSUMERS = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_AV = common dso_local global i32 0, align 4
@emu_intr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"unable to create resource manager\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"unable to initialize CardBus interface\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"unable to create control device\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"rev %d at io 0x%jx irq %jd\00", align 1
@NUM_G = common dso_local global i32 0, align 4
@RT_COUNT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RT_FRONT = common dso_local global i64 0, align 8
@SCF_PCM = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@RT_REAR = common dso_local global i64 0, align 8
@RT_CENTER = common dso_local global i64 0, align 8
@RT_SUB = common dso_local global i64 0, align 8
@RT_SIDE = common dso_local global i64 0, align 8
@RT_MCHRECORD = common dso_local global i64 0, align 8
@EMU_A_MUDATA1 = common dso_local global i32 0, align 4
@EMU_A_MUDATA2 = common dso_local global i32 0, align 4
@MUDATA = common dso_local global i32 0, align 4
@SCF_MIDI = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sndcard_func*, align 8
  %5 = alloca %struct.emu_sc_info*, align 8
  %6 = alloca %struct.emu_pcminfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [255 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.emu_sc_info* @device_get_softc(i32 %13)
  store %struct.emu_sc_info* %14, %struct.emu_sc_info** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_unit(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32* @device_get_sysctl_ctx(i32 %17)
  %19 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %20 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %19, i32 0, i32 45
  store i32* %18, i32** %20, align 8
  %21 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %22 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %21, i32 0, i32 45
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %927

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32* @device_get_sysctl_tree(i32 %27)
  %29 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %30 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %29, i32 0, i32 44
  store i32* %28, i32** %30, align 8
  %31 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %32 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %31, i32 0, i32 44
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %927

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %39 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %38, i32 0, i32 32
  %40 = call i64 @resource_int_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %44 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %43, i32 0, i32 32
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @RANGE(i64 %45, i32 0, i32 1)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %3, align 4
  %49 = call i32* @device_get_sysctl_ctx(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32* @device_get_sysctl_tree(i32 %50)
  %52 = call i32 @SYSCTL_CHILDREN(i32* %51)
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLFLAG_RD, align 4
  %55 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %56 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %55, i32 0, i32 32
  %57 = call i32 @SYSCTL_ADD_INT(i32* %49, i32 %52, i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64* %56, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %60 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %59, i32 0, i32 31
  %61 = call i64 @resource_int_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %65 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %64, i32 0, i32 31
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @RANGE(i64 %66, i32 0, i32 1)
  br label %68

68:                                               ; preds = %63, %47
  %69 = load i32, i32* %3, align 4
  %70 = call i32* @device_get_sysctl_ctx(i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = call i32* @device_get_sysctl_tree(i32 %71)
  %73 = call i32 @SYSCTL_CHILDREN(i32* %72)
  %74 = load i32, i32* @OID_AUTO, align 4
  %75 = load i32, i32* @CTLFLAG_RD, align 4
  %76 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %77 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %76, i32 0, i32 31
  %78 = call i32 @SYSCTL_ADD_INT(i32* %70, i32 %73, i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %75, i64* %77, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %81 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %80, i32 0, i32 43
  %82 = call i64 @resource_int_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %68
  %85 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %86 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %85, i32 0, i32 31
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @RANGE(i64 %87, i32 0, i32 2)
  br label %89

89:                                               ; preds = %84, %68
  %90 = load i32, i32* %3, align 4
  %91 = call i32* @device_get_sysctl_ctx(i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = call i32* @device_get_sysctl_tree(i32 %92)
  %94 = call i32 @SYSCTL_CHILDREN(i32* %93)
  %95 = load i32, i32* @OID_AUTO, align 4
  %96 = load i32, i32* @CTLFLAG_RW, align 4
  %97 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %98 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %97, i32 0, i32 43
  %99 = call i32 @SYSCTL_ADD_INT(i32* %91, i32 %94, i32 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %96, i64* %98, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %100 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %101 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %100, i32 0, i32 22
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @device_get_nameunit(i32 %102)
  %104 = load i32, i32* @MTX_DEF, align 4
  %105 = call i32 @mtx_init(i32* %101, i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %107 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %106, i32 0, i32 23
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @device_get_nameunit(i32 %108)
  %110 = load i32, i32* @MTX_DEF, align 4
  %111 = call i32 @mtx_init(i32* %107, i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %114 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %113, i32 0, i32 40
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @pci_get_devid(i32 %115)
  %117 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %118 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %117, i32 0, i32 42
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @pci_get_revid(i32 %119)
  %121 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %122 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %124 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %123, i32 0, i32 41
  store i64 0, i64* %124, align 8
  %125 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %126 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %128 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  %129 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %130 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %129, i32 0, i32 3
  store i32 0, i32* %130, align 4
  %131 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %132 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %131, i32 0, i32 4
  store i32 0, i32* %132, align 8
  %133 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %134 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %133, i32 0, i32 5
  store i32 0, i32* %134, align 4
  %135 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %136 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %135, i32 0, i32 6
  store i32 0, i32* %136, align 8
  %137 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %138 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %137, i32 0, i32 7
  store i32 0, i32* %138, align 4
  %139 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %140 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %139, i32 0, i32 8
  store i32 0, i32* %140, align 8
  %141 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %142 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %141, i32 0, i32 9
  store i32 0, i32* %142, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emu_cards, align 8
  %144 = load i32, i32* %3, align 4
  %145 = call i64 @emu_getcard(i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @HAS_51, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %89
  %154 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %155 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %154, i32 0, i32 2
  store i32 1, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %89
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @HAS_71, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %163 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %162, i32 0, i32 2
  store i32 1, i32* %163, align 8
  %164 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %165 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %164, i32 0, i32 3
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %156
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @IS_EMU10K1, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %173 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %172, i32 0, i32 5
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %171, %166
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @IS_EMU10K2, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %181 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %180, i32 0, i32 6
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @IS_CA0102, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %189 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %188, i32 0, i32 7
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %182
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @IS_CA0108, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %197 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %196, i32 0, i32 8
  store i32 1, i32* %197, align 8
  br label %198

198:                                              ; preds = %195, %190
  %199 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %200 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %205 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 4
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %210 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %209, i32 0, i32 6
  store i32 0, i32* %210, align 8
  %211 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %212 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %211, i32 0, i32 7
  store i32 1, i32* %212, align 4
  br label %213

213:                                              ; preds = %208, %203, %198
  %214 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %215 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %220 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %232

223:                                              ; preds = %218, %213
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @IS_CARDBUS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %230 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %229, i32 0, i32 9
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %223
  br label %232

232:                                              ; preds = %231, %218
  %233 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %234 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %237 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = add nsw i32 %235, %238
  %240 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %241 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %239, %242
  %244 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %245 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %243, %246
  %248 = icmp ne i32 %247, 1
  br i1 %248, label %249, label %254

249:                                              ; preds = %232
  %250 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %251 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %250, i32 0, i32 40
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @device_printf(i32 %252, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %927

254:                                              ; preds = %232
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @BROKEN_DIGITAL, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %261 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %260, i32 0, i32 4
  store i32 1, i32* %261, align 8
  br label %262

262:                                              ; preds = %259, %254
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* @HAS_AC97, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %269 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %268, i32 0, i32 1
  store i32 1, i32* %269, align 4
  br label %270

270:                                              ; preds = %267, %262
  %271 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %272 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %271, i32 0, i32 10
  store i32 0, i32* %272, align 8
  %273 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %274 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %287, label %277

277:                                              ; preds = %270
  %278 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %279 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %278, i32 0, i32 7
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %287, label %282

282:                                              ; preds = %277
  %283 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %284 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %283, i32 0, i32 8
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %321

287:                                              ; preds = %282, %277, %270
  %288 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %289 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %288, i32 0, i32 10
  store i32 24, i32* %289, align 8
  %290 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %291 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %290, i32 0, i32 11
  store i32 12, i32* %291, align 4
  %292 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %293 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %292, i32 0, i32 12
  store i32 64, i32* %293, align 8
  %294 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %295 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %294, i32 0, i32 13
  store i32 96, i32* %295, align 4
  %296 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %297 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %296, i32 0, i32 14
  store i32 128, i32* %297, align 8
  %298 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %299 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %298, i32 0, i32 15
  store i32 192, i32* %299, align 4
  %300 = load i32, i32* @EMU_A_FXGPREGBASE, align 4
  %301 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %302 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %301, i32 0, i32 38
  store i32 %300, i32* %302, align 4
  %303 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %304 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %303, i32 0, i32 16
  store i32 512, i32* %304, align 8
  %305 = load i32, i32* @EMU_A_MICROCODEBASE, align 4
  %306 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %307 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %306, i32 0, i32 39
  store i32 %305, i32* %307, align 8
  %308 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %309 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %308, i32 0, i32 17
  store i32 1024, i32* %309, align 4
  %310 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %311 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %310, i32 0, i32 18
  store i32 8, i32* %311, align 8
  %312 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %313 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %312, i32 0, i32 19
  store i32 16, i32* %313, align 4
  %314 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %315 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %314, i32 0, i32 20
  store i32 8, i32* %315, align 8
  %316 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %317 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %316, i32 0, i32 21
  store i32 16, i32* %317, align 4
  %318 = load i32, i32* @EMU_A_PTR_ADDR_MASK, align 4
  %319 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %320 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %319, i32 0, i32 37
  store i32 %318, i32* %320, align 8
  br label %321

321:                                              ; preds = %287, %282
  %322 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %323 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %362

326:                                              ; preds = %321
  %327 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %328 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %327, i32 0, i32 2
  store i32 0, i32* %328, align 8
  %329 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %330 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %329, i32 0, i32 10
  store i32 20, i32* %330, align 8
  %331 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %332 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %331, i32 0, i32 11
  store i32 10, i32* %332, align 4
  %333 = load i32, i32* @EMU_MICROCODEBASE, align 4
  %334 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %335 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %334, i32 0, i32 39
  store i32 %333, i32* %335, align 8
  %336 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %337 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %336, i32 0, i32 17
  store i32 512, i32* %337, align 4
  %338 = load i32, i32* @EMU_FXGPREGBASE, align 4
  %339 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %340 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %339, i32 0, i32 38
  store i32 %338, i32* %340, align 4
  %341 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %342 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %341, i32 0, i32 16
  store i32 256, i32* %342, align 8
  %343 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %344 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %343, i32 0, i32 12
  store i32 16, i32* %344, align 8
  %345 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %346 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %345, i32 0, i32 13
  store i32 32, i32* %346, align 4
  %347 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %348 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %347, i32 0, i32 14
  store i32 48, i32* %348, align 8
  %349 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %350 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %349, i32 0, i32 15
  store i32 64, i32* %350, align 4
  %351 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %352 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %351, i32 0, i32 18
  store i32 0, i32* %352, align 8
  %353 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %354 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %353, i32 0, i32 19
  store i32 8, i32* %354, align 4
  %355 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %356 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %355, i32 0, i32 20
  store i32 8, i32* %356, align 8
  %357 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %358 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %357, i32 0, i32 21
  store i32 16, i32* %358, align 4
  %359 = load i32, i32* @EMU_PTR_ADDR_MASK, align 4
  %360 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %361 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %360, i32 0, i32 37
  store i32 %359, i32* %361, align 8
  br label %362

362:                                              ; preds = %326, %321
  %363 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %364 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %363, i32 0, i32 10
  %365 = load i32, i32* %364, align 8
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  br label %927

368:                                              ; preds = %362
  %369 = load i32, i32* %3, align 4
  %370 = call i32 @pci_enable_busmaster(i32 %369)
  %371 = call i32 @PCIR_BAR(i32 0)
  store i32 %371, i32* %7, align 4
  %372 = load i32, i32* %3, align 4
  %373 = load i32, i32* @SYS_RES_IOPORT, align 4
  %374 = load i32, i32* @RF_ACTIVE, align 4
  %375 = call i8* @bus_alloc_resource_any(i32 %372, i32 %373, i32* %7, i32 %374)
  %376 = bitcast i8* %375 to i32*
  %377 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %378 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %377, i32 0, i32 26
  store i32* %376, i32** %378, align 8
  %379 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %380 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %379, i32 0, i32 26
  %381 = load i32*, i32** %380, align 8
  %382 = icmp eq i32* %381, null
  br i1 %382, label %383, label %386

383:                                              ; preds = %368
  %384 = load i32, i32* %3, align 4
  %385 = call i32 @device_printf(i32 %384, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %927

386:                                              ; preds = %368
  %387 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %388 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %387, i32 0, i32 26
  %389 = load i32*, i32** %388, align 8
  %390 = call i32 @rman_get_bustag(i32* %389)
  %391 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %392 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %391, i32 0, i32 36
  store i32 %390, i32* %392, align 4
  %393 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %394 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %393, i32 0, i32 26
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @rman_get_bushandle(i32* %395)
  %397 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %398 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %397, i32 0, i32 35
  store i32 %396, i32* %398, align 8
  store i32 0, i32* %7, align 4
  br label %399

399:                                              ; preds = %410, %386
  %400 = load i32, i32* %7, align 4
  %401 = load i32, i32* @EMU_MAX_IRQ_CONSUMERS, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %413

403:                                              ; preds = %399
  %404 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %405 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %404, i32 0, i32 34
  %406 = load i64*, i64** %405, align 8
  %407 = load i32, i32* %7, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %406, i64 %408
  store i64 0, i64* %409, align 8
  br label %410

410:                                              ; preds = %403
  %411 = load i32, i32* %7, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %7, align 4
  br label %399

413:                                              ; preds = %399
  store i32 0, i32* %7, align 4
  %414 = load i32, i32* %3, align 4
  %415 = load i32, i32* @SYS_RES_IRQ, align 4
  %416 = load i32, i32* @RF_ACTIVE, align 4
  %417 = load i32, i32* @RF_SHAREABLE, align 4
  %418 = or i32 %416, %417
  %419 = call i8* @bus_alloc_resource_any(i32 %414, i32 %415, i32* %7, i32 %418)
  %420 = bitcast i8* %419 to i32*
  %421 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %422 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %421, i32 0, i32 24
  store i32* %420, i32** %422, align 8
  %423 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %424 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %423, i32 0, i32 24
  %425 = load i32*, i32** %424, align 8
  %426 = icmp eq i32* %425, null
  br i1 %426, label %441, label %427

427:                                              ; preds = %413
  %428 = load i32, i32* %3, align 4
  %429 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %430 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %429, i32 0, i32 24
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* @INTR_MPSAFE, align 4
  %433 = load i32, i32* @INTR_TYPE_AV, align 4
  %434 = or i32 %432, %433
  %435 = load i32, i32* @emu_intr, align 4
  %436 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %437 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %438 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %437, i32 0, i32 25
  %439 = call i64 @bus_setup_intr(i32 %428, i32* %431, i32 %434, i32* null, i32 %435, %struct.emu_sc_info* %436, i64* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %444

441:                                              ; preds = %427, %413
  %442 = load i32, i32* %3, align 4
  %443 = call i32 @device_printf(i32 %442, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %927

444:                                              ; preds = %427
  %445 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %446 = call i64 @emu_rm_init(%struct.emu_sc_info* %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %444
  %449 = load i32, i32* %3, align 4
  %450 = call i32 @device_printf(i32 %449, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %927

451:                                              ; preds = %444
  %452 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %453 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %452, i32 0, i32 9
  %454 = load i32, i32* %453, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %464

456:                                              ; preds = %451
  %457 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %458 = call i64 @emu_cardbus_init(%struct.emu_sc_info* %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %456
  %461 = load i32, i32* %3, align 4
  %462 = call i32 @device_printf(i32 %461, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %927

463:                                              ; preds = %456
  br label %464

464:                                              ; preds = %463, %451
  %465 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %466 = call i64 @emu_init(%struct.emu_sc_info* %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %464
  %469 = load i32, i32* %3, align 4
  %470 = call i32 @device_printf(i32 %469, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %927

471:                                              ; preds = %464
  %472 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %473 = call i64 @emu10kx_dev_init(%struct.emu_sc_info* %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %471
  %476 = load i32, i32* %3, align 4
  %477 = call i32 @device_printf(i32 %476, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  br label %927

478:                                              ; preds = %471
  %479 = getelementptr inbounds [255 x i8], [255 x i8]* %9, i64 0, i64 0
  %480 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %481 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %484 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %483, i32 0, i32 26
  %485 = load i32*, i32** %484, align 8
  %486 = call i32 @rman_get_start(i32* %485)
  %487 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %488 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %487, i32 0, i32 24
  %489 = load i32*, i32** %488, align 8
  %490 = call i32 @rman_get_start(i32* %489)
  %491 = call i32 @snprintf(i8* %479, i32 255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %482, i32 %486, i32 %490)
  store i32 0, i32* %7, align 4
  br label %492

492:                                              ; preds = %568, %478
  %493 = load i32, i32* %7, align 4
  %494 = load i32, i32* @NUM_G, align 4
  %495 = icmp slt i32 %493, %494
  br i1 %495, label %496, label %571

496:                                              ; preds = %492
  %497 = load i32, i32* %7, align 4
  %498 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %499 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %498, i32 0, i32 33
  %500 = load %struct.TYPE_3__*, %struct.TYPE_3__** %499, align 8
  %501 = load i32, i32* %7, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %500, i64 %502
  %504 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %503, i32 0, i32 0
  store i32 %497, i32* %504, align 8
  %505 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %506 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %505, i32 0, i32 33
  %507 = load %struct.TYPE_3__*, %struct.TYPE_3__** %506, align 8
  %508 = load i32, i32* %7, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %507, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %510, i32 0, i32 9
  store i32* null, i32** %511, align 8
  %512 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %513 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %512, i32 0, i32 33
  %514 = load %struct.TYPE_3__*, %struct.TYPE_3__** %513, align 8
  %515 = load i32, i32* %7, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %514, i64 %516
  %518 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i32 0, i32 8
  store i64 0, i64* %518, align 8
  %519 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %520 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %519, i32 0, i32 33
  %521 = load %struct.TYPE_3__*, %struct.TYPE_3__** %520, align 8
  %522 = load i32, i32* %7, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i64 %523
  %525 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %524, i32 0, i32 7
  store i64 0, i64* %525, align 8
  %526 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %527 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %526, i32 0, i32 33
  %528 = load %struct.TYPE_3__*, %struct.TYPE_3__** %527, align 8
  %529 = load i32, i32* %7, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %528, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %531, i32 0, i32 6
  store i64 0, i64* %532, align 8
  %533 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %534 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %533, i32 0, i32 33
  %535 = load %struct.TYPE_3__*, %struct.TYPE_3__** %534, align 8
  %536 = load i32, i32* %7, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %535, i64 %537
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %538, i32 0, i32 5
  store i64 0, i64* %539, align 8
  %540 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %541 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %540, i32 0, i32 33
  %542 = load %struct.TYPE_3__*, %struct.TYPE_3__** %541, align 8
  %543 = load i32, i32* %7, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %542, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %545, i32 0, i32 4
  store i64 0, i64* %546, align 8
  %547 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %548 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %547, i32 0, i32 33
  %549 = load %struct.TYPE_3__*, %struct.TYPE_3__** %548, align 8
  %550 = load i32, i32* %7, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %549, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %552, i32 0, i32 3
  store i64 0, i64* %553, align 8
  %554 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %555 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %554, i32 0, i32 33
  %556 = load %struct.TYPE_3__*, %struct.TYPE_3__** %555, align 8
  %557 = load i32, i32* %7, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %556, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %559, i32 0, i32 2
  store i64 0, i64* %560, align 8
  %561 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %562 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %561, i32 0, i32 33
  %563 = load %struct.TYPE_3__*, %struct.TYPE_3__** %562, align 8
  %564 = load i32, i32* %7, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %563, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %566, i32 0, i32 1
  store i64 0, i64* %567, align 8
  br label %568

568:                                              ; preds = %496
  %569 = load i32, i32* %7, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %7, align 4
  br label %492

571:                                              ; preds = %492
  store i32 0, i32* %7, align 4
  br label %572

572:                                              ; preds = %583, %571
  %573 = load i32, i32* %7, align 4
  %574 = load i32, i32* @RT_COUNT, align 4
  %575 = icmp slt i32 %573, %574
  br i1 %575, label %576, label %586

576:                                              ; preds = %572
  %577 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %578 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %577, i32 0, i32 30
  %579 = load i32**, i32*** %578, align 8
  %580 = load i32, i32* %7, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i32*, i32** %579, i64 %581
  store i32* null, i32** %582, align 8
  br label %583

583:                                              ; preds = %576
  %584 = load i32, i32* %7, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %7, align 4
  br label %572

586:                                              ; preds = %572
  %587 = load i32, i32* @M_DEVBUF, align 4
  %588 = load i32, i32* @M_NOWAIT, align 4
  %589 = load i32, i32* @M_ZERO, align 4
  %590 = or i32 %588, %589
  %591 = call i8* @malloc(i32 16, i32 %587, i32 %590)
  %592 = bitcast i8* %591 to %struct.sndcard_func*
  store %struct.sndcard_func* %592, %struct.sndcard_func** %4, align 8
  %593 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %594 = icmp eq %struct.sndcard_func* %593, null
  br i1 %594, label %595, label %597

595:                                              ; preds = %586
  %596 = load i32, i32* @ENOMEM, align 4
  store i32 %596, i32* %10, align 4
  br label %927

597:                                              ; preds = %586
  %598 = load i32, i32* @M_DEVBUF, align 4
  %599 = load i32, i32* @M_NOWAIT, align 4
  %600 = load i32, i32* @M_ZERO, align 4
  %601 = or i32 %599, %600
  %602 = call i8* @malloc(i32 24, i32 %598, i32 %601)
  %603 = bitcast i8* %602 to %struct.emu_pcminfo*
  store %struct.emu_pcminfo* %603, %struct.emu_pcminfo** %6, align 8
  %604 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %605 = icmp eq %struct.emu_pcminfo* %604, null
  br i1 %605, label %606, label %608

606:                                              ; preds = %597
  %607 = load i32, i32* @ENOMEM, align 4
  store i32 %607, i32* %10, align 4
  br label %927

608:                                              ; preds = %597
  %609 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %610 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %611 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %610, i32 0, i32 3
  store %struct.emu_sc_info* %609, %struct.emu_sc_info** %611, align 8
  %612 = load i64, i64* @RT_FRONT, align 8
  %613 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %614 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %613, i32 0, i32 0
  store i64 %612, i64* %614, align 8
  %615 = load i8*, i8** @SCF_PCM, align 8
  %616 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %617 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %616, i32 0, i32 1
  store i8* %615, i8** %617, align 8
  %618 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %619 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %620 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %619, i32 0, i32 0
  store %struct.emu_pcminfo* %618, %struct.emu_pcminfo** %620, align 8
  %621 = load i32, i32* %3, align 4
  %622 = call i8* @device_add_child(i32 %621, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %623 = bitcast i8* %622 to i32*
  %624 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %625 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %624, i32 0, i32 30
  %626 = load i32**, i32*** %625, align 8
  %627 = load i64, i64* @RT_FRONT, align 8
  %628 = getelementptr inbounds i32*, i32** %626, i64 %627
  store i32* %623, i32** %628, align 8
  %629 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %630 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %629, i32 0, i32 30
  %631 = load i32**, i32*** %630, align 8
  %632 = load i64, i64* @RT_FRONT, align 8
  %633 = getelementptr inbounds i32*, i32** %631, i64 %632
  %634 = load i32*, i32** %633, align 8
  %635 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %636 = call i32 @device_set_ivars(i32* %634, %struct.sndcard_func* %635)
  %637 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %638 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %637, i32 0, i32 32
  %639 = load i64, i64* %638, align 8
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %854, label %641

641:                                              ; preds = %608
  %642 = load i32, i32* @M_DEVBUF, align 4
  %643 = load i32, i32* @M_NOWAIT, align 4
  %644 = load i32, i32* @M_ZERO, align 4
  %645 = or i32 %643, %644
  %646 = call i8* @malloc(i32 16, i32 %642, i32 %645)
  %647 = bitcast i8* %646 to %struct.sndcard_func*
  store %struct.sndcard_func* %647, %struct.sndcard_func** %4, align 8
  %648 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %649 = icmp eq %struct.sndcard_func* %648, null
  br i1 %649, label %650, label %652

650:                                              ; preds = %641
  %651 = load i32, i32* @ENOMEM, align 4
  store i32 %651, i32* %10, align 4
  br label %927

652:                                              ; preds = %641
  %653 = load i32, i32* @M_DEVBUF, align 4
  %654 = load i32, i32* @M_NOWAIT, align 4
  %655 = load i32, i32* @M_ZERO, align 4
  %656 = or i32 %654, %655
  %657 = call i8* @malloc(i32 24, i32 %653, i32 %656)
  %658 = bitcast i8* %657 to %struct.emu_pcminfo*
  store %struct.emu_pcminfo* %658, %struct.emu_pcminfo** %6, align 8
  %659 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %660 = icmp eq %struct.emu_pcminfo* %659, null
  br i1 %660, label %661, label %663

661:                                              ; preds = %652
  %662 = load i32, i32* @ENOMEM, align 4
  store i32 %662, i32* %10, align 4
  br label %927

663:                                              ; preds = %652
  %664 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %665 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %666 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %665, i32 0, i32 3
  store %struct.emu_sc_info* %664, %struct.emu_sc_info** %666, align 8
  %667 = load i64, i64* @RT_REAR, align 8
  %668 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %669 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %668, i32 0, i32 0
  store i64 %667, i64* %669, align 8
  %670 = load i8*, i8** @SCF_PCM, align 8
  %671 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %672 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %671, i32 0, i32 1
  store i8* %670, i8** %672, align 8
  %673 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %674 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %675 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %674, i32 0, i32 0
  store %struct.emu_pcminfo* %673, %struct.emu_pcminfo** %675, align 8
  %676 = load i32, i32* %3, align 4
  %677 = call i8* @device_add_child(i32 %676, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %678 = bitcast i8* %677 to i32*
  %679 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %680 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %679, i32 0, i32 30
  %681 = load i32**, i32*** %680, align 8
  %682 = load i64, i64* @RT_REAR, align 8
  %683 = getelementptr inbounds i32*, i32** %681, i64 %682
  store i32* %678, i32** %683, align 8
  %684 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %685 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %684, i32 0, i32 30
  %686 = load i32**, i32*** %685, align 8
  %687 = load i64, i64* @RT_REAR, align 8
  %688 = getelementptr inbounds i32*, i32** %686, i64 %687
  %689 = load i32*, i32** %688, align 8
  %690 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %691 = call i32 @device_set_ivars(i32* %689, %struct.sndcard_func* %690)
  %692 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %693 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %692, i32 0, i32 2
  %694 = load i32, i32* %693, align 8
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %797

696:                                              ; preds = %663
  %697 = load i32, i32* @M_DEVBUF, align 4
  %698 = load i32, i32* @M_NOWAIT, align 4
  %699 = load i32, i32* @M_ZERO, align 4
  %700 = or i32 %698, %699
  %701 = call i8* @malloc(i32 16, i32 %697, i32 %700)
  %702 = bitcast i8* %701 to %struct.sndcard_func*
  store %struct.sndcard_func* %702, %struct.sndcard_func** %4, align 8
  %703 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %704 = icmp eq %struct.sndcard_func* %703, null
  br i1 %704, label %705, label %707

705:                                              ; preds = %696
  %706 = load i32, i32* @ENOMEM, align 4
  store i32 %706, i32* %10, align 4
  br label %927

707:                                              ; preds = %696
  %708 = load i32, i32* @M_DEVBUF, align 4
  %709 = load i32, i32* @M_NOWAIT, align 4
  %710 = load i32, i32* @M_ZERO, align 4
  %711 = or i32 %709, %710
  %712 = call i8* @malloc(i32 24, i32 %708, i32 %711)
  %713 = bitcast i8* %712 to %struct.emu_pcminfo*
  store %struct.emu_pcminfo* %713, %struct.emu_pcminfo** %6, align 8
  %714 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %715 = icmp eq %struct.emu_pcminfo* %714, null
  br i1 %715, label %716, label %718

716:                                              ; preds = %707
  %717 = load i32, i32* @ENOMEM, align 4
  store i32 %717, i32* %10, align 4
  br label %927

718:                                              ; preds = %707
  %719 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %720 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %721 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %720, i32 0, i32 3
  store %struct.emu_sc_info* %719, %struct.emu_sc_info** %721, align 8
  %722 = load i64, i64* @RT_CENTER, align 8
  %723 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %724 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %723, i32 0, i32 0
  store i64 %722, i64* %724, align 8
  %725 = load i8*, i8** @SCF_PCM, align 8
  %726 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %727 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %726, i32 0, i32 1
  store i8* %725, i8** %727, align 8
  %728 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %729 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %730 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %729, i32 0, i32 0
  store %struct.emu_pcminfo* %728, %struct.emu_pcminfo** %730, align 8
  %731 = load i32, i32* %3, align 4
  %732 = call i8* @device_add_child(i32 %731, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %733 = bitcast i8* %732 to i32*
  %734 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %735 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %734, i32 0, i32 30
  %736 = load i32**, i32*** %735, align 8
  %737 = load i64, i64* @RT_CENTER, align 8
  %738 = getelementptr inbounds i32*, i32** %736, i64 %737
  store i32* %733, i32** %738, align 8
  %739 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %740 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %739, i32 0, i32 30
  %741 = load i32**, i32*** %740, align 8
  %742 = load i64, i64* @RT_CENTER, align 8
  %743 = getelementptr inbounds i32*, i32** %741, i64 %742
  %744 = load i32*, i32** %743, align 8
  %745 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %746 = call i32 @device_set_ivars(i32* %744, %struct.sndcard_func* %745)
  %747 = load i32, i32* @M_DEVBUF, align 4
  %748 = load i32, i32* @M_NOWAIT, align 4
  %749 = load i32, i32* @M_ZERO, align 4
  %750 = or i32 %748, %749
  %751 = call i8* @malloc(i32 16, i32 %747, i32 %750)
  %752 = bitcast i8* %751 to %struct.sndcard_func*
  store %struct.sndcard_func* %752, %struct.sndcard_func** %4, align 8
  %753 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %754 = icmp eq %struct.sndcard_func* %753, null
  br i1 %754, label %755, label %757

755:                                              ; preds = %718
  %756 = load i32, i32* @ENOMEM, align 4
  store i32 %756, i32* %10, align 4
  br label %927

757:                                              ; preds = %718
  %758 = load i32, i32* @M_DEVBUF, align 4
  %759 = load i32, i32* @M_NOWAIT, align 4
  %760 = load i32, i32* @M_ZERO, align 4
  %761 = or i32 %759, %760
  %762 = call i8* @malloc(i32 24, i32 %758, i32 %761)
  %763 = bitcast i8* %762 to %struct.emu_pcminfo*
  store %struct.emu_pcminfo* %763, %struct.emu_pcminfo** %6, align 8
  %764 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %765 = icmp eq %struct.emu_pcminfo* %764, null
  br i1 %765, label %766, label %768

766:                                              ; preds = %757
  %767 = load i32, i32* @ENOMEM, align 4
  store i32 %767, i32* %10, align 4
  br label %927

768:                                              ; preds = %757
  %769 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %770 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %771 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %770, i32 0, i32 3
  store %struct.emu_sc_info* %769, %struct.emu_sc_info** %771, align 8
  %772 = load i64, i64* @RT_SUB, align 8
  %773 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %774 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %773, i32 0, i32 0
  store i64 %772, i64* %774, align 8
  %775 = load i8*, i8** @SCF_PCM, align 8
  %776 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %777 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %776, i32 0, i32 1
  store i8* %775, i8** %777, align 8
  %778 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %779 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %780 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %779, i32 0, i32 0
  store %struct.emu_pcminfo* %778, %struct.emu_pcminfo** %780, align 8
  %781 = load i32, i32* %3, align 4
  %782 = call i8* @device_add_child(i32 %781, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %783 = bitcast i8* %782 to i32*
  %784 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %785 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %784, i32 0, i32 30
  %786 = load i32**, i32*** %785, align 8
  %787 = load i64, i64* @RT_SUB, align 8
  %788 = getelementptr inbounds i32*, i32** %786, i64 %787
  store i32* %783, i32** %788, align 8
  %789 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %790 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %789, i32 0, i32 30
  %791 = load i32**, i32*** %790, align 8
  %792 = load i64, i64* @RT_SUB, align 8
  %793 = getelementptr inbounds i32*, i32** %791, i64 %792
  %794 = load i32*, i32** %793, align 8
  %795 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %796 = call i32 @device_set_ivars(i32* %794, %struct.sndcard_func* %795)
  br label %797

797:                                              ; preds = %768, %663
  %798 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %799 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %798, i32 0, i32 3
  %800 = load i32, i32* %799, align 4
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %853

802:                                              ; preds = %797
  %803 = load i32, i32* @M_DEVBUF, align 4
  %804 = load i32, i32* @M_NOWAIT, align 4
  %805 = load i32, i32* @M_ZERO, align 4
  %806 = or i32 %804, %805
  %807 = call i8* @malloc(i32 16, i32 %803, i32 %806)
  %808 = bitcast i8* %807 to %struct.sndcard_func*
  store %struct.sndcard_func* %808, %struct.sndcard_func** %4, align 8
  %809 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %810 = icmp eq %struct.sndcard_func* %809, null
  br i1 %810, label %811, label %813

811:                                              ; preds = %802
  %812 = load i32, i32* @ENOMEM, align 4
  store i32 %812, i32* %10, align 4
  br label %927

813:                                              ; preds = %802
  %814 = load i32, i32* @M_DEVBUF, align 4
  %815 = load i32, i32* @M_NOWAIT, align 4
  %816 = load i32, i32* @M_ZERO, align 4
  %817 = or i32 %815, %816
  %818 = call i8* @malloc(i32 24, i32 %814, i32 %817)
  %819 = bitcast i8* %818 to %struct.emu_pcminfo*
  store %struct.emu_pcminfo* %819, %struct.emu_pcminfo** %6, align 8
  %820 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %821 = icmp eq %struct.emu_pcminfo* %820, null
  br i1 %821, label %822, label %824

822:                                              ; preds = %813
  %823 = load i32, i32* @ENOMEM, align 4
  store i32 %823, i32* %10, align 4
  br label %927

824:                                              ; preds = %813
  %825 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %826 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %827 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %826, i32 0, i32 3
  store %struct.emu_sc_info* %825, %struct.emu_sc_info** %827, align 8
  %828 = load i64, i64* @RT_SIDE, align 8
  %829 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %830 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %829, i32 0, i32 0
  store i64 %828, i64* %830, align 8
  %831 = load i8*, i8** @SCF_PCM, align 8
  %832 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %833 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %832, i32 0, i32 1
  store i8* %831, i8** %833, align 8
  %834 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %835 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %836 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %835, i32 0, i32 0
  store %struct.emu_pcminfo* %834, %struct.emu_pcminfo** %836, align 8
  %837 = load i32, i32* %3, align 4
  %838 = call i8* @device_add_child(i32 %837, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %839 = bitcast i8* %838 to i32*
  %840 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %841 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %840, i32 0, i32 30
  %842 = load i32**, i32*** %841, align 8
  %843 = load i64, i64* @RT_SIDE, align 8
  %844 = getelementptr inbounds i32*, i32** %842, i64 %843
  store i32* %839, i32** %844, align 8
  %845 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %846 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %845, i32 0, i32 30
  %847 = load i32**, i32*** %846, align 8
  %848 = load i64, i64* @RT_SIDE, align 8
  %849 = getelementptr inbounds i32*, i32** %847, i64 %848
  %850 = load i32*, i32** %849, align 8
  %851 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %852 = call i32 @device_set_ivars(i32* %850, %struct.sndcard_func* %851)
  br label %853

853:                                              ; preds = %824, %797
  br label %854

854:                                              ; preds = %853, %608
  %855 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %856 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %855, i32 0, i32 31
  %857 = load i64, i64* %856, align 8
  %858 = icmp ne i64 %857, 0
  br i1 %858, label %859, label %910

859:                                              ; preds = %854
  %860 = load i32, i32* @M_DEVBUF, align 4
  %861 = load i32, i32* @M_NOWAIT, align 4
  %862 = load i32, i32* @M_ZERO, align 4
  %863 = or i32 %861, %862
  %864 = call i8* @malloc(i32 16, i32 %860, i32 %863)
  %865 = bitcast i8* %864 to %struct.sndcard_func*
  store %struct.sndcard_func* %865, %struct.sndcard_func** %4, align 8
  %866 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %867 = icmp eq %struct.sndcard_func* %866, null
  br i1 %867, label %868, label %870

868:                                              ; preds = %859
  %869 = load i32, i32* @ENOMEM, align 4
  store i32 %869, i32* %10, align 4
  br label %927

870:                                              ; preds = %859
  %871 = load i32, i32* @M_DEVBUF, align 4
  %872 = load i32, i32* @M_NOWAIT, align 4
  %873 = load i32, i32* @M_ZERO, align 4
  %874 = or i32 %872, %873
  %875 = call i8* @malloc(i32 24, i32 %871, i32 %874)
  %876 = bitcast i8* %875 to %struct.emu_pcminfo*
  store %struct.emu_pcminfo* %876, %struct.emu_pcminfo** %6, align 8
  %877 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %878 = icmp eq %struct.emu_pcminfo* %877, null
  br i1 %878, label %879, label %881

879:                                              ; preds = %870
  %880 = load i32, i32* @ENOMEM, align 4
  store i32 %880, i32* %10, align 4
  br label %927

881:                                              ; preds = %870
  %882 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %883 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %884 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %883, i32 0, i32 3
  store %struct.emu_sc_info* %882, %struct.emu_sc_info** %884, align 8
  %885 = load i64, i64* @RT_MCHRECORD, align 8
  %886 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %887 = getelementptr inbounds %struct.emu_pcminfo, %struct.emu_pcminfo* %886, i32 0, i32 0
  store i64 %885, i64* %887, align 8
  %888 = load i8*, i8** @SCF_PCM, align 8
  %889 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %890 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %889, i32 0, i32 1
  store i8* %888, i8** %890, align 8
  %891 = load %struct.emu_pcminfo*, %struct.emu_pcminfo** %6, align 8
  %892 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %893 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %892, i32 0, i32 0
  store %struct.emu_pcminfo* %891, %struct.emu_pcminfo** %893, align 8
  %894 = load i32, i32* %3, align 4
  %895 = call i8* @device_add_child(i32 %894, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %896 = bitcast i8* %895 to i32*
  %897 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %898 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %897, i32 0, i32 30
  %899 = load i32**, i32*** %898, align 8
  %900 = load i64, i64* @RT_MCHRECORD, align 8
  %901 = getelementptr inbounds i32*, i32** %899, i64 %900
  store i32* %896, i32** %901, align 8
  %902 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %903 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %902, i32 0, i32 30
  %904 = load i32**, i32*** %903, align 8
  %905 = load i64, i64* @RT_MCHRECORD, align 8
  %906 = getelementptr inbounds i32*, i32** %904, i64 %905
  %907 = load i32*, i32** %906, align 8
  %908 = load %struct.sndcard_func*, %struct.sndcard_func** %4, align 8
  %909 = call i32 @device_set_ivars(i32* %907, %struct.sndcard_func* %908)
  br label %910

910:                                              ; preds = %881, %854
  store i32 0, i32* %7, align 4
  br label %911

911:                                              ; preds = %921, %910
  %912 = load i32, i32* %7, align 4
  %913 = icmp slt i32 %912, 2
  br i1 %913, label %914, label %924

914:                                              ; preds = %911
  %915 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %916 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %915, i32 0, i32 29
  %917 = load i32**, i32*** %916, align 8
  %918 = load i32, i32* %7, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds i32*, i32** %917, i64 %919
  store i32* null, i32** %920, align 8
  br label %921

921:                                              ; preds = %914
  %922 = load i32, i32* %7, align 4
  %923 = add nsw i32 %922, 1
  store i32 %923, i32* %7, align 4
  br label %911

924:                                              ; preds = %911
  %925 = load i32, i32* %3, align 4
  %926 = call i32 @bus_generic_attach(i32 %925)
  store i32 %926, i32* %2, align 4
  br label %990

927:                                              ; preds = %879, %868, %822, %811, %766, %755, %716, %705, %661, %650, %606, %595, %475, %468, %460, %448, %441, %383, %367, %249, %35, %25
  %928 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %929 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %928, i32 0, i32 28
  %930 = load i64, i64* %929, align 8
  %931 = icmp ne i64 %930, 0
  br i1 %931, label %932, label %935

932:                                              ; preds = %927
  %933 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %934 = call i32 @emu10kx_dev_uninit(%struct.emu_sc_info* %933)
  br label %935

935:                                              ; preds = %932, %927
  %936 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %937 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %936, i32 0, i32 27
  %938 = load i32*, i32** %937, align 8
  %939 = icmp ne i32* %938, null
  br i1 %939, label %940, label %943

940:                                              ; preds = %935
  %941 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %942 = call i32 @emu_rm_uninit(%struct.emu_sc_info* %941)
  br label %943

943:                                              ; preds = %940, %935
  %944 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %945 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %944, i32 0, i32 26
  %946 = load i32*, i32** %945, align 8
  %947 = icmp ne i32* %946, null
  br i1 %947, label %948, label %956

948:                                              ; preds = %943
  %949 = load i32, i32* %3, align 4
  %950 = load i32, i32* @SYS_RES_IOPORT, align 4
  %951 = call i32 @PCIR_BAR(i32 0)
  %952 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %953 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %952, i32 0, i32 26
  %954 = load i32*, i32** %953, align 8
  %955 = call i32 @bus_release_resource(i32 %949, i32 %950, i32 %951, i32* %954)
  br label %956

956:                                              ; preds = %948, %943
  %957 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %958 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %957, i32 0, i32 25
  %959 = load i64, i64* %958, align 8
  %960 = icmp ne i64 %959, 0
  br i1 %960, label %961, label %970

961:                                              ; preds = %956
  %962 = load i32, i32* %3, align 4
  %963 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %964 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %963, i32 0, i32 24
  %965 = load i32*, i32** %964, align 8
  %966 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %967 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %966, i32 0, i32 25
  %968 = load i64, i64* %967, align 8
  %969 = call i32 @bus_teardown_intr(i32 %962, i32* %965, i64 %968)
  br label %970

970:                                              ; preds = %961, %956
  %971 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %972 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %971, i32 0, i32 24
  %973 = load i32*, i32** %972, align 8
  %974 = icmp ne i32* %973, null
  br i1 %974, label %975, label %982

975:                                              ; preds = %970
  %976 = load i32, i32* %3, align 4
  %977 = load i32, i32* @SYS_RES_IRQ, align 4
  %978 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %979 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %978, i32 0, i32 24
  %980 = load i32*, i32** %979, align 8
  %981 = call i32 @bus_release_resource(i32 %976, i32 %977, i32 0, i32* %980)
  br label %982

982:                                              ; preds = %975, %970
  %983 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %984 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %983, i32 0, i32 23
  %985 = call i32 @mtx_destroy(i32* %984)
  %986 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %987 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %986, i32 0, i32 22
  %988 = call i32 @mtx_destroy(i32* %987)
  %989 = load i32, i32* %10, align 4
  store i32 %989, i32* %2, align 4
  br label %990

990:                                              ; preds = %982, %924
  %991 = load i32, i32* %2, align 4
  ret i32 %991
}

declare dso_local %struct.emu_sc_info* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32* @device_get_sysctl_ctx(i32) #1

declare dso_local i32* @device_get_sysctl_tree(i32) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i64*) #1

declare dso_local i32 @RANGE(i64, i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i64*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i64 @emu_getcard(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.emu_sc_info*, i64*) #1

declare dso_local i64 @emu_rm_init(%struct.emu_sc_info*) #1

declare dso_local i64 @emu_cardbus_init(%struct.emu_sc_info*) #1

declare dso_local i64 @emu_init(%struct.emu_sc_info*) #1

declare dso_local i64 @emu10kx_dev_init(%struct.emu_sc_info*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i8* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.sndcard_func*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @emu10kx_dev_uninit(%struct.emu_sc_info*) #1

declare dso_local i32 @emu_rm_uninit(%struct.emu_sc_info*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
