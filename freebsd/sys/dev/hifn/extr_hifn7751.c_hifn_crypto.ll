; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_crypto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hifn_softc = type { i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hifn_command**, %struct.hifn_dma* }
%struct.hifn_dma = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.hifn_command = type { i32, i32, i64, i64, i32, i32*, %struct.mbuf*, %struct.mbuf*, i32*, i32, i32, i32, i32 }
%struct.mbuf = type { i32, i32, %struct.mbuf*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cryptop = type { i32 }

@HIFN_D_CMD_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_RES_RSIZE = common dso_local global i64 0, align 8
@hifnstats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ERESTART = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@hifn_op_cb = common dso_local global i32 0, align 4
@CRYPTO_F_IOV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"hifn_crypto: dst_m initialized improperly\00", align 1
@M_PKTHDR = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@MINCLSIZE = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@HIFN_D_SRC_RSIZE = common dso_local global i64 0, align 8
@HIFN_D_DST_RSIZE = common dso_local global i64 0, align 8
@HIFN_D_VALID = common dso_local global i32 0, align 4
@HIFN_D_JUMP = common dso_local global i32 0, align 4
@HIFN_D_MASKDONEIRQ = common dso_local global i32 0, align 4
@HIFN_D_LAST = common dso_local global i32 0, align 4
@HIFN_DMAIER_C_WAIT = common dso_local global i32 0, align 4
@HIFN_1_DMA_IER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"hifn_crypto: command slot %u busy\00", align 1
@CRYPTO_HINT_MORE = common dso_local global i32 0, align 4
@hifn_maxbatch = common dso_local global i64 0, align 8
@HIFN_MAX_RESULT = common dso_local global i32 0, align 4
@HIFN_DMACSR_C_CTRL_ENA = common dso_local global i32 0, align 4
@HIFN_DMACSR_S_CTRL_ENA = common dso_local global i32 0, align 4
@HIFN_DMACSR_R_CTRL_ENA = common dso_local global i32 0, align 4
@HIFN_DMACSR_D_CTRL_ENA = common dso_local global i32 0, align 4
@HIFN_1_DMA_CSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"hifn_crypto: success with error %u\00", align 1
@hifn_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_softc*, %struct.hifn_command*, %struct.cryptop*, i32)* @hifn_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_crypto(%struct.hifn_softc* %0, %struct.hifn_command* %1, %struct.cryptop* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hifn_softc*, align 8
  %7 = alloca %struct.hifn_command*, align 8
  %8 = alloca %struct.cryptop*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hifn_dma*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mbuf*, align 8
  %19 = alloca %struct.mbuf*, align 8
  %20 = alloca %struct.mbuf*, align 8
  store %struct.hifn_softc* %0, %struct.hifn_softc** %6, align 8
  store %struct.hifn_command* %1, %struct.hifn_command** %7, align 8
  store %struct.cryptop* %2, %struct.cryptop** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %22 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %21, i32 0, i32 16
  %23 = load %struct.hifn_dma*, %struct.hifn_dma** %22, align 8
  store %struct.hifn_dma* %23, %struct.hifn_dma** %10, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %25 = call i32 @HIFN_LOCK(%struct.hifn_softc* %24)
  %26 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %27 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @HIFN_D_CMD_RSIZE, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %4
  %33 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %34 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  %37 = load i64, i64* @HIFN_D_RES_RSIZE, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32, %4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 10), align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 10), align 8
  %42 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %43 = call i32 @HIFN_UNLOCK(%struct.hifn_softc* %42)
  %44 = load i32, i32* @ERESTART, align 4
  store i32 %44, i32* %5, align 4
  br label %843

45:                                               ; preds = %32
  %46 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %47 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %50 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %51 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %50, i32 0, i32 5
  %52 = call i64 @bus_dmamap_create(i32 %48, i32 %49, i32** %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 6), align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 6), align 8
  %57 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %58 = call i32 @HIFN_UNLOCK(%struct.hifn_softc* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %5, align 4
  br label %843

60:                                               ; preds = %45
  %61 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %62 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %60
  %68 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %69 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %68, i32 0, i32 13
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %72 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %75 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %74, i32 0, i32 7
  %76 = load %struct.mbuf*, %struct.mbuf** %75, align 8
  %77 = load i32, i32* @hifn_op_cb, align 4
  %78 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %79 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %78, i32 0, i32 11
  %80 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %81 = call i64 @bus_dmamap_load_mbuf(i32 %70, i32* %73, %struct.mbuf* %76, i32 %77, i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %67
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 5), align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 5), align 4
  %86 = load i32, i32* @ENOMEM, align 4
  store i32 %86, i32* %15, align 4
  br label %832

