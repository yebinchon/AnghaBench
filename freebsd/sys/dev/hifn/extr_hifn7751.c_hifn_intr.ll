; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.hifn_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hifn_command**, i32, i32, i32, i32, i32, %struct.hifn_dma* }
%struct.hifn_command = type { i32 }
%struct.hifn_dma = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32**, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@HIFN_1_DMA_CSR = common dso_local global i32 0, align 4
@HIFN_HAS_PUBLIC = common dso_local global i32 0, align 4
@HIFN_DMACSR_PUBDONE = common dso_local global i32 0, align 4
@HIFN_1_PUB_STATUS = common dso_local global i32 0, align 4
@HIFN_PUBSTS_DONE = common dso_local global i32 0, align 4
@HIFN_DMACSR_D_OVER = common dso_local global i32 0, align 4
@HIFN_DMACSR_R_OVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"overrun %x\0A\00", align 1
@HIFN_IS_7811 = common dso_local global i32 0, align 4
@HIFN_DMACSR_ILLR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"illegal read\0A\00", align 1
@HIFN_DMACSR_ILLW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"illegal write\0A\00", align 1
@HIFN_DMACSR_C_ABORT = common dso_local global i32 0, align 4
@HIFN_DMACSR_S_ABORT = common dso_local global i32 0, align 4
@HIFN_DMACSR_D_ABORT = common dso_local global i32 0, align 4
@HIFN_DMACSR_R_ABORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"abort, resetting.\0A\00", align 1
@hifnstats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@HIFN_DMACSR_C_WAIT = common dso_local global i32 0, align 4
@HIFN_DMAIER_C_WAIT = common dso_local global i32 0, align 4
@HIFN_1_DMA_IER = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@HIFN_D_VALID = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@HIFN_D_RES_RSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"hifn_intr: null command slot %u\00", align 1
@HIFN_BASE_CMD_MAC = common dso_local global i32 0, align 4
@HIFN_D_SRC_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_CMD_RSIZE = common dso_local global i32 0, align 4
@CRYPTO_SYMQ = common dso_local global i32 0, align 4
@CRYPTO_ASYMQ = common dso_local global i32 0, align 4
@hifn_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hifn_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca %struct.hifn_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hifn_command*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.hifn_softc*
  store %struct.hifn_softc* %13, %struct.hifn_softc** %3, align 8
  %14 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %15 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %16 = call i32 @READ_REG_1(%struct.hifn_softc* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %19 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %389

24:                                               ; preds = %1
  %25 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %26 = call i32 @HIFN_LOCK(%struct.hifn_softc* %25)
  %27 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %28 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %27, i32 0, i32 18
  %29 = load %struct.hifn_dma*, %struct.hifn_dma** %28, align 8
  store %struct.hifn_dma* %29, %struct.hifn_dma** %4, align 8
  %30 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %31 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %34 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  %37 = call i32 @WRITE_REG_1(%struct.hifn_softc* %30, i32 %31, i32 %36)
  %38 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %39 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HIFN_HAS_PUBLIC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %24
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @HIFN_DMACSR_PUBDONE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %51 = load i32, i32* @HIFN_1_PUB_STATUS, align 4
  %52 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %53 = load i32, i32* @HIFN_1_PUB_STATUS, align 4
  %54 = call i32 @READ_REG_1(%struct.hifn_softc* %52, i32 %53)
  %55 = load i32, i32* @HIFN_PUBSTS_DONE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @WRITE_REG_1(%struct.hifn_softc* %50, i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %49, %44, %24
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @HIFN_DMACSR_D_OVER, align 4
  %61 = load i32, i32* @HIFN_DMACSR_R_OVER, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %68 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66, %58
  %73 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %74 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @HIFN_IS_7811, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @HIFN_DMACSR_ILLR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %86 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @HIFN_DMACSR_ILLW, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %96 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %89
  br label %100

100:                                              ; preds = %99, %72
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @HIFN_DMACSR_C_ABORT, align 4
  %103 = load i32, i32* @HIFN_DMACSR_S_ABORT, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @HIFN_DMACSR_D_ABORT, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @HIFN_DMACSR_R_ABORT, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %101, %108
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %100
  %113 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %114 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 1), align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 1), align 4
  %119 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %120 = call i32 @hifn_abort(%struct.hifn_softc* %119)
  %121 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %122 = call i32 @HIFN_UNLOCK(%struct.hifn_softc* %121)
  br label %389

