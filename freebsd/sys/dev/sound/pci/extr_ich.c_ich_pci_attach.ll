; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i8*, i64, i32, i8*, i64, i8*, i64, i64, i32*, %struct.TYPE_2__, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sc_info.0*)*, %struct.sc_info* }
%struct.sc_info.0 = type opaque

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"snd_ich softc\00", align 1
@SIS_VENDORID = common dso_local global i64 0, align 8
@SIS_7012 = common dso_local global i64 0, align 8
@INTEL_VENDORID = common dso_local global i64 0, align 8
@INTEL_82440MX = common dso_local global i64 0, align 8
@ICH_DMA_NOCACHE = common dso_local global i32 0, align 4
@INTEL_82801DB = common dso_local global i64 0, align 8
@INTEL_82801EB = common dso_local global i64 0, align 8
@INTEL_6300ESB = common dso_local global i64 0, align 8
@INTEL_82801FB = common dso_local global i64 0, align 8
@INTEL_82801GB = common dso_local global i64 0, align 8
@PCIR_MMBAR = common dso_local global i64 0, align 8
@PCIR_MBBAR = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PCIR_ICH_LEGACY = common dso_local global i32 0, align 4
@ICH_LEGACY_ENABLE = common dso_local global i32 0, align 4
@PCIR_NAMBAR = common dso_local global i64 0, align 8
@PCIR_NABMBAR = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to map IO port space\0A\00", align 1
@ICH_MIN_BUFSZ = common dso_local global i32 0, align 4
@ICH_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@ICH_MAX_BUFSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@ICH_MIN_BLKCNT = common dso_local global i8* null, align 8
@ICH_MAX_BLKCNT = common dso_local global i8* null, align 8
@ICH_DEFAULT_BLKCNT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"highlatency\00", align 1
@ICH_HIGH_LATENCY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"fixedrate\00", align 1
@ICH_FIXED_RATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"micchannel_enabled\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ich_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@ich_ac97 = common dso_local global i32 0, align 4
@AC97_F_EAPD_INV = common dso_local global i32 0, align 4
@AC97_EXTCAP_VRA = common dso_local global i64 0, align 8
@AC97_EXTCAP_VRM = common dso_local global i64 0, align 8
@AC97_CAP_MICCHANNEL = common dso_local global i32 0, align 4
@ICH_DTBL_LENGTH = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@ICH_MIN_BLKSZ = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_NOCACHE = common dso_local global i32 0, align 4
@ich_setmap = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ichchan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@ICH_CALIBRATE_DONE = common dso_local global i32 0, align 4
@cold = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ich_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ich_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @M_DEVBUF, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.sc_info* @malloc(i32 224, i32 %10, i32 %13)
  store %struct.sc_info* %14, %struct.sc_info** %8, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_nameunit(i32 %15)
  %17 = call i64 @snd_mtxcreate(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 11
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 30
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @pci_get_vendor(i32 %23)
  %25 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  store i64 %24, i64* %7, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @pci_get_device(i32 %27)
  %29 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  store i64 %28, i64* %6, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @pci_get_subdevice(i32 %31)
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pci_get_subvendor(i32 %34)
  %36 = or i32 %33, %35
  store i32 %36, i32* %4, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @SIS_VENDORID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @SIS_7012, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  br label %54

49:                                               ; preds = %40, %1
  %50 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 3
  store i32 2, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @INTEL_VENDORID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @INTEL_82440MX, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* @ICH_DMA_NOCACHE, align 4
  %64 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %58, %54
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pci_enable_busmaster(i32 %69)
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @INTEL_VENDORID, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %108

74:                                               ; preds = %68
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @INTEL_82801DB, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %94, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @INTEL_82801EB, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @INTEL_6300ESB, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @INTEL_82801FB, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @INTEL_82801GB, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90, %86, %82, %78, %74
  %95 = load i64, i64* @PCIR_MMBAR, align 8
  %96 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %97 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %96, i32 0, i32 20
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* @PCIR_MBBAR, align 8
  %99 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %100 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %99, i32 0, i32 17
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @SYS_RES_MEMORY, align 4
  %102 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %103 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %102, i32 0, i32 18
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @PCIR_ICH_LEGACY, align 4
  %106 = load i32, i32* @ICH_LEGACY_ENABLE, align 4
  %107 = call i32 @pci_write_config(i32 %104, i32 %105, i32 %106, i32 1)
  br label %118

108:                                              ; preds = %90, %68
  %109 = load i64, i64* @PCIR_NAMBAR, align 8
  %110 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %111 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %110, i32 0, i32 20
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* @PCIR_NABMBAR, align 8
  %113 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %114 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %113, i32 0, i32 17
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* @SYS_RES_IOPORT, align 4
  %116 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %117 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %116, i32 0, i32 18
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %108, %94
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %121 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %120, i32 0, i32 18
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %124 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %123, i32 0, i32 20
  %125 = load i32, i32* @RF_ACTIVE, align 4
  %126 = call i8* @bus_alloc_resource_any(i32 %119, i32 %122, i64* %124, i32 %125)
  %127 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %128 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %127, i32 0, i32 19
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %3, align 4
  %130 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %131 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %130, i32 0, i32 18
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %134 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %133, i32 0, i32 17
  %135 = load i32, i32* @RF_ACTIVE, align 4
  %136 = call i8* @bus_alloc_resource_any(i32 %129, i32 %132, i64* %134, i32 %135)
  %137 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %138 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %137, i32 0, i32 16
  store i8* %136, i8** %138, align 8
  %139 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %140 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %139, i32 0, i32 19
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %118
  %144 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %145 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %144, i32 0, i32 16
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %143, %118
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %571

151:                                              ; preds = %143
  %152 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %153 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %152, i32 0, i32 19
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @rman_get_bustag(i8* %154)
  %156 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %157 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %156, i32 0, i32 29
  store i8* %155, i8** %157, align 8
  %158 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %159 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %158, i32 0, i32 19
  %160 = load i8*, i8** %159, align 8
  %161 = call i8* @rman_get_bushandle(i8* %160)
  %162 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %163 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %162, i32 0, i32 28
  store i8* %161, i8** %163, align 8
  %164 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %165 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %164, i32 0, i32 16
  %166 = load i8*, i8** %165, align 8
  %167 = call i8* @rman_get_bustag(i8* %166)
  %168 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %169 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %168, i32 0, i32 27
  store i8* %167, i8** %169, align 8
  %170 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %171 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %170, i32 0, i32 16
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @rman_get_bushandle(i8* %172)
  %174 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %175 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %174, i32 0, i32 26
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @ICH_MIN_BUFSZ, align 4
  %178 = load i32, i32* @ICH_DEFAULT_BUFSZ, align 4
  %179 = load i32, i32* @ICH_MAX_BUFSZ, align 4
  %180 = call i32 @pcm_getbuffersize(i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %182 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @device_get_name(i32 %183)
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @device_get_unit(i32 %185)
  %187 = call i64 @resource_int_value(i32 %184, i32 %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %243

189:                                              ; preds = %151
  %190 = load i32, i32* %9, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %243

192:                                              ; preds = %189
  %193 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %194 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %9, align 4
  %197 = sdiv i32 %195, %196
  %198 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %199 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 8
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %207, %192
  %201 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %202 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = ashr i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %200

210:                                              ; preds = %200
  %211 = load i32, i32* %9, align 4
  %212 = sub nsw i32 %211, 1
  %213 = shl i32 1, %212
  %214 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %215 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 8
  %216 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %217 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = load i8*, i8** @ICH_MIN_BLKCNT, align 8
  %222 = icmp ult i8* %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %210
  %224 = load i8*, i8** @ICH_MIN_BLKCNT, align 8
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %227 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %226, i32 0, i32 6
  store i32 %225, i32* %227, align 8
  br label %242

228:                                              ; preds = %210
  %229 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %230 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = load i8*, i8** @ICH_MAX_BLKCNT, align 8
  %235 = icmp ugt i8* %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %228
  %237 = load i8*, i8** @ICH_MAX_BLKCNT, align 8
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %240 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %239, i32 0, i32 6
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %236, %228
  br label %242

242:                                              ; preds = %241, %223
  br label %248

243:                                              ; preds = %189, %151
  %244 = load i8*, i8** @ICH_DEFAULT_BLKCNT, align 8
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %247 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %246, i32 0, i32 6
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %243, %242
  %249 = load i32, i32* %3, align 4
  %250 = call i32 @device_get_name(i32 %249)
  %251 = load i32, i32* %3, align 4
  %252 = call i32 @device_get_unit(i32 %251)
  %253 = call i64 @resource_int_value(i32 %250, i32 %252, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %248
  %256 = load i32, i32* %9, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %255
  %259 = load i32, i32* @ICH_HIGH_LATENCY, align 4
  %260 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %261 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load i8*, i8** @ICH_MIN_BLKCNT, align 8
  %265 = ptrtoint i8* %264 to i32
  %266 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %267 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %266, i32 0, i32 6
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %258, %255, %248
  %269 = load i32, i32* %3, align 4
  %270 = call i32 @device_get_name(i32 %269)
  %271 = load i32, i32* %3, align 4
  %272 = call i32 @device_get_unit(i32 %271)
  %273 = call i64 @resource_int_value(i32 %270, i32 %272, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %268
  %276 = load i32, i32* %9, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %275
  %279 = load i32, i32* @ICH_FIXED_RATE, align 4
  %280 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %281 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 8
  br label %284

284:                                              ; preds = %278, %275, %268
  %285 = load i32, i32* %3, align 4
  %286 = call i32 @device_get_name(i32 %285)
  %287 = load i32, i32* %3, align 4
  %288 = call i32 @device_get_unit(i32 %287)
  %289 = call i64 @resource_int_value(i32 %286, i32 %288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %284
  %292 = load i32, i32* %9, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %296 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %295, i32 0, i32 7
  store i32 1, i32* %296, align 4
  br label %297

297:                                              ; preds = %294, %291, %284
  %298 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %299 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %298, i32 0, i32 22
  store i64 0, i64* %299, align 8
  %300 = load i32, i32* %3, align 4
  %301 = load i32, i32* @SYS_RES_IRQ, align 4
  %302 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %303 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %302, i32 0, i32 22
  %304 = load i32, i32* @RF_ACTIVE, align 4
  %305 = load i32, i32* @RF_SHAREABLE, align 4
  %306 = or i32 %304, %305
  %307 = call i8* @bus_alloc_resource_any(i32 %300, i32 %301, i64* %303, i32 %306)
  %308 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %309 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %308, i32 0, i32 21
  store i8* %307, i8** %309, align 8
  %310 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %311 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %310, i32 0, i32 21
  %312 = load i8*, i8** %311, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %326

314:                                              ; preds = %297
  %315 = load i32, i32* %3, align 4
  %316 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %317 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %316, i32 0, i32 21
  %318 = load i8*, i8** %317, align 8
  %319 = load i32, i32* @INTR_MPSAFE, align 4
  %320 = load i32, i32* @ich_intr, align 4
  %321 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %322 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %323 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %322, i32 0, i32 23
  %324 = call i64 @snd_setup_intr(i32 %315, i8* %318, i32 %319, i32 %320, %struct.sc_info* %321, i64* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %314, %297
  %327 = load i32, i32* %3, align 4
  %328 = call i32 @device_printf(i32 %327, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %571

329:                                              ; preds = %314
  %330 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %331 = call i64 @ich_init(%struct.sc_info* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = load i32, i32* %3, align 4
  %335 = call i32 @device_printf(i32 %334, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %571

336:                                              ; preds = %329
  %337 = load i32, i32* %3, align 4
  %338 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %339 = load i32, i32* @ich_ac97, align 4
  %340 = call i32* @AC97_CREATE(i32 %337, %struct.sc_info* %338, i32 %339)
  %341 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %342 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %341, i32 0, i32 24
  store i32* %340, i32** %342, align 8
  %343 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %344 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %343, i32 0, i32 24
  %345 = load i32*, i32** %344, align 8
  %346 = icmp eq i32* %345, null
  br i1 %346, label %347, label %348

347:                                              ; preds = %336
  br label %571

348:                                              ; preds = %336
  %349 = load i32, i32* %4, align 4
  switch i32 %349, label %361 [
    i32 539956767, label %350
    i32 540677663, label %350
    i32 540939807, label %350
    i32 541857311, label %350
    i32 -2126245811, label %350
    i32 -2120806323, label %350
    i32 -2118119347, label %350
    i32 -2117791667, label %350
    i32 814288956, label %350
    i32 815403068, label %350
    i32 -2112679885, label %350
    i32 -2101473229, label %350
  ]

350:                                              ; preds = %348, %348, %348, %348, %348, %348, %348, %348, %348, %348, %348, %348
  %351 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %352 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %351, i32 0, i32 24
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %355 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %354, i32 0, i32 24
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @ac97_getflags(i32* %356)
  %358 = load i32, i32* @AC97_F_EAPD_INV, align 4
  %359 = or i32 %357, %358
  %360 = call i32 @ac97_setflags(i32* %353, i32 %359)
  br label %362

361:                                              ; preds = %348
  br label %362

362:                                              ; preds = %361, %350
  %363 = load i32, i32* %3, align 4
  %364 = call i32 (...) @ac97_getmixerclass()
  %365 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %366 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %365, i32 0, i32 24
  %367 = load i32*, i32** %366, align 8
  %368 = call i32 @mixer_init(i32 %363, i32 %364, i32* %367)
  %369 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %370 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %369, i32 0, i32 24
  %371 = load i32*, i32** %370, align 8
  %372 = call i64 @ac97_getextcaps(i32* %371)
  store i64 %372, i64* %5, align 8
  %373 = load i64, i64* %5, align 8
  %374 = load i64, i64* @AC97_EXTCAP_VRA, align 8
  %375 = and i64 %373, %374
  %376 = trunc i64 %375 to i32
  %377 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %378 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %377, i32 0, i32 8
  store i32 %376, i32* %378, align 8
  %379 = load i64, i64* %5, align 8
  %380 = load i64, i64* @AC97_EXTCAP_VRM, align 8
  %381 = and i64 %379, %380
  %382 = trunc i64 %381 to i32
  %383 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %384 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %383, i32 0, i32 9
  store i32 %382, i32* %384, align 4
  %385 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %386 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %397

389:                                              ; preds = %362
  %390 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %391 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %390, i32 0, i32 24
  %392 = load i32*, i32** %391, align 8
  %393 = call i32 @ac97_getcaps(i32* %392)
  %394 = load i32, i32* @AC97_CAP_MICCHANNEL, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br label %397

397:                                              ; preds = %389, %362
  %398 = phi i1 [ false, %362 ], [ %396, %389 ]
  %399 = zext i1 %398 to i64
  %400 = select i1 %398, i32 1, i32 0
  %401 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %402 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %401, i32 0, i32 7
  store i32 %400, i32* %402, align 4
  %403 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %404 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %403, i32 0, i32 24
  %405 = load i32*, i32** %404, align 8
  %406 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %407 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %406, i32 0, i32 8
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %410 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %409, i32 0, i32 9
  %411 = load i32, i32* %410, align 4
  %412 = or i32 %408, %411
  %413 = call i32 @ac97_setextmode(i32* %405, i32 %412)
  %414 = load i32, i32* @ICH_DTBL_LENGTH, align 4
  %415 = sext i32 %414 to i64
  %416 = mul i64 4, %415
  %417 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %418 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  %421 = zext i1 %420 to i64
  %422 = select i1 %420, i32 3, i32 2
  %423 = sext i32 %422 to i64
  %424 = mul i64 %416, %423
  %425 = trunc i64 %424 to i32
  %426 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %427 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %426, i32 0, i32 10
  store i32 %425, i32* %427, align 8
  %428 = load i32, i32* %3, align 4
  %429 = call i32 @bus_get_dma_tag(i32 %428)
  %430 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %431 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %432 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %433 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %432, i32 0, i32 10
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %436 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %435, i32 0, i32 12
  %437 = call i64 @bus_dma_tag_create(i32 %429, i32 8, i32 0, i32 %430, i32 %431, i32* null, i32* null, i32 %434, i32 1, i32 262143, i32 0, i32* null, i32* null, i64* %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %397
  %440 = load i32, i32* %3, align 4
  %441 = call i32 @device_printf(i32 %440, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %571

442:                                              ; preds = %397
  %443 = load i32, i32* %3, align 4
  %444 = call i32 @bus_get_dma_tag(i32 %443)
  %445 = load i32, i32* @ICH_MIN_BLKSZ, align 4
  %446 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %447 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %448 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %449 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %448, i32 0, i32 5
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %452 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %451, i32 0, i32 13
  %453 = call i64 @bus_dma_tag_create(i32 %444, i32 %445, i32 0, i32 %446, i32 %447, i32* null, i32* null, i32 %450, i32 1, i32 262143, i32 0, i32* null, i32* null, i64* %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %442
  %456 = load i32, i32* %3, align 4
  %457 = call i32 @device_printf(i32 %456, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %571

458:                                              ; preds = %442
  %459 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %460 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %459, i32 0, i32 12
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %463 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %462, i32 0, i32 15
  %464 = bitcast i64* %463 to i8**
  %465 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %466 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %467 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %466, i32 0, i32 4
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* @ICH_DMA_NOCACHE, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %474

472:                                              ; preds = %458
  %473 = load i32, i32* @BUS_DMA_NOCACHE, align 4
  br label %475

474:                                              ; preds = %458
  br label %475

475:                                              ; preds = %474, %472
  %476 = phi i32 [ %473, %472 ], [ 0, %474 ]
  %477 = or i32 %465, %476
  %478 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %479 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %478, i32 0, i32 14
  %480 = call i64 @bus_dmamem_alloc(i64 %461, i8** %464, i32 %477, i64* %479)
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %475
  br label %571

483:                                              ; preds = %475
  %484 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %485 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %484, i32 0, i32 12
  %486 = load i64, i64* %485, align 8
  %487 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %488 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %487, i32 0, i32 14
  %489 = load i64, i64* %488, align 8
  %490 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %491 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %490, i32 0, i32 15
  %492 = load i64, i64* %491, align 8
  %493 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %494 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %493, i32 0, i32 10
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @ich_setmap, align 4
  %497 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %498 = call i64 @bus_dmamap_load(i64 %486, i64 %489, i64 %492, i32 %495, i32 %496, %struct.sc_info* %497, i32 0)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %483
  br label %571

501:                                              ; preds = %483
  %502 = load i32, i32* %3, align 4
  %503 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %504 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %505 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %504, i32 0, i32 7
  %506 = load i32, i32* %505, align 4
  %507 = icmp ne i32 %506, 0
  %508 = zext i1 %507 to i64
  %509 = select i1 %507, i32 2, i32 1
  %510 = call i64 @pcm_register(i32 %502, %struct.sc_info* %503, i32 1, i32 %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %501
  br label %571

513:                                              ; preds = %501
  %514 = load i32, i32* %3, align 4
  %515 = load i32, i32* @PCMDIR_PLAY, align 4
  %516 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %517 = call i32 @pcm_addchan(i32 %514, i32 %515, i32* @ichchan_class, %struct.sc_info* %516)
  %518 = load i32, i32* %3, align 4
  %519 = load i32, i32* @PCMDIR_REC, align 4
  %520 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %521 = call i32 @pcm_addchan(i32 %518, i32 %519, i32* @ichchan_class, %struct.sc_info* %520)
  %522 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %523 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %522, i32 0, i32 7
  %524 = load i32, i32* %523, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %531

526:                                              ; preds = %513
  %527 = load i32, i32* %3, align 4
  %528 = load i32, i32* @PCMDIR_REC, align 4
  %529 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %530 = call i32 @pcm_addchan(i32 %527, i32 %528, i32* @ichchan_class, %struct.sc_info* %529)
  br label %531

531:                                              ; preds = %526, %513
  %532 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %533 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %532, i32 0, i32 4
  %534 = load i32, i32* %533, align 8
  %535 = load i32, i32* @ICH_FIXED_RATE, align 4
  %536 = and i32 %534, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %546

538:                                              ; preds = %531
  %539 = load i32, i32* @ICH_CALIBRATE_DONE, align 4
  %540 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %541 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %540, i32 0, i32 4
  %542 = load i32, i32* %541, align 8
  %543 = or i32 %542, %539
  store i32 %543, i32* %541, align 8
  %544 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %545 = call i32 @ich_setstatus(%struct.sc_info* %544)
  br label %570

546:                                              ; preds = %531
  %547 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %548 = call i32 @ich_initsys(%struct.sc_info* %547)
  %549 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %550 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %549, i32 0, i32 25
  %551 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %550, i32 0, i32 0
  store i32 (%struct.sc_info.0*)* bitcast (i32 (%struct.sc_info*)* @ich_calibrate to i32 (%struct.sc_info.0*)*), i32 (%struct.sc_info.0*)** %551, align 8
  %552 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %553 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %554 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %553, i32 0, i32 25
  %555 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %554, i32 0, i32 1
  store %struct.sc_info* %552, %struct.sc_info** %555, align 8
  %556 = load i64, i64* @cold, align 8
  %557 = icmp eq i64 %556, 0
  br i1 %557, label %563, label %558

558:                                              ; preds = %546
  %559 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %560 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %559, i32 0, i32 25
  %561 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %569

563:                                              ; preds = %558, %546
  %564 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %565 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %564, i32 0, i32 25
  %566 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %565, i32 0, i32 0
  store i32 (%struct.sc_info.0*)* null, i32 (%struct.sc_info.0*)** %566, align 8
  %567 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %568 = call i32 @ich_calibrate(%struct.sc_info* %567)
  br label %569

569:                                              ; preds = %563, %558
  br label %570

570:                                              ; preds = %569, %538
  store i32 0, i32* %2, align 4
  br label %708

571:                                              ; preds = %512, %500, %482, %455, %439, %347, %333, %326, %148
  %572 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %573 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %572, i32 0, i32 24
  %574 = load i32*, i32** %573, align 8
  %575 = icmp ne i32* %574, null
  br i1 %575, label %576, label %581

576:                                              ; preds = %571
  %577 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %578 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %577, i32 0, i32 24
  %579 = load i32*, i32** %578, align 8
  %580 = call i32 @ac97_destroy(i32* %579)
  br label %581

581:                                              ; preds = %576, %571
  %582 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %583 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %582, i32 0, i32 23
  %584 = load i64, i64* %583, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %595

586:                                              ; preds = %581
  %587 = load i32, i32* %3, align 4
  %588 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %589 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %588, i32 0, i32 21
  %590 = load i8*, i8** %589, align 8
  %591 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %592 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %591, i32 0, i32 23
  %593 = load i64, i64* %592, align 8
  %594 = call i32 @bus_teardown_intr(i32 %587, i8* %590, i64 %593)
  br label %595

595:                                              ; preds = %586, %581
  %596 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %597 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %596, i32 0, i32 21
  %598 = load i8*, i8** %597, align 8
  %599 = icmp ne i8* %598, null
  br i1 %599, label %600, label %610

600:                                              ; preds = %595
  %601 = load i32, i32* %3, align 4
  %602 = load i32, i32* @SYS_RES_IRQ, align 4
  %603 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %604 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %603, i32 0, i32 22
  %605 = load i64, i64* %604, align 8
  %606 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %607 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %606, i32 0, i32 21
  %608 = load i8*, i8** %607, align 8
  %609 = call i32 @bus_release_resource(i32 %601, i32 %602, i64 %605, i8* %608)
  br label %610

610:                                              ; preds = %600, %595
  %611 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %612 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %611, i32 0, i32 19
  %613 = load i8*, i8** %612, align 8
  %614 = icmp ne i8* %613, null
  br i1 %614, label %615, label %627

615:                                              ; preds = %610
  %616 = load i32, i32* %3, align 4
  %617 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %618 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %617, i32 0, i32 18
  %619 = load i32, i32* %618, align 8
  %620 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %621 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %620, i32 0, i32 20
  %622 = load i64, i64* %621, align 8
  %623 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %624 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %623, i32 0, i32 19
  %625 = load i8*, i8** %624, align 8
  %626 = call i32 @bus_release_resource(i32 %616, i32 %619, i64 %622, i8* %625)
  br label %627

627:                                              ; preds = %615, %610
  %628 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %629 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %628, i32 0, i32 16
  %630 = load i8*, i8** %629, align 8
  %631 = icmp ne i8* %630, null
  br i1 %631, label %632, label %644

632:                                              ; preds = %627
  %633 = load i32, i32* %3, align 4
  %634 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %635 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %634, i32 0, i32 18
  %636 = load i32, i32* %635, align 8
  %637 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %638 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %637, i32 0, i32 17
  %639 = load i64, i64* %638, align 8
  %640 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %641 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %640, i32 0, i32 16
  %642 = load i8*, i8** %641, align 8
  %643 = call i32 @bus_release_resource(i32 %633, i32 %636, i64 %639, i8* %642)
  br label %644

644:                                              ; preds = %632, %627
  %645 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %646 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %645, i32 0, i32 14
  %647 = load i64, i64* %646, align 8
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %657

649:                                              ; preds = %644
  %650 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %651 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %650, i32 0, i32 12
  %652 = load i64, i64* %651, align 8
  %653 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %654 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %653, i32 0, i32 14
  %655 = load i64, i64* %654, align 8
  %656 = call i32 @bus_dmamap_unload(i64 %652, i64 %655)
  br label %657

657:                                              ; preds = %649, %644
  %658 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %659 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %658, i32 0, i32 15
  %660 = load i64, i64* %659, align 8
  %661 = icmp ne i64 %660, 0
  br i1 %661, label %662, label %673

662:                                              ; preds = %657
  %663 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %664 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %663, i32 0, i32 12
  %665 = load i64, i64* %664, align 8
  %666 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %667 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %666, i32 0, i32 15
  %668 = load i64, i64* %667, align 8
  %669 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %670 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %669, i32 0, i32 14
  %671 = load i64, i64* %670, align 8
  %672 = call i32 @bus_dmamem_free(i64 %665, i64 %668, i64 %671)
  br label %673

673:                                              ; preds = %662, %657
  %674 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %675 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %674, i32 0, i32 13
  %676 = load i64, i64* %675, align 8
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %683

678:                                              ; preds = %673
  %679 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %680 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %679, i32 0, i32 13
  %681 = load i64, i64* %680, align 8
  %682 = call i32 @bus_dma_tag_destroy(i64 %681)
  br label %683

683:                                              ; preds = %678, %673
  %684 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %685 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %684, i32 0, i32 12
  %686 = load i64, i64* %685, align 8
  %687 = icmp ne i64 %686, 0
  br i1 %687, label %688, label %693

688:                                              ; preds = %683
  %689 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %690 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %689, i32 0, i32 12
  %691 = load i64, i64* %690, align 8
  %692 = call i32 @bus_dma_tag_destroy(i64 %691)
  br label %693

693:                                              ; preds = %688, %683
  %694 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %695 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %694, i32 0, i32 11
  %696 = load i64, i64* %695, align 8
  %697 = icmp ne i64 %696, 0
  br i1 %697, label %698, label %703

698:                                              ; preds = %693
  %699 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %700 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %699, i32 0, i32 11
  %701 = load i64, i64* %700, align 8
  %702 = call i32 @snd_mtxfree(i64 %701)
  br label %703

703:                                              ; preds = %698, %693
  %704 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %705 = load i32, i32* @M_DEVBUF, align 4
  %706 = call i32 @free(%struct.sc_info* %704, i32 %705)
  %707 = load i32, i32* @ENXIO, align 4
  store i32 %707, i32* %2, align 4
  br label %708

708:                                              ; preds = %703, %570
  %709 = load i32, i32* %2, align 4
  ret i32 %709
}

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #1

declare dso_local i64 @snd_mtxcreate(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @rman_get_bustag(i8*) #1

declare dso_local i8* @rman_get_bushandle(i8*) #1

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.sc_info*, i64*) #1

declare dso_local i64 @ich_init(%struct.sc_info*) #1

declare dso_local i32* @AC97_CREATE(i32, %struct.sc_info*, i32) #1

declare dso_local i32 @ac97_setflags(i32*, i32) #1

declare dso_local i32 @ac97_getflags(i32*) #1

declare dso_local i32 @mixer_init(i32, i32, i32*) #1

declare dso_local i32 @ac97_getmixerclass(...) #1

declare dso_local i64 @ac97_getextcaps(i32*) #1

declare dso_local i32 @ac97_getcaps(i32*) #1

declare dso_local i32 @ac97_setextmode(i32*, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i64, i8**, i32, i64*) #1

declare dso_local i64 @bus_dmamap_load(i64, i64, i64, i32, i32, %struct.sc_info*, i32) #1

declare dso_local i64 @pcm_register(i32, %struct.sc_info*, i32, i32) #1

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #1

declare dso_local i32 @ich_setstatus(%struct.sc_info*) #1

declare dso_local i32 @ich_initsys(%struct.sc_info*) #1

declare dso_local i32 @ich_calibrate(%struct.sc_info*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local i32 @ac97_destroy(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i8*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i8*) #1

declare dso_local i32 @bus_dmamap_unload(i64, i64) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @snd_mtxfree(i64) #1

declare dso_local i32 @free(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