87:                                               ; preds = %67
  br label %119

88:                                               ; preds = %60
  %89 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %90 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CRYPTO_F_IOV, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %88
  %96 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %97 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %100 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %103 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @hifn_op_cb, align 4
  %106 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %107 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %106, i32 0, i32 11
  %108 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %109 = call i64 @bus_dmamap_load_uio(i32 %98, i32* %101, i32 %104, i32 %105, i32* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %95
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 5), align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 5), align 4
  %114 = load i32, i32* @ENOMEM, align 4
  store i32 %114, i32* %15, align 4
  br label %832

115:                                              ; preds = %95
  br label %118

116:                                              ; preds = %88
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %15, align 4
  br label %832

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118, %87
  %120 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %121 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %120, i32 0, i32 11
  %122 = call i64 @hifn_dmamap_aligned(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %126 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 3
  %129 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %130 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %132 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %135 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 8
  br label %332

136:                                              ; preds = %119
  %137 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %138 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CRYPTO_F_IOV, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %15, align 4
  br label %803

145:                                              ; preds = %136
  %146 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %147 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %330

152:                                              ; preds = %145
  %153 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %154 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %153, i32 0, i32 6
  %155 = load %struct.mbuf*, %struct.mbuf** %154, align 8
  %156 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %157 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %156, i32 0, i32 7
  %158 = load %struct.mbuf*, %struct.mbuf** %157, align 8
  %159 = icmp eq %struct.mbuf* %155, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @KASSERT(i32 %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 9), align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 9), align 4
  %164 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %165 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %16, align 4
  %167 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %168 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %167, i32 0, i32 7
  %169 = load %struct.mbuf*, %struct.mbuf** %168, align 8
  %170 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @M_PKTHDR, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %152
  %176 = load i32, i32* @MHLEN, align 4
  store i32 %176, i32* %17, align 4
  %177 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %178 = load i32, i32* @M_NOWAIT, align 4
  %179 = load i32, i32* @MT_DATA, align 4
  %180 = call i32 @MGETHDR(%struct.mbuf* %177, i32 %178, i32 %179)
  %181 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %182 = icmp ne %struct.mbuf* %181, null
  br i1 %182, label %183, label %194

183:                                              ; preds = %175
  %184 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %185 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %186 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %185, i32 0, i32 7
  %187 = load %struct.mbuf*, %struct.mbuf** %186, align 8
  %188 = load i32, i32* @M_NOWAIT, align 4
  %189 = call i32 @m_dup_pkthdr(%struct.mbuf* %184, %struct.mbuf* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %183
  %192 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %193 = call i32 @m_free(%struct.mbuf* %192)
  store %struct.mbuf* null, %struct.mbuf** %19, align 8
  br label %194

194:                                              ; preds = %191, %183, %175
  br label %201

195:                                              ; preds = %152
  %196 = load i32, i32* @MLEN, align 4
  store i32 %196, i32* %17, align 4
  %197 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %198 = load i32, i32* @M_NOWAIT, align 4
  %199 = load i32, i32* @MT_DATA, align 4
  %200 = call i32 @MGET(%struct.mbuf* %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %195, %194
  %202 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %203 = icmp eq %struct.mbuf* %202, null
  br i1 %203, label %204, label %217

204:                                              ; preds = %201
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 8), align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 8), align 8
  %207 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %208 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  %212 = load i32, i32* @ERESTART, align 4
  br label %215

213:                                              ; preds = %204
  %214 = load i32, i32* @ENOMEM, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  store i32 %216, i32* %15, align 4
  br label %803

217:                                              ; preds = %201
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* @MINCLSIZE, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %243

221:                                              ; preds = %217
  %222 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %223 = load i32, i32* @M_NOWAIT, align 4
  %224 = call i32 @MCLGET(%struct.mbuf* %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %241, label %226

226:                                              ; preds = %221
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 7), align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 7), align 4
  %229 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %230 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = load i32, i32* @ERESTART, align 4
  br label %237

235:                                              ; preds = %226
  %236 = load i32, i32* @ENOMEM, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  store i32 %238, i32* %15, align 4
  %239 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %240 = call i32 @m_freem(%struct.mbuf* %239)
  br label %803