123:                                              ; preds = %100
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @HIFN_DMACSR_C_WAIT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %130 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load i32, i32* @HIFN_DMAIER_C_WAIT, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %137 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %141 = load i32, i32* @HIFN_1_DMA_IER, align 4
  %142 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %143 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @WRITE_REG_1(%struct.hifn_softc* %140, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %133, %128, %123
  %147 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %148 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %7, align 4
  %150 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %151 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %243, %146
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %244

156:                                              ; preds = %153
  %157 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %160 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @HIFN_RESR_SYNC(%struct.hifn_softc* %157, i32 %158, i32 %161)
  %163 = load %struct.hifn_dma*, %struct.hifn_dma** %4, align 8
  %164 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %163, i32 0, i32 3
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @HIFN_D_VALID, align 4
  %172 = call i32 @htole32(i32 %171)
  %173 = and i32 %170, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %156
  %176 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %179 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @HIFN_RESR_SYNC(%struct.hifn_softc* %176, i32 %177, i32 %180)
  br label %244

182:                                              ; preds = %156
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @HIFN_D_RES_RSIZE, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %236

186:                                              ; preds = %182
  store i32* null, i32** %10, align 8
  %187 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %190 = call i32 @HIFN_RES_SYNC(%struct.hifn_softc* %187, i32 %188, i32 %189)
  %191 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %192 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %191, i32 0, i32 12
  %193 = load %struct.hifn_command**, %struct.hifn_command*** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.hifn_command*, %struct.hifn_command** %193, i64 %195
  %197 = load %struct.hifn_command*, %struct.hifn_command** %196, align 8
  store %struct.hifn_command* %197, %struct.hifn_command** %9, align 8
  %198 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %199 = icmp ne %struct.hifn_command* %198, null
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 @KASSERT(i32 %200, i8* %203)
  %205 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %206 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %205, i32 0, i32 12
  %207 = load %struct.hifn_command**, %struct.hifn_command*** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.hifn_command*, %struct.hifn_command** %207, i64 %209
  store %struct.hifn_command* null, %struct.hifn_command** %210, align 8
  %211 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %212 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @HIFN_BASE_CMD_MAC, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %186
  %218 = load %struct.hifn_dma*, %struct.hifn_dma** %4, align 8
  %219 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %218, i32 0, i32 2
  %220 = load i32**, i32*** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  store i32* %224, i32** %10, align 8
  %225 = load i32*, i32** %10, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 12
  store i32* %226, i32** %10, align 8
  br label %227

227:                                              ; preds = %217, %186
  %228 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %229 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %230 = load i32*, i32** %10, align 8
  %231 = call i32 @hifn_callback(%struct.hifn_softc* %228, %struct.hifn_command* %229, i32* %230)
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 0), align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 0), align 4
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %227, %182
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* @HIFN_D_RES_RSIZE, align 4
  %240 = add nsw i32 %239, 1
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i32 0, i32* %7, align 4
  br label %243

243:                                              ; preds = %242, %236
  br label %153

244:                                              ; preds = %175, %153
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %247 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %250 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %249, i32 0, i32 6
  store i32 %248, i32* %250, align 8
  %251 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %252 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  store i32 %253, i32* %7, align 4
  %254 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %255 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %291, %244
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %296

260:                                              ; preds = %257
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @HIFN_D_SRC_RSIZE, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  store i32 0, i32* %7, align 4
  br label %265

265:                                              ; preds = %264, %260
  %266 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %269 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @HIFN_SRCR_SYNC(%struct.hifn_softc* %266, i32 %267, i32 %270)
  %272 = load %struct.hifn_dma*, %struct.hifn_dma** %4, align 8
  %273 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %272, i32 0, i32 1
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @HIFN_D_VALID, align 4
  %281 = call i32 @htole32(i32 %280)
  %282 = and i32 %279, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %265
  %285 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %288 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %289 = or i32 %287, %288
  %290 = call i32 @HIFN_SRCR_SYNC(%struct.hifn_softc* %285, i32 %286, i32 %289)
  br label %296

