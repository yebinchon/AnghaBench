; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { i64, i8*, %struct.aic_softc* }
%struct.aic_softc = type { i8*, i32, i32, i32*, i32*, i64, i32, i32, i32*, i32*, i64 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't find DMA controller.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't alloc virtual DMA channel.\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"aic softc\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Can't create mtx.\0A\00", align 1
@aic_spec = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@AICDR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Can't setup sound buffer.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Can't configure clocks.\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Can't configure AIC.\0A\00", align 1
@SD_F_MPSAFE = common dso_local global i32 0, align 4
@aic_intr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"Can't setup xDMA interrupt handler.\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Can't register pcm.\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@aicchan_class = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"at %s\00", align 1
@aicmixer_class = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"internal_codec\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_pcm_internal_codec = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"use internal audio codec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @aic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sc_pcminfo*, align 8
  %7 = alloca %struct.aic_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @SND_STATUSLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @malloc(i32 72, i32 %14, i32 %17)
  %19 = bitcast i8* %18 to %struct.aic_softc*
  store %struct.aic_softc* %19, %struct.aic_softc** %7, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %22 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %24 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  %25 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %26 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %25, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %28 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32* @xdma_ofw_get(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %32 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %31, i32 0, i32 9
  store i32* %30, i32** %32, align 8
  %33 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %34 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @device_printf(i8* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

41:                                               ; preds = %1
  %42 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %43 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %42, i32 0, i32 9
  %44 = load i32*, i32** %43, align 8
  %45 = call i32* @xdma_channel_alloc(i32* %44, i32 0)
  %46 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %47 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %49 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @device_printf(i8* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

56:                                               ; preds = %41
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @device_get_nameunit(i8* %57)
  %59 = call i32* @snd_mtxcreate(i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %61 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %60, i32 0, i32 8
  store i32* %59, i32** %61, align 8
  %62 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %63 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @device_printf(i8* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

70:                                               ; preds = %56
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* @aic_spec, align 4
  %73 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %74 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @bus_alloc_resources(i8* %71, i32 %72, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @device_printf(i8* %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* @ENXIO, align 4
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

82:                                               ; preds = %70
  %83 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %84 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rman_get_bustag(i32 %87)
  %89 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %90 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %92 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @rman_get_bushandle(i32 %95)
  %97 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %98 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %100 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @rman_get_start(i32 %103)
  %105 = load i64, i64* @AICDR, align 8
  %106 = add nsw i64 %104, %105
  %107 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %108 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %107, i32 0, i32 5
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* @M_DEVBUF, align 4
  %110 = load i32, i32* @M_WAITOK, align 4
  %111 = load i32, i32* @M_ZERO, align 4
  %112 = or i32 %110, %111
  %113 = call i8* @malloc(i32 24, i32 %109, i32 %112)
  %114 = bitcast i8* %113 to %struct.sc_pcminfo*
  store %struct.sc_pcminfo* %114, %struct.sc_pcminfo** %6, align 8
  %115 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %116 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %117 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %116, i32 0, i32 2
  store %struct.aic_softc* %115, %struct.aic_softc** %117, align 8
  %118 = load i8*, i8** %3, align 8
  %119 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %120 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %122 = call i32 @aic_dma_setup(%struct.aic_softc* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %82
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @device_printf(i8* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

129:                                              ; preds = %82
  %130 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %131 = call i32 @aic_configure_clocks(%struct.aic_softc* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i8*, i8** %3, align 8
  %136 = call i32 @device_printf(i8* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %137 = load i32, i32* @ENXIO, align 4
  store i32 %137, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

138:                                              ; preds = %129
  %139 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %140 = call i32 @aic_configure(%struct.aic_softc* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i8*, i8** %3, align 8
  %145 = call i32 @device_printf(i8* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %146 = load i32, i32* @ENXIO, align 4
  store i32 %146, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

147:                                              ; preds = %138
  %148 = load i8*, i8** %3, align 8
  %149 = load i8*, i8** %3, align 8
  %150 = call i32 @pcm_getflags(i8* %149)
  %151 = load i32, i32* @SD_F_MPSAFE, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @pcm_setflags(i8* %148, i32 %152)
  %154 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %155 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @aic_intr, align 4
  %158 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %159 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %160 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %159, i32 0, i32 2
  %161 = call i32 @xdma_setup_intr(i32* %156, i32 %157, %struct.sc_pcminfo* %158, i32* %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %147
  %165 = load %struct.aic_softc*, %struct.aic_softc** %7, align 8
  %166 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @device_printf(i8* %167, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %169 = load i32, i32* @ENXIO, align 4
  store i32 %169, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

170:                                              ; preds = %147
  %171 = load i8*, i8** %3, align 8
  %172 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %173 = call i32 @pcm_register(i8* %171, %struct.sc_pcminfo* %172, i32 1, i32 0)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load i8*, i8** %3, align 8
  %178 = call i32 @device_printf(i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %179 = load i32, i32* @ENXIO, align 4
  store i32 %179, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

180:                                              ; preds = %170
  %181 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %182 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  %183 = load i8*, i8** %3, align 8
  %184 = load i32, i32* @PCMDIR_PLAY, align 4
  %185 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %186 = call i32 @pcm_addchan(i8* %183, i32 %184, i32* @aicchan_class, %struct.sc_pcminfo* %185)
  %187 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %188 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = load i32, i32* @SND_STATUSLEN, align 4
  %192 = load i8*, i8** %3, align 8
  %193 = call i8* @ofw_bus_get_name(i8* %192)
  %194 = call i32 @snprintf(i8* %13, i32 %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %193)
  %195 = load i8*, i8** %3, align 8
  %196 = call i32 @pcm_setstatus(i8* %195, i8* %13)
  %197 = load i8*, i8** %3, align 8
  %198 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %199 = call i32 @mixer_init(i8* %197, i32* @aicmixer_class, %struct.sc_pcminfo* %198)
  %200 = load i8*, i8** %3, align 8
  %201 = call i32 @device_get_sysctl_ctx(i8* %200)
  %202 = load i8*, i8** %3, align 8
  %203 = call i32 @device_get_sysctl_tree(i8* %202)
  %204 = call i32 @SYSCTL_CHILDREN(i32 %203)
  %205 = load i32, i32* @OID_AUTO, align 4
  %206 = load i32, i32* @CTLTYPE_INT, align 4
  %207 = load i32, i32* @CTLFLAG_RW, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %6, align 8
  %210 = load i32, i32* @sysctl_hw_pcm_internal_codec, align 4
  %211 = call i32 @SYSCTL_ADD_PROC(i32 %201, i32 %204, i32 %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %208, %struct.sc_pcminfo* %209, i32 0, i32 %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %212

212:                                              ; preds = %180, %176, %164, %143, %134, %125, %78, %66, %52, %37
  %213 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %213)
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32, i32, i32) #2

declare dso_local i32* @xdma_ofw_get(i8*, i8*) #2

declare dso_local i32 @device_printf(i8*, i8*) #2

declare dso_local i32* @xdma_channel_alloc(i32*, i32) #2

declare dso_local i32* @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i8*) #2

declare dso_local i64 @bus_alloc_resources(i8*, i32, i32*) #2

declare dso_local i32 @rman_get_bustag(i32) #2

declare dso_local i32 @rman_get_bushandle(i32) #2

declare dso_local i64 @rman_get_start(i32) #2

declare dso_local i32 @aic_dma_setup(%struct.aic_softc*) #2

declare dso_local i32 @aic_configure_clocks(%struct.aic_softc*) #2

declare dso_local i32 @aic_configure(%struct.aic_softc*) #2

declare dso_local i32 @pcm_setflags(i8*, i32) #2

declare dso_local i32 @pcm_getflags(i8*) #2

declare dso_local i32 @xdma_setup_intr(i32*, i32, %struct.sc_pcminfo*, i32*) #2

declare dso_local i32 @pcm_register(i8*, %struct.sc_pcminfo*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i8*, i32, i32*, %struct.sc_pcminfo*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @ofw_bus_get_name(i8*) #2

declare dso_local i32 @pcm_setstatus(i8*, i8*) #2

declare dso_local i32 @mixer_init(i8*, i32*, %struct.sc_pcminfo*) #2

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.sc_pcminfo*, i32, i32, i8*, i8*) #2

declare dso_local i32 @device_get_sysctl_ctx(i8*) #2

declare dso_local i32 @SYSCTL_CHILDREN(i32) #2

declare dso_local i32 @device_get_sysctl_tree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
