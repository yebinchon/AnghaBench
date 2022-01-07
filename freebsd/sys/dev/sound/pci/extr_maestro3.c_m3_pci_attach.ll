; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m3_card_type = type { i64, i32, i32, i32 }
%struct.sc_info = type { i64, i64, i64, i64, i8*, i64, i8*, i64, i64, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ac97_info = type { i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@CALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"m3_pci_attach\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"snd_maestro3 softc\00", align 1
@m3_card_types = common dso_local global %struct.m3_card_type* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"dac\00", align 1
@M3_PCHANS = common dso_local global i32 0, align 4
@M3_RCHANS = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"unable to allocate register space\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"unable to allocate interrupt\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@m3_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@M3_BUFSIZE_MIN = common dso_local global i32 0, align 4
@M3_BUFSIZE_DEFAULT = common dso_local global i32 0, align 4
@M3_BUFSIZE_MAX = common dso_local global i32 0, align 4
@M3_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@m3_codec = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"ac97_create error\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"mixer_init error\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"pcm_register error\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@m3_pch_class = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"pcm_addchan (play) error\0A\00", align 1
@PCMDIR_REC = common dso_local global i32 0, align 4
@m3_rch_class = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"pcm_addchan (rec) error\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"at %s 0x%jx irq %jd %s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@snd_maestro3 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"attach: pcm_setstatus error\0A\00", align 1
@REV_B_CODE_MEMORY_LENGTH = common dso_local global i32 0, align 4
@REV_B_DATA_MEMORY_LENGTH = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @m3_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca %struct.ac97_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.m3_card_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ac97_info* null, %struct.ac97_info** %5, align 8
  %14 = load i32, i32* @SND_STATUSLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @CALL, align 4
  %19 = call i32 @M3_DEBUG(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.sc_info* @malloc(i32 112, i32 %20, i32 %23)
  store %struct.sc_info* %24, %struct.sc_info** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 16
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @pci_get_devid(i32 %28)
  %30 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_nameunit(i32 %32)
  %34 = call i64 @snd_mtxcreate(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.m3_card_type*, %struct.m3_card_type** @m3_card_types, align 8
  store %struct.m3_card_type* %37, %struct.m3_card_type** %8, align 8
  br label %38

38:                                               ; preds = %68, %1
  %39 = load %struct.m3_card_type*, %struct.m3_card_type** %8, align 8
  %40 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.m3_card_type*, %struct.m3_card_type** %8, align 8
  %48 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load %struct.m3_card_type*, %struct.m3_card_type** %8, align 8
  %53 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 15
  store i32 %54, i32* %56, align 4
  %57 = load %struct.m3_card_type*, %struct.m3_card_type** %8, align 8
  %58 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %61 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %60, i32 0, i32 14
  store i32 %59, i32* %61, align 8
  %62 = load %struct.m3_card_type*, %struct.m3_card_type** %8, align 8
  %63 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %66 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %65, i32 0, i32 13
  store i32 %64, i32* %66, align 4
  br label %71

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.m3_card_type*, %struct.m3_card_type** %8, align 8
  %70 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %69, i32 1
  store %struct.m3_card_type* %70, %struct.m3_card_type** %8, align 8
  br label %38

71:                                               ; preds = %51, %38
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_get_name(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @device_get_unit(i32 %74)
  %76 = call i64 @resource_int_value(i32 %73, i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %11, align 4
  br label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @M3_PCHANS, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @M3_PCHANS, align 4
  store i32 %87, i32* %11, align 4
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %81
  br label %94

92:                                               ; preds = %71
  %93 = load i32, i32* @M3_PCHANS, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %92, %91
  %95 = load i32, i32* @M3_RCHANS, align 4
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @pci_enable_busmaster(i32 %96)
  %98 = call i64 @PCIR_BAR(i32 0)
  %99 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %100 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %99, i32 0, i32 5
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* @SYS_RES_MEMORY, align 8
  %102 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %103 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %106 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %109 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %108, i32 0, i32 5
  %110 = load i32, i32* @RF_ACTIVE, align 4
  %111 = call i8* @bus_alloc_resource_any(i32 %104, i64 %107, i64* %109, i32 %110)
  %112 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %113 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %115 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %132, label %118

118:                                              ; preds = %94
  %119 = load i64, i64* @SYS_RES_IOPORT, align 8
  %120 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %121 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %124 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %127 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %126, i32 0, i32 5
  %128 = load i32, i32* @RF_ACTIVE, align 4
  %129 = call i8* @bus_alloc_resource_any(i32 %122, i64 %125, i64* %127, i32 %128)
  %130 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %131 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %118, %94
  %133 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %134 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %334

140:                                              ; preds = %132
  %141 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %142 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %141, i32 0, i32 4
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @rman_get_bustag(i8* %143)
  %145 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %146 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %145, i32 0, i32 12
  store i32 %144, i32* %146, align 8
  %147 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %148 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @rman_get_bushandle(i8* %149)
  %151 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %152 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %151, i32 0, i32 11
  store i32 %150, i32* %152, align 4
  %153 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %154 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %153, i32 0, i32 7
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* %3, align 4
  %156 = load i64, i64* @SYS_RES_IRQ, align 8
  %157 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %158 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %157, i32 0, i32 7
  %159 = load i32, i32* @RF_ACTIVE, align 4
  %160 = load i32, i32* @RF_SHAREABLE, align 4
  %161 = or i32 %159, %160
  %162 = call i8* @bus_alloc_resource_any(i32 %155, i64 %156, i64* %158, i32 %161)
  %163 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %164 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %163, i32 0, i32 6
  store i8* %162, i8** %164, align 8
  %165 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %166 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %165, i32 0, i32 6
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %140
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @device_printf(i32 %170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %334

172:                                              ; preds = %140
  %173 = load i32, i32* %3, align 4
  %174 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %175 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %174, i32 0, i32 6
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* @INTR_MPSAFE, align 4
  %178 = load i32, i32* @m3_intr, align 4
  %179 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %180 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %181 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %180, i32 0, i32 8
  %182 = call i64 @snd_setup_intr(i32 %173, i8* %176, i32 %177, i32 %178, %struct.sc_info* %179, i64* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %172
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @device_printf(i32 %185, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %334

187:                                              ; preds = %172
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @M3_BUFSIZE_MIN, align 4
  %190 = load i32, i32* @M3_BUFSIZE_DEFAULT, align 4
  %191 = load i32, i32* @M3_BUFSIZE_MAX, align 4
  %192 = call i32 @pcm_getbuffersize(i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %194 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %193, i32 0, i32 10
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @bus_get_dma_tag(i32 %195)
  %197 = load i32, i32* @M3_MAXADDR, align 4
  %198 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %199 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %200 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %203 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %202, i32 0, i32 3
  %204 = call i64 @bus_dma_tag_create(i32 %196, i32 2, i32 0, i32 %197, i32 %198, i32* null, i32* null, i32 %201, i32 1, i32 262143, i32 0, i32* null, i32* null, i64* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %187
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @device_printf(i32 %207, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %334

209:                                              ; preds = %187
  %210 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %211 = call i32 @M3_LOCK(%struct.sc_info* %210)
  %212 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %213 = call i32 @m3_power(%struct.sc_info* %212, i32 0)
  %214 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %215 = call i32 @m3_init(%struct.sc_info* %214)
  store i32 %215, i32* %9, align 4
  %216 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %217 = call i32 @M3_UNLOCK(%struct.sc_info* %216)
  %218 = load i32, i32* %9, align 4
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %223

220:                                              ; preds = %209
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @device_printf(i32 %221, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %334

223:                                              ; preds = %209
  %224 = load i32, i32* %3, align 4
  %225 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %226 = load i32, i32* @m3_codec, align 4
  %227 = call %struct.ac97_info* @AC97_CREATE(i32 %224, %struct.sc_info* %225, i32 %226)
  store %struct.ac97_info* %227, %struct.ac97_info** %5, align 8
  %228 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %229 = icmp eq %struct.ac97_info* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %223
  %231 = load i32, i32* %3, align 4
  %232 = call i32 @device_printf(i32 %231, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %334

233:                                              ; preds = %223
  %234 = load i32, i32* %3, align 4
  %235 = call i32 (...) @ac97_getmixerclass()
  %236 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %237 = call i64 @mixer_init(i32 %234, i32 %235, %struct.ac97_info* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load i32, i32* %3, align 4
  %241 = call i32 @device_printf(i32 %240, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %334

242:                                              ; preds = %233
  %243 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %244 = call i32 @m3_enable_ints(%struct.sc_info* %243)
  %245 = load i32, i32* %3, align 4
  %246 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %12, align 4
  %249 = call i64 @pcm_register(i32 %245, %struct.sc_info* %246, i32 %247, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %242
  %252 = load i32, i32* %3, align 4
  %253 = call i32 @device_printf(i32 %252, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %334

254:                                              ; preds = %242
  store i32 0, i32* %9, align 4
  br label %255

255:                                              ; preds = %269, %254
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %11, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %272

259:                                              ; preds = %255
  %260 = load i32, i32* %3, align 4
  %261 = load i32, i32* @PCMDIR_PLAY, align 4
  %262 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %263 = call i64 @pcm_addchan(i32 %260, i32 %261, i32* @m3_pch_class, %struct.sc_info* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load i32, i32* %3, align 4
  %267 = call i32 @device_printf(i32 %266, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %334

268:                                              ; preds = %259
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %9, align 4
  br label %255

272:                                              ; preds = %255
  store i32 0, i32* %9, align 4
  br label %273

273:                                              ; preds = %287, %272
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %12, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %273
  %278 = load i32, i32* %3, align 4
  %279 = load i32, i32* @PCMDIR_REC, align 4
  %280 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %281 = call i64 @pcm_addchan(i32 %278, i32 %279, i32* @m3_rch_class, %struct.sc_info* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %277
  %284 = load i32, i32* %3, align 4
  %285 = call i32 @device_printf(i32 %284, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %334

286:                                              ; preds = %277
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  br label %273

290:                                              ; preds = %273
  %291 = load i32, i32* @SND_STATUSLEN, align 4
  %292 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %293 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @SYS_RES_IOPORT, align 8
  %296 = icmp eq i64 %294, %295
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %299 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %300 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %299, i32 0, i32 4
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @rman_get_start(i8* %301)
  %303 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %304 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %303, i32 0, i32 6
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @rman_get_start(i8* %305)
  %307 = load i32, i32* @snd_maestro3, align 4
  %308 = call i32 @PCM_KLDSTRING(i32 %307)
  %309 = call i32 @snprintf(i8* %17, i32 %291, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %298, i32 %302, i32 %306, i32 %308)
  %310 = load i32, i32* %3, align 4
  %311 = call i64 @pcm_setstatus(i32 %310, i8* %17)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %290
  %314 = load i32, i32* %3, align 4
  %315 = call i32 @device_printf(i32 %314, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %334

316:                                              ; preds = %290
  %317 = load i32, i32* %3, align 4
  %318 = call i32 @mixer_hwvol_init(i32 %317)
  %319 = load i32, i32* @REV_B_CODE_MEMORY_LENGTH, align 4
  %320 = load i32, i32* @REV_B_DATA_MEMORY_LENGTH, align 4
  %321 = add nsw i32 %319, %320
  %322 = sext i32 %321 to i64
  %323 = mul i64 4, %322
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %10, align 4
  %325 = load i32, i32* %10, align 4
  %326 = load i32, i32* @M_DEVBUF, align 4
  %327 = load i32, i32* @M_WAITOK, align 4
  %328 = load i32, i32* @M_ZERO, align 4
  %329 = or i32 %327, %328
  %330 = call %struct.sc_info* @malloc(i32 %325, i32 %326, i32 %329)
  %331 = bitcast %struct.sc_info* %330 to i32*
  %332 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %333 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %332, i32 0, i32 9
  store i32* %331, i32** %333, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %411

334:                                              ; preds = %313, %283, %265, %251, %239, %230, %220, %206, %184, %169, %137
  %335 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %336 = icmp ne %struct.ac97_info* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %339 = call i32 @ac97_destroy(%struct.ac97_info* %338)
  br label %340

340:                                              ; preds = %337, %334
  %341 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %342 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %341, i32 0, i32 8
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %340
  %346 = load i32, i32* %3, align 4
  %347 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %348 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %347, i32 0, i32 6
  %349 = load i8*, i8** %348, align 8
  %350 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %351 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %350, i32 0, i32 8
  %352 = load i64, i64* %351, align 8
  %353 = call i32 @bus_teardown_intr(i32 %346, i8* %349, i64 %352)
  br label %354

354:                                              ; preds = %345, %340
  %355 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %356 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %355, i32 0, i32 6
  %357 = load i8*, i8** %356, align 8
  %358 = icmp ne i8* %357, null
  br i1 %358, label %359, label %369

359:                                              ; preds = %354
  %360 = load i32, i32* %3, align 4
  %361 = load i64, i64* @SYS_RES_IRQ, align 8
  %362 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %363 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %362, i32 0, i32 7
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %366 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %365, i32 0, i32 6
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @bus_release_resource(i32 %360, i64 %361, i64 %364, i8* %367)
  br label %369

369:                                              ; preds = %359, %354
  %370 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %371 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %370, i32 0, i32 4
  %372 = load i8*, i8** %371, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %386

374:                                              ; preds = %369
  %375 = load i32, i32* %3, align 4
  %376 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %377 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %380 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %379, i32 0, i32 5
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %383 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %382, i32 0, i32 4
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @bus_release_resource(i32 %375, i64 %378, i64 %381, i8* %384)
  br label %386

386:                                              ; preds = %374, %369
  %387 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %388 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %386
  %392 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %393 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %392, i32 0, i32 3
  %394 = load i64, i64* %393, align 8
  %395 = call i32 @bus_dma_tag_destroy(i64 %394)
  br label %396

396:                                              ; preds = %391, %386
  %397 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %398 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %397, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %396
  %402 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %403 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = call i32 @snd_mtxfree(i64 %404)
  br label %406

406:                                              ; preds = %401, %396
  %407 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %408 = load i32, i32* @M_DEVBUF, align 4
  %409 = call i32 @free(%struct.sc_info* %407, i32 %408)
  %410 = load i32, i32* @ENXIO, align 4
  store i32 %410, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %411

411:                                              ; preds = %406, %316
  %412 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %412)
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @M3_DEBUG(i32, i8*) #2

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i64 @pci_get_devid(i32) #2

declare dso_local i64 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i64 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i64, i64*, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @rman_get_bustag(i8*) #2

declare dso_local i32 @rman_get_bushandle(i8*) #2

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.sc_info*, i64*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @M3_LOCK(%struct.sc_info*) #2

declare dso_local i32 @m3_power(%struct.sc_info*, i32) #2

declare dso_local i32 @m3_init(%struct.sc_info*) #2

declare dso_local i32 @M3_UNLOCK(%struct.sc_info*) #2

declare dso_local %struct.ac97_info* @AC97_CREATE(i32, %struct.sc_info*, i32) #2

declare dso_local i64 @mixer_init(i32, i32, %struct.ac97_info*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i32 @m3_enable_ints(%struct.sc_info*) #2

declare dso_local i64 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i64 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i8*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @mixer_hwvol_init(i32) #2

declare dso_local i32 @ac97_destroy(%struct.ac97_info*) #2

declare dso_local i32 @bus_teardown_intr(i32, i8*, i64) #2

declare dso_local i32 @bus_release_resource(i32, i64, i64, i8*) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

declare dso_local i32 @snd_mtxfree(i64) #2

declare dso_local i32 @free(%struct.sc_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