241:                                              ; preds = %221
  %242 = load i32, i32* @MCLBYTES, align 4
  store i32 %242, i32* %17, align 4
  br label %243

243:                                              ; preds = %241, %217
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %16, align 4
  %246 = sub nsw i32 %245, %244
  store i32 %246, i32* %16, align 4
  %247 = load i32, i32* %17, align 4
  %248 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %249 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %251 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  store i32 %247, i32* %252, align 8
  %253 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  store %struct.mbuf* %253, %struct.mbuf** %20, align 8
  br label %254

254:                                              ; preds = %309, %243
  %255 = load i32, i32* %16, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %326

257:                                              ; preds = %254
  %258 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %259 = load i32, i32* @M_NOWAIT, align 4
  %260 = load i32, i32* @MT_DATA, align 4
  %261 = call i32 @MGET(%struct.mbuf* %258, i32 %259, i32 %260)
  %262 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %263 = icmp eq %struct.mbuf* %262, null
  br i1 %263, label %264, label %279

264:                                              ; preds = %257
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 8), align 8
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 8), align 8
  %267 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %268 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %264
  %272 = load i32, i32* @ERESTART, align 4
  br label %275

273:                                              ; preds = %264
  %274 = load i32, i32* @ENOMEM, align 4
  br label %275

275:                                              ; preds = %273, %271
  %276 = phi i32 [ %272, %271 ], [ %274, %273 ]
  store i32 %276, i32* %15, align 4
  %277 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %278 = call i32 @m_freem(%struct.mbuf* %277)
  br label %803

279:                                              ; preds = %257
  %280 = load i32, i32* @MLEN, align 4
  store i32 %280, i32* %17, align 4
  %281 = load i32, i32* %16, align 4
  %282 = load i32, i32* @MINCLSIZE, align 4
  %283 = icmp sge i32 %281, %282
  br i1 %283, label %284, label %309

284:                                              ; preds = %279
  %285 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %286 = load i32, i32* @M_NOWAIT, align 4
  %287 = call i32 @MCLGET(%struct.mbuf* %285, i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %307, label %289

289:                                              ; preds = %284
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 7), align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 7), align 4
  %292 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %293 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = load i32, i32* @ERESTART, align 4
  br label %300

298:                                              ; preds = %289
  %299 = load i32, i32* @ENOMEM, align 4
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i32 [ %297, %296 ], [ %299, %298 ]
  store i32 %301, i32* %15, align 4
  %302 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %303 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %304 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %303, i32 0, i32 2
  store %struct.mbuf* %302, %struct.mbuf** %304, align 8
  %305 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %306 = call i32 @m_freem(%struct.mbuf* %305)
  br label %803

307:                                              ; preds = %284
  %308 = load i32, i32* @MCLBYTES, align 4
  store i32 %308, i32* %17, align 4
  br label %309

309:                                              ; preds = %307, %279
  %310 = load i32, i32* %17, align 4
  %311 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %312 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* %17, align 4
  %314 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %315 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 %317, %313
  store i32 %318, i32* %316, align 8
  %319 = load i32, i32* %17, align 4
  %320 = load i32, i32* %16, align 4
  %321 = sub nsw i32 %320, %319
  store i32 %321, i32* %16, align 4
  %322 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %323 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %324 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %323, i32 0, i32 2
  store %struct.mbuf* %322, %struct.mbuf** %324, align 8
  %325 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  store %struct.mbuf* %325, %struct.mbuf** %20, align 8
  br label %254

326:                                              ; preds = %254
  %327 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %328 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %329 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %328, i32 0, i32 6
  store %struct.mbuf* %327, %struct.mbuf** %329, align 8
  br label %330

330:                                              ; preds = %326, %145
  br label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331, %124
  %333 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %334 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %333, i32 0, i32 8
  %335 = load i32*, i32** %334, align 8
  %336 = icmp eq i32* %335, null
  br i1 %336, label %337, label %408

337:                                              ; preds = %332
  %338 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %339 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %338, i32 0, i32 13
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %342 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %343 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %342, i32 0, i32 8
  %344 = call i64 @bus_dmamap_create(i32 %340, i32 %341, i32** %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %337
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 6), align 8
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 6), align 8
  %349 = load i32, i32* @ENOMEM, align 4
  store i32 %349, i32* %15, align 4
  br label %803

350:                                              ; preds = %337
  %351 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %352 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %378

