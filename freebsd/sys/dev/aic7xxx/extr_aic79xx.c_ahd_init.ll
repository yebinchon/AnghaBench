; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i32, i32, i32*, i32, i32, %struct.hardware_scb*, %struct.TYPE_2__, %struct.TYPE_2__*, %struct.target_cmd*, %struct.ahd_completion*, i32, i32, i32, i32* }
%struct.hardware_scb = type { i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.target_cmd = type { i32 }
%struct.ahd_completion = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Hardware SCB size is incorrect\00", align 1
@AHD_INITIATORROLE = common dso_local global i32 0, align 4
@AHD_TMODE_ENABLE = common dso_local global i32 0, align 4
@AHD_TARGETMODE = common dso_local global i32 0, align 4
@AHD_SCB_MAX = common dso_local global i32 0, align 4
@AHD_TMODE_CMDS = common dso_local global i32 0, align 4
@AHD_PKT_BITBUCKET_BUG = common dso_local global i32 0, align 4
@PKT_OVERRUN_BUFSIZE = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@ahd_dmamap_cb = common dso_local global i32 0, align 4
@AHD_QOUT_SIZE = common dso_local global i64 0, align 8
@AHD_RESET_BUS_A = common dso_local global i32 0, align 4
@AHD_CURRENT_SENSING = common dso_local global i32 0, align 4
@FLXADDR_ROMSTAT_CURSENSECTL = common dso_local global i32 0, align 4
@CURSENSE_ENB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: current sensing timeout 1\0A\00", align 1
@FLX_FSTAT_BUSY = common dso_local global i32 0, align 4
@FLXADDR_FLEXSTAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: current sensing timeout 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: Timedout during current-sensing test\0A\00", align 1
@FLXADDR_CURRENT_STAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: current sensing timeout 3\0A\00", align 1
@FLX_CSTAT_MASK = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: %s Channel %s\0A\00", align 1
@channel_strings = common dso_local global i8** null, align 8
@termstat_strings = common dso_local global i8** null, align 8
@FLX_CSTAT_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [98 x i8] c"%s: WARNING. Termination is not configured correctly.\0A%s: WARNING. SCSI bus operations may FAIL.\0A\00", align 1
@AHD_STAT_UPDATE_MS = common dso_local global i32 0, align 4
@ahd_stat_timer = common dso_local global i32 0, align 4
@AHD_39BIT_ADDRESSING = common dso_local global i32 0, align 4
@AHD_DEBUG_SEQUENCER = common dso_local global i32 0, align 4
@AHD_MAXTRANSFER_SIZE = common dso_local global i32 0, align 4
@AHD_NSEG = common dso_local global i32 0, align 4
@AHD_SEQUENCER_DEBUG = common dso_local global i32 0, align 4
@AHD_SHOW_TERMCTL = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_init(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %15 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %16 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = call i32 @ahd_probe_stack_size(%struct.ahd_softc* %17)
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call i32* @malloc(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 16
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %32, i32 0, i32 16
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %2, align 4
  br label %384

38:                                               ; preds = %1
  %39 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @AHD_INITIATORROLE, align 4
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @AHD_TMODE_ENABLE, align 4
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 1, %48
  %50 = and i32 %45, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  %53 = load i32, i32* @AHD_TARGETMODE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %38
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @AHD_SCB_MAX, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = add i64 %66, 4
  store i64 %67, i64* %6, align 8
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AHD_TARGETMODE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %59
  %75 = load i32, i32* @AHD_TMODE_CMDS, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %74, %59
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AHD_PKT_BITBUCKET_BUG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i64, i64* @PKT_OVERRUN_BUFSIZE, align 8
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %93, i32 0, i32 14
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %97 = add nsw i64 %96, 1
  %98 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %99 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %102, i32 0, i32 13
  %104 = call i64 @aic_dma_tag_create(%struct.ahd_softc* %92, i32 %95, i32 1, i64 %97, i64 %98, i32 %99, i32* null, i32* null, i64 %100, i32 1, i32 %101, i32 0, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %2, align 4
  br label %384

108:                                              ; preds = %91
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %110 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %118 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = bitcast i64* %119 to i8**
  %121 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %122 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %125 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %124, i32 0, i32 9
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = call i64 @aic_dmamem_alloc(%struct.ahd_softc* %113, i32 %116, i8** %120, i32 %123, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %108
  %130 = load i32, i32* @ENOMEM, align 4
  store i32 %130, i32* %2, align 4
  br label %384

131:                                              ; preds = %108
  %132 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %133 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %137 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %137, i32 0, i32 13
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %141 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %140, i32 0, i32 9
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %145 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load i32, i32* @ahd_dmamap_cb, align 4
  %150 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %151 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = call i32 @aic_dmamap_load(%struct.ahd_softc* %136, i32 %139, i32 %143, i64 %147, i64 %148, i32 %149, i64* %152, i32 0)
  %154 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %155 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %154, i32 0, i32 9
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.ahd_completion*
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %160 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %159, i32 0, i32 12
  store %struct.ahd_completion* %158, %struct.ahd_completion** %160, align 8
  %161 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %162 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %161, i32 0, i32 12
  %163 = load %struct.ahd_completion*, %struct.ahd_completion** %162, align 8
  %164 = load i64, i64* @AHD_QOUT_SIZE, align 8
  %165 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %163, i64 %164
  %166 = bitcast %struct.ahd_completion* %165 to i32*
  store i32* %166, i32** %4, align 8
  %167 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %168 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %167, i32 0, i32 9
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @AHD_QOUT_SIZE, align 8
  %172 = mul i64 %171, 4
  %173 = add i64 %170, %172
  store i64 %173, i64* %5, align 8
  %174 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %175 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @AHD_TARGETMODE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %131
  %181 = load i32*, i32** %4, align 8
  %182 = bitcast i32* %181 to %struct.target_cmd*
  %183 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %184 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %183, i32 0, i32 11
  store %struct.target_cmd* %182, %struct.target_cmd** %184, align 8
  %185 = load i32, i32* @AHD_TMODE_CMDS, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 4
  %188 = load i32*, i32** %4, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 %187
  store i32* %189, i32** %4, align 8
  %190 = load i32, i32* @AHD_TMODE_CMDS, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 4
  %193 = load i64, i64* %5, align 8
  %194 = add i64 %193, %192
  store i64 %194, i64* %5, align 8
  br label %195

195:                                              ; preds = %180, %131
  %196 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %197 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @AHD_PKT_BITBUCKET_BUG, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %195
  %203 = load i32*, i32** %4, align 8
  %204 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %205 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %204, i32 0, i32 5
  store i32* %203, i32** %205, align 8
  %206 = load i64, i64* @PKT_OVERRUN_BUFSIZE, align 8
  %207 = load i32*, i32** %4, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 %206
  store i32* %208, i32** %4, align 8
  %209 = load i64, i64* @PKT_OVERRUN_BUFSIZE, align 8
  %210 = load i64, i64* %5, align 8
  %211 = add nsw i64 %210, %209
  store i64 %211, i64* %5, align 8
  br label %212

212:                                              ; preds = %202, %195
  %213 = load i32*, i32** %4, align 8
  %214 = bitcast i32* %213 to %struct.hardware_scb*
  %215 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %216 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %215, i32 0, i32 8
  store %struct.hardware_scb* %214, %struct.hardware_scb** %216, align 8
  %217 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %218 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %217, i32 0, i32 9
  %219 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %220 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %219, i32 0, i32 10
  store %struct.TYPE_2__* %218, %struct.TYPE_2__** %220, align 8
  %221 = load i64, i64* %5, align 8
  %222 = call i32 @aic_htole32(i64 %221)
  %223 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %224 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %223, i32 0, i32 8
  %225 = load %struct.hardware_scb*, %struct.hardware_scb** %224, align 8
  %226 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %225, i32 0, i32 0
  store i32 %222, i32* %226, align 4
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %228 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  %231 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %232 = call i64 @ahd_init_scbdata(%struct.ahd_softc* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %212
  %235 = load i32, i32* @ENOMEM, align 4
  store i32 %235, i32* %2, align 4
  br label %384

236:                                              ; preds = %212
  %237 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %238 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @AHD_INITIATORROLE, align 4
  %241 = and i32 %239, %240
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %236
  %244 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %245 = xor i32 %244, -1
  %246 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %247 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %243, %236
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %252 = call i32 @ahd_platform_init(%struct.ahd_softc* %251)
  %253 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %254 = call i32 @ahd_chip_init(%struct.ahd_softc* %253)
  %255 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %256 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %257 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %258 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %255, i32 %256, i32 %257)
  %259 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %260 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @AHD_CURRENT_SENSING, align 4
  %263 = and i32 %261, %262
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %250
  br label %375

266:                                              ; preds = %250
  %267 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %268 = load i32, i32* @FLXADDR_ROMSTAT_CURSENSECTL, align 4
  %269 = load i32, i32* @CURSENSE_ENB, align 4
  %270 = call i32 @ahd_write_flexport(%struct.ahd_softc* %267, i32 %268, i32 %269)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %275 = call i8* @ahd_name(%struct.ahd_softc* %274)
  %276 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %275)
  br label %375

277:                                              ; preds = %266
  store i32 20, i32* %7, align 4
  %278 = load i32, i32* @FLX_FSTAT_BUSY, align 4
  store i32 %278, i32* %11, align 4
  br label %279

279:                                              ; preds = %300, %277
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @FLX_FSTAT_BUSY, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %279
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br label %287

287:                                              ; preds = %284, %279
  %288 = phi i1 [ false, %279 ], [ %286, %284 ]
  br i1 %288, label %289, label %303

289:                                              ; preds = %287
  %290 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %291 = load i32, i32* @FLXADDR_FLEXSTAT, align 4
  %292 = call i32 @ahd_read_flexport(%struct.ahd_softc* %290, i32 %291, i32* %11)
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %297 = call i8* @ahd_name(%struct.ahd_softc* %296)
  %298 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %297)
  br label %375

299:                                              ; preds = %289
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %7, align 4
  br label %279

303:                                              ; preds = %287
  %304 = load i32, i32* %7, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %308 = call i8* @ahd_name(%struct.ahd_softc* %307)
  %309 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %308)
  br label %375

310:                                              ; preds = %303
  %311 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %312 = load i32, i32* @FLXADDR_CURRENT_STAT, align 4
  %313 = call i32 @ahd_read_flexport(%struct.ahd_softc* %311, i32 %312, i32* %10)
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %310
  %317 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %318 = call i8* @ahd_name(%struct.ahd_softc* %317)
  %319 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %318)
  br label %375

320:                                              ; preds = %310
  %321 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %322 = load i32, i32* @FLXADDR_ROMSTAT_CURSENSECTL, align 4
  %323 = call i32 @ahd_write_flexport(%struct.ahd_softc* %321, i32 %322, i32 0)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %324

324:                                              ; preds = %357, %320
  %325 = load i32, i32* %7, align 4
  %326 = icmp slt i32 %325, 4
  br i1 %326, label %327, label %363

327:                                              ; preds = %324
  %328 = load i32, i32* %10, align 4
  %329 = load i32, i32* @FLX_CSTAT_MASK, align 4
  %330 = and i32 %328, %329
  store i32 %330, i32* %12, align 4
  %331 = load i32, i32* %12, align 4
  switch i32 %331, label %356 [
    i32 129, label %332
    i32 128, label %332
    i32 131, label %335
    i32 130, label %335
  ]

332:                                              ; preds = %327, %327
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %9, align 4
  br label %335

335:                                              ; preds = %327, %327, %332
  %336 = load i32, i32* %9, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = load i32, i32* @bootverbose, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  br label %356

342:                                              ; preds = %338, %335
  %343 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %344 = call i8* @ahd_name(%struct.ahd_softc* %343)
  %345 = load i8**, i8*** @channel_strings, align 8
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8*, i8** %345, i64 %347
  %349 = load i8*, i8** %348, align 8
  %350 = load i8**, i8*** @termstat_strings, align 8
  %351 = load i32, i32* %12, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8*, i8** %350, i64 %352
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %344, i8* %349, i8* %354)
  br label %356

