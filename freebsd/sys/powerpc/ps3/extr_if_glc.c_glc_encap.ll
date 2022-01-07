; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glc_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_5__, %struct.mbuf* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.glc_txsoft = type { i32, i32, i32, %struct.mbuf*, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"GLC: Mapped too many (%d) DMA segments with %d available\00", align 1
@EIO = common dso_local global i32 0, align 4
@GLC_MAX_TX_PACKETS = common dso_local global i32 0, align 4
@GELIC_CMDSTAT_NOIPSEC = common dso_local global i32 0, align 4
@GELIC_CMDSTAT_LAST = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@GELIC_CMDSTAT_CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@GELIC_CMDSTAT_CSUM_UDP = common dso_local global i32 0, align 4
@GELIC_DESCR_OWNED = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@txs_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glc_softc*, %struct.mbuf**, i64*)* @glc_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glc_encap(%struct.glc_softc* %0, %struct.mbuf** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.glc_softc*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [16 x %struct.TYPE_6__], align 16
  %9 = alloca %struct.glc_txsoft*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.glc_softc* %0, %struct.glc_softc** %5, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %18 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 128, %19
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp sgt i32 %21, 16
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %25 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  store i32 16, i32* %15, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %31 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %30, i32 0, i32 4
  %32 = call %struct.glc_txsoft* @STAILQ_FIRST(i32* %31)
  store %struct.glc_txsoft* %32, %struct.glc_txsoft** %9, align 8
  %33 = icmp eq %struct.glc_txsoft* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOBUFS, align 4
  store i32 %35, i32* %4, align 4
  br label %345

36:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  %37 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  store %struct.mbuf* %38, %struct.mbuf** %10, align 8
  br label %39

39:                                               ; preds = %45, %36
  %40 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %41 = icmp ne %struct.mbuf* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 1
  %48 = load %struct.mbuf*, %struct.mbuf** %47, align 8
  store %struct.mbuf* %48, %struct.mbuf** %10, align 8
  br label %39

49:                                               ; preds = %39
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  %56 = load i32, i32* @M_NOWAIT, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call %struct.mbuf* @m_collapse(%struct.mbuf* %55, i32 %56, i32 %57)
  store %struct.mbuf* %58, %struct.mbuf** %10, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %60 = icmp eq %struct.mbuf* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %62, align 8
  %64 = call i32 @m_freem(%struct.mbuf* %63)
  %65 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %65, align 8
  %66 = load i32, i32* @ENOBUFS, align 4
  store i32 %66, i32* %4, align 4
  br label %345

67:                                               ; preds = %53
  %68 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %69 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %68, %struct.mbuf** %69, align 8
  br label %70

70:                                               ; preds = %67, %49
  %71 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %72 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %75 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %77, align 8
  %79 = getelementptr inbounds [16 x %struct.TYPE_6__], [16 x %struct.TYPE_6__]* %8, i64 0, i64 0
  %80 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %81 = call i32 @bus_dmamap_load_mbuf_sg(i32 %73, i32 %76, %struct.mbuf* %78, %struct.TYPE_6__* %79, i32* %14, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %85, align 8
  %87 = call i32 @m_freem(%struct.mbuf* %86)
  %88 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %88, align 8
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %4, align 4
  br label %345

90:                                               ; preds = %70
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %93 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 128, %94
  %96 = icmp sle i32 %91, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %100 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 128, %101
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @KASSERT(i32 %97, i8* %104)
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %90
  %109 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %110 = load %struct.mbuf*, %struct.mbuf** %109, align 8
  %111 = call i32 @m_freem(%struct.mbuf* %110)
  %112 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %112, align 8
  %113 = load i32, i32* @EIO, align 4
  store i32 %113, i32* %4, align 4
  br label %345

114:                                              ; preds = %90
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %117 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %119 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %122 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %124 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %13, align 4
  %126 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %127 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %130 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = add i64 %128, %133
  store i64 %134, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %278, %114
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %281

139:                                              ; preds = %135
  %140 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %141 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %140, i32 0, i32 5
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = call i32 @bzero(%struct.TYPE_7__* %145, i32 24)
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [16 x %struct.TYPE_6__], [16 x %struct.TYPE_6__]* %8, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %153 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %152, i32 0, i32 5
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  store i32 %151, i32* %158, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [16 x %struct.TYPE_6__], [16 x %struct.TYPE_6__]* %8, i64 0, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %165 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %164, i32 0, i32 5
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  store i32 %163, i32* %170, align 4
  %171 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %172 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  %176 = load i32, i32* @GLC_MAX_TX_PACKETS, align 4
  %177 = srem i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 4
  %180 = add i64 %173, %179
  %181 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %182 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %181, i32 0, i32 5
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  store i64 %180, i64* %187, align 8
  %188 = load i32, i32* @GELIC_CMDSTAT_NOIPSEC, align 4
  %189 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %190 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %189, i32 0, i32 5
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %188
  store i32 %197, i32* %195, align 8
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  %200 = load i32, i32* %14, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %223

202:                                              ; preds = %139
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %205 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %207 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %206, i32 0, i32 5
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  store i64 0, i64* %212, align 8
  %213 = load i32, i32* @GELIC_CMDSTAT_LAST, align 4
  %214 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %215 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %214, i32 0, i32 5
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %213
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %202, %139
  %224 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %225 = load %struct.mbuf*, %struct.mbuf** %224, align 8
  %226 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @CSUM_TCP, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %223
  %233 = load i32, i32* @GELIC_CMDSTAT_CSUM_TCP, align 4
  %234 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %235 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %234, i32 0, i32 5
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %233
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %232, %223
  %244 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %245 = load %struct.mbuf*, %struct.mbuf** %244, align 8
  %246 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @CSUM_UDP, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %243
  %253 = load i32, i32* @GELIC_CMDSTAT_CSUM_UDP, align 4
  %254 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %255 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %254, i32 0, i32 5
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %253
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %252, %243
  %264 = load i32, i32* @GELIC_DESCR_OWNED, align 4
  %265 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %266 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %265, i32 0, i32 5
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %264
  store i32 %273, i32* %271, align 8
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, 1
  %276 = load i32, i32* @GLC_MAX_TX_PACKETS, align 4
  %277 = srem i32 %275, %276
  store i32 %277, i32* %13, align 4
  br label %278

278:                                              ; preds = %263
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %12, align 4
  br label %135

281:                                              ; preds = %135
  %282 = load i32, i32* %13, align 4
  %283 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %284 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %287 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, %285
  store i32 %289, i32* %287, align 8
  %290 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %291 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %281
  %295 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %296 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %297, 1
  store i32 %298, i32* %13, align 4
  br label %302

299:                                              ; preds = %281
  %300 = load i32, i32* @GLC_MAX_TX_PACKETS, align 4
  %301 = sub nsw i32 %300, 1
  store i32 %301, i32* %13, align 4
  br label %302

302:                                              ; preds = %299, %294
  %303 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %304 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %302
  %308 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %309 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %312 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  br label %313

313:                                              ; preds = %307, %302
  %314 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %315 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %318 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %321 = call i32 @bus_dmamap_sync(i32 %316, i32 %319, i32 %320)
  %322 = load i64, i64* %11, align 8
  %323 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %324 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %323, i32 0, i32 5
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %324, align 8
  %326 = load i32, i32* %13, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  store i64 %322, i64* %329, align 8
  %330 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %331 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %330, i32 0, i32 4
  %332 = load i32, i32* @txs_q, align 4
  %333 = call i32 @STAILQ_REMOVE_HEAD(i32* %331, i32 %332)
  %334 = load %struct.glc_softc*, %struct.glc_softc** %5, align 8
  %335 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %334, i32 0, i32 3
  %336 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %337 = load i32, i32* @txs_q, align 4
  %338 = call i32 @STAILQ_INSERT_TAIL(i32* %335, %struct.glc_txsoft* %336, i32 %337)
  %339 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %340 = load %struct.mbuf*, %struct.mbuf** %339, align 8
  %341 = load %struct.glc_txsoft*, %struct.glc_txsoft** %9, align 8
  %342 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %341, i32 0, i32 3
  store %struct.mbuf* %340, %struct.mbuf** %342, align 8
  %343 = load i64, i64* %11, align 8
  %344 = load i64*, i64** %7, align 8
  store i64 %343, i64* %344, align 8
  store i32 0, i32* %4, align 4
  br label %345

345:                                              ; preds = %313, %108, %84, %61, %34
  %346 = load i32, i32* %4, align 4
  ret i32 %346
}

declare dso_local %struct.glc_txsoft* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.mbuf* @m_collapse(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.glc_txsoft*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