357:                                              ; preds = %350
  %358 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %359 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %358, i32 0, i32 13
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %362 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %361, i32 0, i32 8
  %363 = load i32*, i32** %362, align 8
  %364 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %365 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %364, i32 0, i32 6
  %366 = load %struct.mbuf*, %struct.mbuf** %365, align 8
  %367 = load i32, i32* @hifn_op_cb, align 4
  %368 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %369 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %368, i32 0, i32 9
  %370 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %371 = call i64 @bus_dmamap_load_mbuf(i32 %360, i32* %363, %struct.mbuf* %366, i32 %367, i32* %369, i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %357
  %374 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 6), align 8
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 6), align 8
  %376 = load i32, i32* @ENOMEM, align 4
  store i32 %376, i32* %15, align 4
  br label %786

377:                                              ; preds = %357
  br label %407

378:                                              ; preds = %350
  %379 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %380 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @CRYPTO_F_IOV, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %406

385:                                              ; preds = %378
  %386 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %387 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %386, i32 0, i32 13
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %390 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %389, i32 0, i32 8
  %391 = load i32*, i32** %390, align 8
  %392 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %393 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %392, i32 0, i32 10
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @hifn_op_cb, align 4
  %396 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %397 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %396, i32 0, i32 9
  %398 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %399 = call i64 @bus_dmamap_load_uio(i32 %388, i32* %391, i32 %394, i32 %395, i32* %397, i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %385
  %402 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 5), align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 5), align 4
  %404 = load i32, i32* @ENOMEM, align 4
  store i32 %404, i32* %15, align 4
  br label %786

405:                                              ; preds = %385
  br label %406

406:                                              ; preds = %405, %378
  br label %407

407:                                              ; preds = %406, %377
  br label %408

408:                                              ; preds = %407, %332
  %409 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %410 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %409, i32 0, i32 5
  %411 = load i32*, i32** %410, align 8
  %412 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %413 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %412, i32 0, i32 8
  %414 = load i32*, i32** %413, align 8
  %415 = icmp eq i32* %411, %414
  br i1 %415, label %416, label %427

416:                                              ; preds = %408
  %417 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %418 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %417, i32 0, i32 13
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %421 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %420, i32 0, i32 5
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %424 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %425 = or i32 %423, %424
  %426 = call i32 @bus_dmamap_sync(i32 %419, i32* %422, i32 %425)
  br label %444

427:                                              ; preds = %408
  %428 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %429 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %428, i32 0, i32 13
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %432 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %431, i32 0, i32 5
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %435 = call i32 @bus_dmamap_sync(i32 %430, i32* %433, i32 %434)
  %436 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %437 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %436, i32 0, i32 13
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %440 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %439, i32 0, i32 8
  %441 = load i32*, i32** %440, align 8
  %442 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %443 = call i32 @bus_dmamap_sync(i32 %438, i32* %441, i32 %442)
  br label %444

444:                                              ; preds = %427, %416
  %445 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %446 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %445, i32 0, i32 2
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %449 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %448, i32 0, i32 2
  %450 = load i64, i64* %449, align 8
  %451 = add nsw i64 %447, %450
  %452 = load i64, i64* @HIFN_D_SRC_RSIZE, align 8
  %453 = icmp sgt i64 %451, %452
  br i1 %453, label %465, label %454

454:                                              ; preds = %444
  %455 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %456 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %455, i32 0, i32 3
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %459 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %458, i32 0, i32 3
  %460 = load i64, i64* %459, align 8
  %461 = add nsw i64 %457, %460
  %462 = add nsw i64 %461, 1
  %463 = load i64, i64* @HIFN_D_DST_RSIZE, align 8
  %464 = icmp sgt i64 %462, %463
  br i1 %464, label %465, label %469

465:                                              ; preds = %454, %444
  %466 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 4), align 8
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 4), align 8
  %468 = load i32, i32* @ERESTART, align 4
  store i32 %468, i32* %15, align 4
  br label %769

469:                                              ; preds = %454
  %470 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %471 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @HIFN_D_CMD_RSIZE, align 4
  %474 = icmp eq i32 %472, %473
  br i1 %474, label %475, label %497