356:                                              ; preds = %327, %342, %341
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %7, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %7, align 4
  %360 = load i32, i32* @FLX_CSTAT_SHIFT, align 4
  %361 = load i32, i32* %10, align 4
  %362 = ashr i32 %361, %360
  store i32 %362, i32* %10, align 4
  br label %324

363:                                              ; preds = %324
  %364 = load i32, i32* %9, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %374

366:                                              ; preds = %363
  %367 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %368 = call i8* @ahd_name(%struct.ahd_softc* %367)
  %369 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %370 = call i8* @ahd_name(%struct.ahd_softc* %369)
  %371 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.6, i64 0, i64 0), i8* %368, i8* %370)
  %372 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %373 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %372)
  br label %374

374:                                              ; preds = %366, %363
  br label %375

375:                                              ; preds = %374, %316, %306, %295, %273, %265
  %376 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %377 = call i32 @ahd_restart(%struct.ahd_softc* %376)
  %378 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %379 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %378, i32 0, i32 6
  %380 = load i32, i32* @AHD_STAT_UPDATE_MS, align 4
  %381 = load i32, i32* @ahd_stat_timer, align 4
  %382 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %383 = call i32 @aic_timer_reset(i32* %379, i32 %380, i32 %381, %struct.ahd_softc* %382)
  store i32 0, i32* %2, align 4
  br label %384

384:                                              ; preds = %375, %234, %129, %106, %36
  %385 = load i32, i32* %2, align 4
  ret i32 %385
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_probe_stack_size(%struct.ahd_softc*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @aic_dma_tag_create(%struct.ahd_softc*, i32, i32, i64, i64, i32, i32*, i32*, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @aic_dmamem_alloc(%struct.ahd_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @aic_dmamap_load(%struct.ahd_softc*, i32, i32, i64, i64, i32, i64*, i32) #1

declare dso_local i32 @aic_htole32(i64) #1

declare dso_local i64 @ahd_init_scbdata(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_platform_init(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_chip_init(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_write_flexport(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_read_flexport(%struct.ahd_softc*, i32, i32*) #1

declare dso_local i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_restart(%struct.ahd_softc*) #1

declare dso_local i32 @aic_timer_reset(i32*, i32, i32, %struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
