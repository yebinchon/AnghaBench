; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ubsec_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubsec_q = type { i32, %struct.ubsec_q**, %struct.ubsec_dma* }
%struct.ubsec_dma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ubsec_q2 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ubsec_mcr = type { i32 }

@BS_STAT = common dso_local global i32 0, align 4
@BS_STAT_MCR1_DONE = common dso_local global i32 0, align 4
@UBS_MCR_DONE = common dso_local global i32 0, align 4
@q_next = common dso_local global i32 0, align 4
@BS_STAT_DMAERR = common dso_local global i32 0, align 4
@UBS_FLAGS_KEY = common dso_local global i32 0, align 4
@UBS_FLAGS_RNG = common dso_local global i32 0, align 4
@BS_STAT_MCR2_DONE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ubsecstats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CRYPTO_SYMQ = common dso_local global i32 0, align 4
@CRYPTO_ASYMQ = common dso_local global i32 0, align 4
@BS_ERR = common dso_local global i32 0, align 4
@BS_ERR_ADDR = common dso_local global i32 0, align 4
@BS_ERR_READ = common dso_local global i32 0, align 4
@ubsec_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ubsec_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ubsec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubsec_q*, align 8
  %6 = alloca %struct.ubsec_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubsec_q2*, align 8
  %10 = alloca %struct.ubsec_mcr*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.ubsec_softc*
  store %struct.ubsec_softc* %13, %struct.ubsec_softc** %3, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %15 = load i32, i32* @BS_STAT, align 4
  %16 = call i32 @READ_REG(%struct.ubsec_softc* %14, i32 %15)
  store volatile i32 %16, i32* %4, align 4
  %17 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %17, i32 0, i32 0
  %19 = load volatile i32, i32* %18, align 4
  %20 = load volatile i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store volatile i32 %21, i32* %4, align 4
  %22 = load volatile i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %243

25:                                               ; preds = %1
  %26 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %27 = load i32, i32* @BS_STAT, align 4
  %28 = load volatile i32, i32* %4, align 4
  %29 = call i32 @WRITE_REG(%struct.ubsec_softc* %26, i32 %27, i32 %28)
  %30 = load volatile i32, i32* %4, align 4
  %31 = load volatile i32, i32* @BS_STAT_MCR1_DONE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %121

34:                                               ; preds = %25
  %35 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %35, i32 0, i32 7
  %37 = call i32 @mtx_lock(i32* %36)
  br label %38