475:                                              ; preds = %469
  %476 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %477 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %476, i32 0, i32 4
  store i32 0, i32* %477, align 8
  %478 = load i32, i32* @HIFN_D_VALID, align 4
  %479 = load i32, i32* @HIFN_D_JUMP, align 4
  %480 = or i32 %478, %479
  %481 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %482 = or i32 %480, %481
  %483 = call i8* @htole32(i32 %482)
  %484 = load %struct.hifn_dma*, %struct.hifn_dma** %10, align 8
  %485 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %484, i32 0, i32 1
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %485, align 8
  %487 = load i32, i32* @HIFN_D_CMD_RSIZE, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 0
  store i8* %483, i8** %490, align 8
  %491 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %492 = load i32, i32* @HIFN_D_CMD_RSIZE, align 4
  %493 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %494 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %495 = or i32 %493, %494
  %496 = call i32 @HIFN_CMDR_SYNC(%struct.hifn_softc* %491, i32 %492, i32 %495)
  br label %497

497:                                              ; preds = %475, %469
  %498 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %499 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %498, i32 0, i32 4
  %500 = load i32, i32* %499, align 8
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %499, align 8
  store i32 %500, i32* %13, align 4
  %502 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %503 = load %struct.hifn_dma*, %struct.hifn_dma** %10, align 8
  %504 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %503, i32 0, i32 2
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %13, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @hifn_write_command(%struct.hifn_command* %502, i32 %509)
  store i32 %510, i32* %11, align 4
  %511 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %512 = load i32, i32* %13, align 4
  %513 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %514 = call i32 @HIFN_CMD_SYNC(%struct.hifn_softc* %511, i32 %512, i32 %513)
  %515 = load i32, i32* %11, align 4
  %516 = load i32, i32* @HIFN_D_VALID, align 4
  %517 = or i32 %515, %516
  %518 = load i32, i32* @HIFN_D_LAST, align 4
  %519 = or i32 %517, %518
  %520 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %521 = or i32 %519, %520
  %522 = call i8* @htole32(i32 %521)
  %523 = load %struct.hifn_dma*, %struct.hifn_dma** %10, align 8
  %524 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %523, i32 0, i32 1
  %525 = load %struct.TYPE_6__*, %struct.TYPE_6__** %524, align 8
  %526 = load i32, i32* %13, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %525, i64 %527
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i32 0, i32 0
  store i8* %522, i8** %529, align 8
  %530 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %531 = load i32, i32* %13, align 4
  %532 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %533 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %534 = or i32 %532, %533
  %535 = call i32 @HIFN_CMDR_SYNC(%struct.hifn_softc* %530, i32 %531, i32 %534)
  %536 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %537 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %537, align 8
  %540 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %541 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = icmp sgt i32 %542, 1
  br i1 %543, label %544, label %556

544:                                              ; preds = %497
  %545 = load i32, i32* @HIFN_DMAIER_C_WAIT, align 4
  %546 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %547 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %546, i32 0, i32 5
  %548 = load i32, i32* %547, align 4
  %549 = or i32 %548, %545
  store i32 %549, i32* %547, align 4
  %550 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %551 = load i32, i32* @HIFN_1_DMA_IER, align 4
  %552 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %553 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %552, i32 0, i32 5
  %554 = load i32, i32* %553, align 4
  %555 = call i32 @WRITE_REG_1(%struct.hifn_softc* %550, i32 %551, i32 %554)
  br label %556

556:                                              ; preds = %544, %497
  %557 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 3), align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 3), align 4
  %559 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %560 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 0), align 8
  %563 = add nsw i32 %562, %561
  store i32 %563, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 0), align 8
  %564 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %565 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %566 = call i32 @hifn_dmamap_load_src(%struct.hifn_softc* %564, %struct.hifn_command* %565)
  %567 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %568 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %567, i32 0, i32 6
  %569 = load i64, i64* %568, align 8
  %570 = load i64, i64* @HIFN_D_RES_RSIZE, align 8
  %571 = icmp eq i64 %569, %570
  br i1 %571, label %572, label %594

572:                                              ; preds = %556
  %573 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %574 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %573, i32 0, i32 6
  store i64 0, i64* %574, align 8
  %575 = load i32, i32* @HIFN_D_VALID, align 4
  %576 = load i32, i32* @HIFN_D_JUMP, align 4
  %577 = or i32 %575, %576
  %578 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %579 = or i32 %577, %578
  %580 = call i8* @htole32(i32 %579)
  %581 = load %struct.hifn_dma*, %struct.hifn_dma** %10, align 8
  %582 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %581, i32 0, i32 0
  %583 = load %struct.TYPE_7__*, %struct.TYPE_7__** %582, align 8
  %584 = load i64, i64* @HIFN_D_RES_RSIZE, align 8
  %585 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %583, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %585, i32 0, i32 0
  store i8* %580, i8** %586, align 8
  %587 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %588 = load i64, i64* @HIFN_D_RES_RSIZE, align 8
  %589 = trunc i64 %588 to i32
  %590 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %591 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %592 = or i32 %590, %591
  %593 = call i32 @HIFN_RESR_SYNC(%struct.hifn_softc* %587, i32 %589, i32 %592)
  br label %594