291:                                              ; preds = %265
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %7, align 4
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %8, align 4
  br label %257

296:                                              ; preds = %284, %257
  %297 = load i32, i32* %7, align 4
  %298 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %299 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %298, i32 0, i32 2
  store i32 %297, i32* %299, align 8
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %302 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %301, i32 0, i32 5
  store i32 %300, i32* %302, align 4
  %303 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %304 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %7, align 4
  %306 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %307 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  store i32 %308, i32* %8, align 4
  br label %309

309:                                              ; preds = %356, %296
  %310 = load i32, i32* %8, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %357

312:                                              ; preds = %309
  %313 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %316 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %317 = or i32 %315, %316
  %318 = call i32 @HIFN_CMDR_SYNC(%struct.hifn_softc* %313, i32 %314, i32 %317)
  %319 = load %struct.hifn_dma*, %struct.hifn_dma** %4, align 8
  %320 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %319, i32 0, i32 0
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @HIFN_D_VALID, align 4
  %328 = call i32 @htole32(i32 %327)
  %329 = and i32 %326, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %312
  %332 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %335 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %336 = or i32 %334, %335
  %337 = call i32 @HIFN_CMDR_SYNC(%struct.hifn_softc* %332, i32 %333, i32 %336)
  br label %357

338:                                              ; preds = %312
  %339 = load i32, i32* %7, align 4
  %340 = load i32, i32* @HIFN_D_CMD_RSIZE, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %338
  %343 = load i32, i32* %8, align 4
  %344 = add nsw i32 %343, -1
  store i32 %344, i32* %8, align 4
  %345 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %348 = call i32 @HIFN_CMD_SYNC(%struct.hifn_softc* %345, i32 %346, i32 %347)
  br label %349

349:                                              ; preds = %342, %338
  %350 = load i32, i32* %7, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %7, align 4
  %352 = load i32, i32* @HIFN_D_CMD_RSIZE, align 4
  %353 = add nsw i32 %352, 1
  %354 = icmp eq i32 %351, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  store i32 0, i32* %7, align 4
  br label %356

356:                                              ; preds = %355, %349
  br label %309

357:                                              ; preds = %331, %309
  %358 = load i32, i32* %7, align 4
  %359 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %360 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %359, i32 0, i32 1
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* %8, align 4
  %362 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %363 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %362, i32 0, i32 4
  store i32 %361, i32* %363, align 8
  %364 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %365 = call i32 @HIFN_UNLOCK(%struct.hifn_softc* %364)
  %366 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %367 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %366, i32 0, i32 8
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %389

370:                                              ; preds = %357
  %371 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %372 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %371, i32 0, i32 8
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @CRYPTO_SYMQ, align 4
  %375 = load i32, i32* @CRYPTO_ASYMQ, align 4
  %376 = or i32 %374, %375
  %377 = and i32 %373, %376
  store i32 %377, i32* %11, align 4
  %378 = load i32, i32* %11, align 4
  %379 = xor i32 %378, -1
  %380 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %381 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %380, i32 0, i32 8
  %382 = load i32, i32* %381, align 8
  %383 = and i32 %382, %379
  store i32 %383, i32* %381, align 8
  %384 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %385 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %384, i32 0, i32 9
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* %11, align 4
  %388 = call i32 @crypto_unblock(i32 %386, i32 %387)
  br label %389

389:                                              ; preds = %23, %112, %370, %357
  ret void
}

declare dso_local i32 @READ_REG_1(%struct.hifn_softc*, i32) #1

declare dso_local i32 @HIFN_LOCK(%struct.hifn_softc*) #1

declare dso_local i32 @WRITE_REG_1(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @hifn_abort(%struct.hifn_softc*) #1

declare dso_local i32 @HIFN_UNLOCK(%struct.hifn_softc*) #1

declare dso_local i32 @HIFN_RESR_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @HIFN_RES_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hifn_callback(%struct.hifn_softc*, %struct.hifn_command*, i32*) #1

declare dso_local i32 @HIFN_SRCR_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @HIFN_CMDR_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @HIFN_CMD_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @crypto_unblock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