38:                                               ; preds = %105, %34
  %39 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %39, i32 0, i32 10
  %41 = call i32 @SIMPLEQ_EMPTY(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %109

44:                                               ; preds = %38
  %45 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %45, i32 0, i32 10
  %47 = call i8* @SIMPLEQ_FIRST(i32* %46)
  %48 = bitcast i8* %47 to %struct.ubsec_q*
  store %struct.ubsec_q* %48, %struct.ubsec_q** %5, align 8
  %49 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %50 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %49, i32 0, i32 2
  %51 = load %struct.ubsec_dma*, %struct.ubsec_dma** %50, align 8
  store %struct.ubsec_dma* %51, %struct.ubsec_dma** %6, align 8
  %52 = load %struct.ubsec_dma*, %struct.ubsec_dma** %6, align 8
  %53 = getelementptr inbounds %struct.ubsec_dma, %struct.ubsec_dma* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UBS_MCR_DONE, align 4
  %59 = call i32 @htole16(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  br label %109

63:                                               ; preds = %44
  %64 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %64, i32 0, i32 10
  %66 = load i32, i32* @q_next, align 4
  %67 = call i32 @SIMPLEQ_REMOVE_HEAD(i32* %65, i32 %66)
  %68 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %69 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 1, %71
  %73 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %102, %63
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %83 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %82, i32 0, i32 1
  %84 = load %struct.ubsec_q**, %struct.ubsec_q*** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ubsec_q*, %struct.ubsec_q** %84, i64 %86
  %88 = load %struct.ubsec_q*, %struct.ubsec_q** %87, align 8
  %89 = icmp ne %struct.ubsec_q* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %92 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %93 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %92, i32 0, i32 1
  %94 = load %struct.ubsec_q**, %struct.ubsec_q*** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ubsec_q*, %struct.ubsec_q** %94, i64 %96
  %98 = load %struct.ubsec_q*, %struct.ubsec_q** %97, align 8
  %99 = call i32 @ubsec_callback(%struct.ubsec_softc* %91, %struct.ubsec_q* %98)
  br label %101

100:                                              ; preds = %81
  br label %105

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %77

105:                                              ; preds = %100, %77
  %106 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %107 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %108 = call i32 @ubsec_callback(%struct.ubsec_softc* %106, %struct.ubsec_q* %107)
  br label %38

109:                                              ; preds = %62, %38
  %110 = load volatile i32, i32* %4, align 4
  %111 = load volatile i32, i32* @BS_STAT_DMAERR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %116 = call i32 @ubsec_feed(%struct.ubsec_softc* %115)
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %119 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %118, i32 0, i32 7
  %120 = call i32 @mtx_unlock(i32* %119)
  br label %121

121:                                              ; preds = %117, %25
  %122 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %123 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @UBS_FLAGS_KEY, align 4
  %126 = load i32, i32* @UBS_FLAGS_RNG, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %195

130:                                              ; preds = %121
  %131 = load volatile i32, i32* %4, align 4
  %132 = load volatile i32, i32* @BS_STAT_MCR2_DONE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %195

135:                                              ; preds = %130
  %136 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %137 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %136, i32 0, i32 8
  %138 = call i32 @mtx_lock(i32* %137)
  br label %139

139:                                              ; preds = %190, %135
  %140 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %141 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %140, i32 0, i32 9
  %142 = call i32 @SIMPLEQ_EMPTY(i32* %141)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  br i1 %144, label %145, label %191

145:                                              ; preds = %139
  %146 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %147 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %146, i32 0, i32 9
  %148 = call i8* @SIMPLEQ_FIRST(i32* %147)
  %149 = bitcast i8* %148 to %struct.ubsec_q2*
  store %struct.ubsec_q2* %149, %struct.ubsec_q2** %9, align 8
  %150 = load %struct.ubsec_q2*, %struct.ubsec_q2** %9, align 8
  %151 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %150, i32 0, i32 0
  %152 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %153 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @ubsec_dma_sync(%struct.TYPE_8__* %151, i32 %154)
  %156 = load %struct.ubsec_q2*, %struct.ubsec_q2** %9, align 8
  %157 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to %struct.ubsec_mcr*
  store %struct.ubsec_mcr* %160, %struct.ubsec_mcr** %10, align 8
  %161 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %10, align 8
  %162 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @UBS_MCR_DONE, align 4
  %165 = call i32 @htole16(i32 %164)
  %166 = and i32 %163, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %145
  %169 = load %struct.ubsec_q2*, %struct.ubsec_q2** %9, align 8
  %170 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %169, i32 0, i32 0
  %171 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %172 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @ubsec_dma_sync(%struct.TYPE_8__* %170, i32 %173)
  br label %191

175:                                              ; preds = %145
  %176 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %177 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %176, i32 0, i32 9
  %178 = load i32, i32* @q_next, align 4
  %179 = call i32 @SIMPLEQ_REMOVE_HEAD(i32* %177, i32 %178)
  %180 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %181 = load %struct.ubsec_q2*, %struct.ubsec_q2** %9, align 8
  %182 = call i32 @ubsec_callback2(%struct.ubsec_softc* %180, %struct.ubsec_q2* %181)
  %183 = load volatile i32, i32* %4, align 4
  %184 = load volatile i32, i32* @BS_STAT_DMAERR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %175
  %188 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %189 = call i32 @ubsec_feed2(%struct.ubsec_softc* %188)
  br label %190

190:                                              ; preds = %187, %175
  br label %139

191:                                              ; preds = %168, %139
  %192 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %193 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %192, i32 0, i32 8
  %194 = call i32 @mtx_unlock(i32* %193)
  br label %195

195:                                              ; preds = %191, %130, %121
  %196 = load volatile i32, i32* %4, align 4
  %197 = load volatile i32, i32* @BS_STAT_DMAERR, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %195
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ubsecstats, i32 0, i32 0), align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ubsecstats, i32 0, i32 0), align 4
  %203 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %204 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %203, i32 0, i32 7
  %205 = call i32 @mtx_lock(i32* %204)
  %206 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %207 = call i32 @ubsec_totalreset(%struct.ubsec_softc* %206)
  %208 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %209 = call i32 @ubsec_feed(%struct.ubsec_softc* %208)
  %210 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %211 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %210, i32 0, i32 7
  %212 = call i32 @mtx_unlock(i32* %211)
  br label %213

213:                                              ; preds = %200, %195
  %214 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %215 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %243

218:                                              ; preds = %213
  %219 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %220 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %219, i32 0, i32 5
  %221 = call i32 @mtx_lock(i32* %220)
  %222 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %223 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @CRYPTO_SYMQ, align 4
  %226 = load i32, i32* @CRYPTO_ASYMQ, align 4
  %227 = or i32 %225, %226
  %228 = and i32 %224, %227
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %232 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 4
  %235 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %236 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %235, i32 0, i32 5
  %237 = call i32 @mtx_unlock(i32* %236)
  %238 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %239 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @crypto_unblock(i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %24, %218, %213
  ret void
}

declare dso_local i32 @READ_REG(%struct.ubsec_softc*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.ubsec_softc*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SIMPLEQ_EMPTY(i32*) #1

declare dso_local i8* @SIMPLEQ_FIRST(i32*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @SIMPLEQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ubsec_callback(%struct.ubsec_softc*, %struct.ubsec_q*) #1

declare dso_local i32 @ubsec_feed(%struct.ubsec_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ubsec_dma_sync(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ubsec_callback2(%struct.ubsec_softc*, %struct.ubsec_q2*) #1

declare dso_local i32 @ubsec_feed2(%struct.ubsec_softc*) #1

declare dso_local i32 @ubsec_totalreset(%struct.ubsec_softc*) #1

declare dso_local i32 @crypto_unblock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