594:                                              ; preds = %572, %556
  %595 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %596 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %595, i32 0, i32 6
  %597 = load i64, i64* %596, align 8
  %598 = add i64 %597, 1
  store i64 %598, i64* %596, align 8
  %599 = trunc i64 %597 to i32
  store i32 %599, i32* %14, align 4
  %600 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %601 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %600, i32 0, i32 15
  %602 = load %struct.hifn_command**, %struct.hifn_command*** %601, align 8
  %603 = load i32, i32* %14, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.hifn_command*, %struct.hifn_command** %602, i64 %604
  %606 = load %struct.hifn_command*, %struct.hifn_command** %605, align 8
  %607 = icmp eq %struct.hifn_command* %606, null
  %608 = zext i1 %607 to i32
  %609 = load i32, i32* %14, align 4
  %610 = sext i32 %609 to i64
  %611 = inttoptr i64 %610 to i8*
  %612 = call i32 @KASSERT(i32 %608, i8* %611)
  %613 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %614 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %615 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %614, i32 0, i32 15
  %616 = load %struct.hifn_command**, %struct.hifn_command*** %615, align 8
  %617 = load i32, i32* %14, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.hifn_command*, %struct.hifn_command** %616, i64 %618
  store %struct.hifn_command* %613, %struct.hifn_command** %619, align 8
  %620 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %621 = load i32, i32* %14, align 4
  %622 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %623 = call i32 @HIFN_RES_SYNC(%struct.hifn_softc* %620, i32 %621, i32 %622)
  %624 = load i32, i32* %9, align 4
  %625 = load i32, i32* @CRYPTO_HINT_MORE, align 4
  %626 = and i32 %624, %625
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %666

628:                                              ; preds = %594
  %629 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %630 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %629, i32 0, i32 7
  %631 = load i64, i64* %630, align 8
  %632 = load i64, i64* @hifn_maxbatch, align 8
  %633 = icmp slt i64 %631, %632
  br i1 %633, label %634, label %666

634:                                              ; preds = %628
  %635 = load i32, i32* @HIFN_MAX_RESULT, align 4
  %636 = load i32, i32* @HIFN_D_VALID, align 4
  %637 = or i32 %635, %636
  %638 = load i32, i32* @HIFN_D_LAST, align 4
  %639 = or i32 %637, %638
  %640 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %641 = or i32 %639, %640
  %642 = call i8* @htole32(i32 %641)
  %643 = load %struct.hifn_dma*, %struct.hifn_dma** %10, align 8
  %644 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %643, i32 0, i32 0
  %645 = load %struct.TYPE_7__*, %struct.TYPE_7__** %644, align 8
  %646 = load i32, i32* %14, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %645, i64 %647
  %649 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %648, i32 0, i32 0
  store i8* %642, i8** %649, align 8
  %650 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %651 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %650, i32 0, i32 7
  %652 = load i64, i64* %651, align 8
  %653 = add nsw i64 %652, 1
  store i64 %653, i64* %651, align 8
  %654 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %655 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %654, i32 0, i32 7
  %656 = load i64, i64* %655, align 8
  %657 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 1), align 8
  %658 = icmp sgt i64 %656, %657
  br i1 %658, label %659, label %663

659:                                              ; preds = %634
  %660 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %661 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %660, i32 0, i32 7
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 1), align 8
  br label %663

663:                                              ; preds = %659, %634
  %664 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 2), align 8
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 2), align 8
  br label %682

666:                                              ; preds = %628, %594
  %667 = load i32, i32* @HIFN_MAX_RESULT, align 4
  %668 = load i32, i32* @HIFN_D_VALID, align 4
  %669 = or i32 %667, %668
  %670 = load i32, i32* @HIFN_D_LAST, align 4
  %671 = or i32 %669, %670
  %672 = call i8* @htole32(i32 %671)
  %673 = load %struct.hifn_dma*, %struct.hifn_dma** %10, align 8
  %674 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %673, i32 0, i32 0
  %675 = load %struct.TYPE_7__*, %struct.TYPE_7__** %674, align 8
  %676 = load i32, i32* %14, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %675, i64 %677
  %679 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %678, i32 0, i32 0
  store i8* %672, i8** %679, align 8
  %680 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %681 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %680, i32 0, i32 7
  store i64 0, i64* %681, align 8
  br label %682

