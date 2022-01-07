; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.hn_txdesc = type { i32, i64, i64, i64, i32*, i32, i32 }

@HN_TXD_FLAG_ONLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"put an onlist txd %#x\00", align 1
@HN_TXD_FLAG_ONAGG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"put an onagg txd %#x\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid txd refs %d\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"resursive aggregation on aggregated txdesc\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"not aggregated txdesc\00", align 1
@HN_TXD_FLAG_DMAMAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"aggregated txdesc uses dmamap\00", align 1
@HN_NVS_CHIM_IDX_INVALID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"aggregated txdesc consumes chimney sending buffer\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"aggregated txdesc has non-zero chimney sending size\00", align 1
@agg_link = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to free aggregated txdesc\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"chim txd uses dmamap\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"txdesc_put: invalid txd avail %d\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_tx_ring*, %struct.hn_txdesc*)* @hn_txdesc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_txdesc_put(%struct.hn_tx_ring* %0, %struct.hn_txdesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_tx_ring*, align 8
  %5 = alloca %struct.hn_txdesc*, align 8
  %6 = alloca %struct.hn_txdesc*, align 8
  %7 = alloca i32, align 4
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %4, align 8
  store %struct.hn_txdesc* %1, %struct.hn_txdesc** %5, align 8
  %8 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %9 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @HN_TXD_FLAG_ONLIST, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %16 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %14, i8* %19)
  %21 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %22 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HN_TXD_FLAG_ONAGG, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %29 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %27, i8* %32)
  %34 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %35 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %40 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %38, i8* %42)
  %44 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %45 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %44, i32 0, i32 1
  %46 = call i32 @atomic_fetchadd_int(i64* %45, i32 -1)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %218

49:                                               ; preds = %2
  %50 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %51 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %50, i32 0, i32 6
  %52 = call i32 @STAILQ_EMPTY(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %108, label %54

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %60, %54
  %56 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %57 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %56, i32 0, i32 6
  %58 = call %struct.hn_txdesc* @STAILQ_FIRST(i32* %57)
  store %struct.hn_txdesc* %58, %struct.hn_txdesc** %6, align 8
  %59 = icmp ne %struct.hn_txdesc* %58, null
  br i1 %59, label %60, label %107

60:                                               ; preds = %55
  %61 = load %struct.hn_txdesc*, %struct.hn_txdesc** %6, align 8
  %62 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %61, i32 0, i32 6
  %63 = call i32 @STAILQ_EMPTY(i32* %62)
  %64 = call i32 @KASSERT(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.hn_txdesc*, %struct.hn_txdesc** %6, align 8
  %66 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @HN_TXD_FLAG_ONAGG, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @KASSERT(i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.hn_txdesc*, %struct.hn_txdesc** %6, align 8
  %72 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @HN_TXD_FLAG_DMAMAP, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @KASSERT(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.hn_txdesc*, %struct.hn_txdesc** %6, align 8
  %80 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @HN_NVS_CHIM_IDX_INVALID, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @KASSERT(i32 %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %86 = load %struct.hn_txdesc*, %struct.hn_txdesc** %6, align 8
  %87 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @KASSERT(i32 %90, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %92 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %93 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %92, i32 0, i32 6
  %94 = load i32, i32* @agg_link, align 4
  %95 = call i32 @STAILQ_REMOVE_HEAD(i32* %93, i32 %94)
  %96 = load i32, i32* @HN_TXD_FLAG_ONAGG, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.hn_txdesc*, %struct.hn_txdesc** %6, align 8
  %99 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %103 = load %struct.hn_txdesc*, %struct.hn_txdesc** %6, align 8
  %104 = call i32 @hn_txdesc_put(%struct.hn_tx_ring* %102, %struct.hn_txdesc* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @KASSERT(i32 %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %55

107:                                              ; preds = %55
  br label %108

108:                                              ; preds = %107, %49
  %109 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %110 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HN_NVS_CHIM_IDX_INVALID, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %108
  %115 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %116 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @HN_TXD_FLAG_DMAMAP, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @KASSERT(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %123 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %124 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %127 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @hn_chim_free(i32 %125, i64 %128)
  %130 = load i64, i64* @HN_NVS_CHIM_IDX_INVALID, align 8
  %131 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %132 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %134 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  br label %165

135:                                              ; preds = %108
  %136 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %137 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @HN_TXD_FLAG_DMAMAP, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %135
  %143 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %144 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %147 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %150 = call i32 @bus_dmamap_sync(i32 %145, i32 %148, i32 %149)
  %151 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %152 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %155 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @bus_dmamap_unload(i32 %153, i32 %156)
  %158 = load i32, i32* @HN_TXD_FLAG_DMAMAP, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %161 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %142, %135
  br label %165

165:                                              ; preds = %164, %114
  %166 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %167 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %172 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @m_freem(i32* %173)
  %175 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %176 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %175, i32 0, i32 4
  store i32* null, i32** %176, align 8
  br label %177

177:                                              ; preds = %170, %165
  %178 = load i32, i32* @HN_TXD_FLAG_ONLIST, align 4
  %179 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %180 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %184 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %183, i32 0, i32 3
  %185 = call i32 @mtx_lock_spin(i32* %184)
  %186 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %187 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sge i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %177
  %191 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %192 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %195 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %193, %196
  br label %198

198:                                              ; preds = %190, %177
  %199 = phi i1 [ false, %177 ], [ %197, %190 ]
  %200 = zext i1 %199 to i32
  %201 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %202 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i8*
  %205 = call i32 @KASSERT(i32 %200, i8* %204)
  %206 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %207 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %207, align 8
  %210 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %211 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %210, i32 0, i32 4
  %212 = load %struct.hn_txdesc*, %struct.hn_txdesc** %5, align 8
  %213 = load i32, i32* @link, align 4
  %214 = call i32 @SLIST_INSERT_HEAD(i32* %211, %struct.hn_txdesc* %212, i32 %213)
  %215 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %216 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %215, i32 0, i32 3
  %217 = call i32 @mtx_unlock_spin(i32* %216)
  store i32 1, i32* %3, align 4
  br label %218

218:                                              ; preds = %198, %48
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_fetchadd_int(i64*, i32) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.hn_txdesc* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @hn_chim_free(i32, i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.hn_txdesc*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