682:                                              ; preds = %666, %663
  %683 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %684 = load i32, i32* %14, align 4
  %685 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %686 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %687 = or i32 %685, %686
  %688 = call i32 @HIFN_RESR_SYNC(%struct.hifn_softc* %683, i32 %684, i32 %687)
  %689 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %690 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %689, i32 0, i32 1
  %691 = load i64, i64* %690, align 8
  %692 = add i64 %691, 1
  store i64 %692, i64* %690, align 8
  %693 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %694 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %701

697:                                              ; preds = %682
  %698 = load i32, i32* %14, align 4
  %699 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %700 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %699, i32 0, i32 4
  store i32 %698, i32* %700, align 8
  br label %701

701:                                              ; preds = %697, %682
  %702 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %703 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %704 = call i32 @hifn_dmamap_load_dst(%struct.hifn_softc* %702, %struct.hifn_command* %703)
  store i32 0, i32* %12, align 4
  %705 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %706 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %705, i32 0, i32 8
  %707 = load i32, i32* %706, align 8
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %715

709:                                              ; preds = %701
  %710 = load i32, i32* @HIFN_DMACSR_C_CTRL_ENA, align 4
  %711 = load i32, i32* %12, align 4
  %712 = or i32 %711, %710
  store i32 %712, i32* %12, align 4
  %713 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %714 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %713, i32 0, i32 8
  store i32 1, i32* %714, align 8
  br label %715

715:                                              ; preds = %709, %701
  %716 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %717 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %716, i32 0, i32 9
  %718 = load i32, i32* %717, align 4
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %726

720:                                              ; preds = %715
  %721 = load i32, i32* @HIFN_DMACSR_S_CTRL_ENA, align 4
  %722 = load i32, i32* %12, align 4
  %723 = or i32 %722, %721
  store i32 %723, i32* %12, align 4
  %724 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %725 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %724, i32 0, i32 9
  store i32 1, i32* %725, align 4
  br label %726

726:                                              ; preds = %720, %715
  %727 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %728 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %727, i32 0, i32 10
  %729 = load i32, i32* %728, align 8
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %737

731:                                              ; preds = %726
  %732 = load i32, i32* @HIFN_DMACSR_R_CTRL_ENA, align 4
  %733 = load i32, i32* %12, align 4
  %734 = or i32 %733, %732
  store i32 %734, i32* %12, align 4
  %735 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %736 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %735, i32 0, i32 10
  store i32 1, i32* %736, align 8
  br label %737

737:                                              ; preds = %731, %726
  %738 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %739 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %738, i32 0, i32 11
  %740 = load i32, i32* %739, align 4
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %748

742:                                              ; preds = %737
  %743 = load i32, i32* @HIFN_DMACSR_D_CTRL_ENA, align 4
  %744 = load i32, i32* %12, align 4
  %745 = or i32 %744, %743
  store i32 %745, i32* %12, align 4
  %746 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %747 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %746, i32 0, i32 11
  store i32 1, i32* %747, align 4
  br label %748

748:                                              ; preds = %742, %737
  %749 = load i32, i32* %12, align 4
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %751, label %756

751:                                              ; preds = %748
  %752 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %753 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %754 = load i32, i32* %12, align 4
  %755 = call i32 @WRITE_REG_1(%struct.hifn_softc* %752, i32 %753, i32 %754)
  br label %756

756:                                              ; preds = %751, %748
  %757 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %758 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %757, i32 0, i32 12
  store i32 5, i32* %758, align 8
  %759 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %760 = call i32 @HIFN_UNLOCK(%struct.hifn_softc* %759)
  %761 = load i32, i32* %15, align 4
  %762 = icmp eq i32 %761, 0
  %763 = zext i1 %762 to i32
  %764 = load i32, i32* %15, align 4
  %765 = sext i32 %764 to i64
  %766 = inttoptr i64 %765 to i8*
  %767 = call i32 @KASSERT(i32 %763, i8* %766)
  %768 = load i32, i32* %15, align 4
  store i32 %768, i32* %5, align 4
  br label %843

769:                                              ; preds = %465
  %770 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %771 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %770, i32 0, i32 5
  %772 = load i32*, i32** %771, align 8
  %773 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %774 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %773, i32 0, i32 8
  %775 = load i32*, i32** %774, align 8
  %776 = icmp ne i32* %772, %775
  br i1 %776, label %777, label %785

777:                                              ; preds = %769
  %778 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %779 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %778, i32 0, i32 13
  %780 = load i32, i32* %779, align 4
  %781 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %782 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %781, i32 0, i32 8
  %783 = load i32*, i32** %782, align 8
  %784 = call i32 @bus_dmamap_unload(i32 %780, i32* %783)
  br label %785

785:                                              ; preds = %777, %769
  br label %786

786:                                              ; preds = %785, %401, %373
  %787 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %788 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %787, i32 0, i32 5
  %789 = load i32*, i32** %788, align 8
  %790 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %791 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %790, i32 0, i32 8
  %792 = load i32*, i32** %791, align 8
  %793 = icmp ne i32* %789, %792
  br i1 %793, label %794, label %802

794:                                              ; preds = %786
  %795 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %796 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %795, i32 0, i32 13
  %797 = load i32, i32* %796, align 4
  %798 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %799 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %798, i32 0, i32 8
  %800 = load i32*, i32** %799, align 8
  %801 = call i32 @bus_dmamap_destroy(i32 %797, i32* %800)
  br label %802

802:                                              ; preds = %794, %786
  br label %803

803:                                              ; preds = %802, %346, %300, %275, %237, %215, %143
  %804 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %805 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %804, i32 0, i32 0
  %806 = load i32, i32* %805, align 4
  %807 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %808 = and i32 %806, %807
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %824

810:                                              ; preds = %803
  %811 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %812 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %811, i32 0, i32 7
  %813 = load %struct.mbuf*, %struct.mbuf** %812, align 8
  %814 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %815 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %814, i32 0, i32 6
  %816 = load %struct.mbuf*, %struct.mbuf** %815, align 8
  %817 = icmp ne %struct.mbuf* %813, %816
  br i1 %817, label %818, label %823

818:                                              ; preds = %810
  %819 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %820 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %819, i32 0, i32 6
  %821 = load %struct.mbuf*, %struct.mbuf** %820, align 8
  %822 = call i32 @m_freem(%struct.mbuf* %821)
  br label %823

823:                                              ; preds = %818, %810
  br label %824

824:                                              ; preds = %823, %803
  %825 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %826 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %825, i32 0, i32 13
  %827 = load i32, i32* %826, align 4
  %828 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %829 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %828, i32 0, i32 5
  %830 = load i32*, i32** %829, align 8
  %831 = call i32 @bus_dmamap_unload(i32 %827, i32* %830)
  br label %832

832:                                              ; preds = %824, %116, %111, %83
  %833 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %834 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %833, i32 0, i32 13
  %835 = load i32, i32* %834, align 4
  %836 = load %struct.hifn_command*, %struct.hifn_command** %7, align 8
  %837 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %836, i32 0, i32 5
  %838 = load i32*, i32** %837, align 8
  %839 = call i32 @bus_dmamap_destroy(i32 %835, i32* %838)
  %840 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %841 = call i32 @HIFN_UNLOCK(%struct.hifn_softc* %840)
  %842 = load i32, i32* %15, align 4
  store i32 %842, i32* %5, align 4
  br label %843

843:                                              ; preds = %832, %756, %54, %39
  %844 = load i32, i32* %5, align 4
  ret i32 %844
}

declare dso_local i32 @HIFN_LOCK(%struct.hifn_softc*) #1

declare dso_local i32 @HIFN_UNLOCK(%struct.hifn_softc*) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32**) #1

declare dso_local i64 @bus_dmamap_load_mbuf(i32, i32*, %struct.mbuf*, i32, i32*, i32) #1

declare dso_local i64 @bus_dmamap_load_uio(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i64 @hifn_dmamap_aligned(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_dup_pkthdr(%struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @HIFN_CMDR_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @hifn_write_command(%struct.hifn_command*, i32) #1

declare dso_local i32 @HIFN_CMD_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @WRITE_REG_1(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @hifn_dmamap_load_src(%struct.hifn_softc*, %struct.hifn_command*) #1

declare dso_local i32 @HIFN_RESR_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @HIFN_RES_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @hifn_dmamap_load_dst(%struct.hifn_softc*, %struct.hifn_command*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
