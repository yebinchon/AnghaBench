; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32, %struct.TYPE_24__, i32, %struct.TYPE_23__, %struct.TYPE_18__*, %struct.TYPE_23__*, %struct.TYPE_21__, %struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_23__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_20__, i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_18__, i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.ifmediareq = type { i32 }

@UINT32_MAX = common dso_local global i8* null, align 8
@HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL = common dso_local global i32 0, align 4
@HWRM_NA_SIGNATURE = common dso_local global i64 0, align 8
@HWRM_RING_ALLOC_INPUT_RING_TYPE_RX = common dso_local global i32 0, align 4
@HW_HASH_INDEX_SIZE = common dso_local global i32 0, align 4
@HWRM_RING_ALLOC_INPUT_RING_TYPE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bnxt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.ifmediareq, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.bnxt_softc* @iflib_get_softc(i32 %8)
  store %struct.bnxt_softc* %9, %struct.bnxt_softc** %3, align 8
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %11 = call i32 @bnxt_hwrm_func_reset(%struct.bnxt_softc* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %491

15:                                               ; preds = %1
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %17 = call i32 @bnxt_clear_ids(%struct.bnxt_softc* %16)
  %18 = load i8*, i8** @UINT32_MAX, align 8
  %19 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 3
  store i8* %18, i8** %21, align 8
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %25, i32 0, i32 4
  %27 = call i32 @bnxt_mark_cpr_invalid(%struct.TYPE_23__* %26)
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %29 = load i32, i32* @HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL, align 4
  %30 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  %33 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %36 = call i32 @bnxt_hwrm_ring_alloc(%struct.bnxt_softc* %28, i32 %29, %struct.TYPE_18__* %32, i32 %34, i64 %35, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %15
  br label %486

40:                                               ; preds = %15
  %41 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %42 = call i32 @bnxt_cfg_async_cr(%struct.bnxt_softc* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %486

46:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %254, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %257

53:                                               ; preds = %47
  %54 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %55 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %56 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %55, i32 0, i32 10
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i64 %59
  %61 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %62 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %61, i32 0, i32 13
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = add i64 %64, %67
  %69 = call i32 @bnxt_hwrm_stat_ctx_alloc(%struct.bnxt_softc* %54, %struct.TYPE_23__* %60, i64 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  br label %486

73:                                               ; preds = %53
  %74 = load i8*, i8** @UINT32_MAX, align 8
  %75 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %76 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %75, i32 0, i32 10
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 3
  store i8* %74, i8** %81, align 8
  %82 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %83 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %82, i32 0, i32 10
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i8*, i8** @UINT32_MAX, align 8
  %90 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %91 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %90, i32 0, i32 10
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 4
  store i8* %89, i8** %96, align 8
  %97 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %98 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %97, i32 0, i32 10
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i64 %101
  %103 = call i32 @bnxt_mark_cpr_invalid(%struct.TYPE_23__* %102)
  %104 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %105 = load i32, i32* @HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL, align 4
  %106 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %107 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %106, i32 0, i32 10
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 2
  %113 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %116 = call i32 @bnxt_hwrm_ring_alloc(%struct.bnxt_softc* %104, i32 %105, %struct.TYPE_18__* %112, i32 %114, i64 %115, i32 1)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %73
  br label %486

120:                                              ; preds = %73
  %121 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %122 = load i32, i32* @HWRM_RING_ALLOC_INPUT_RING_TYPE_RX, align 4
  %123 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %124 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %123, i32 0, i32 12
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i64 %127
  %129 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %132 = call i32 @bnxt_hwrm_ring_alloc(%struct.bnxt_softc* %121, i32 %122, %struct.TYPE_18__* %128, i32 %130, i64 %131, i32 0)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %120
  br label %486

136:                                              ; preds = %120
  %137 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %138 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %137, i32 0, i32 12
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i64 %141
  %143 = call i32 @BNXT_RX_DB(%struct.TYPE_18__* %142, i32 0)
  %144 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %145 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %144, i32 0, i32 12
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i64 %148
  %150 = call i32 @BNXT_RX_DB(%struct.TYPE_18__* %149, i32 0)
  %151 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %152 = load i32, i32* @HWRM_RING_ALLOC_INPUT_RING_TYPE_RX, align 4
  %153 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %154 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %153, i32 0, i32 11
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i64 %157
  %159 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %160 = trunc i64 %159 to i32
  %161 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %162 = call i32 @bnxt_hwrm_ring_alloc(%struct.bnxt_softc* %151, i32 %152, %struct.TYPE_18__* %158, i32 %160, i64 %161, i32 0)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %136
  br label %486

166:                                              ; preds = %136
  %167 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %168 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %167, i32 0, i32 12
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i64 %171
  %173 = call i32 @BNXT_RX_DB(%struct.TYPE_18__* %172, i32 0)
  %174 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %175 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %174, i32 0, i32 11
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i64 %178
  %180 = call i32 @BNXT_RX_DB(%struct.TYPE_18__* %179, i32 0)
  %181 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %182 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %181, i32 0, i32 10
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %190 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %189, i32 0, i32 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 4
  store i64 %188, i64* %195, align 8
  %196 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %197 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %196, i32 0, i32 12
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %205 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %204, i32 0, i32 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 3
  store i32 %203, i32* %210, align 4
  %211 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %212 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %211, i32 0, i32 11
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %220 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %219, i32 0, i32 8
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  store i32 %218, i32* %225, align 8
  %226 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %227 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %226, i32 0, i32 10
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %236 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %235, i32 0, i32 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = load i32, i32* %5, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 1
  store i32 %234, i32* %241, align 4
  %242 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %243 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %244 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %243, i32 0, i32 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i64 %247
  %249 = call i32 @bnxt_hwrm_ring_grp_alloc(%struct.bnxt_softc* %242, %struct.TYPE_17__* %248)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %166
  br label %486

253:                                              ; preds = %166
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %5, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %5, align 4
  br label %47

257:                                              ; preds = %47
  %258 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %259 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %260 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 4
  %262 = call i32 @bnxt_hwrm_vnic_ctx_alloc(%struct.bnxt_softc* %258, i32* %261)
  store i32 %262, i32* %7, align 4
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  br label %486

266:                                              ; preds = %257
  %267 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %268 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %267, i32 0, i32 8
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %274 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 3
  store i32 %272, i32* %275, align 4
  %276 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %277 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %276, i32 0, i32 9
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %282 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 2
  store i32 %280, i32* %283, align 8
  %284 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %285 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %286 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %285, i32 0, i32 2
  %287 = call i32 @bnxt_hwrm_vnic_alloc(%struct.bnxt_softc* %284, %struct.TYPE_24__* %286)
  store i32 %287, i32* %7, align 4
  %288 = load i32, i32* %7, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %266
  br label %486

291:                                              ; preds = %266
  %292 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %293 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %294 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %293, i32 0, i32 2
  %295 = call i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt_softc* %292, %struct.TYPE_24__* %294)
  store i32 %295, i32* %7, align 4
  %296 = load i32, i32* %7, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %291
  br label %486

299:                                              ; preds = %291
  %300 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %301 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %302 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %301, i32 0, i32 2
  %303 = call i32 @bnxt_hwrm_set_filter(%struct.bnxt_softc* %300, %struct.TYPE_24__* %302)
  store i32 %303, i32* %7, align 4
  %304 = load i32, i32* %7, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  br label %486

307:                                              ; preds = %299
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %308

308:                                              ; preds = %339, %307
  %309 = load i32, i32* %5, align 4
  %310 = load i32, i32* @HW_HASH_INDEX_SIZE, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %342

312:                                              ; preds = %308
  %313 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %314 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %313, i32 0, i32 8
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %314, align 8
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @htole16(i32 %320)
  %322 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %323 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = inttoptr i64 %326 to i32*
  %328 = load i32, i32* %5, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %321, i32* %330, align 4
  %331 = load i32, i32* %6, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %6, align 4
  %333 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %334 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp eq i32 %332, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %312
  store i32 0, i32* %6, align 4
  br label %338

338:                                              ; preds = %337, %312
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %5, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %5, align 4
  br label %308

342:                                              ; preds = %308
  %343 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %344 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %345 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %344, i32 0, i32 2
  %346 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %347 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @bnxt_hwrm_rss_cfg(%struct.bnxt_softc* %343, %struct.TYPE_24__* %345, i32 %349)
  store i32 %350, i32* %7, align 4
  %351 = load i32, i32* %7, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %342
  br label %486

354:                                              ; preds = %342
  %355 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %356 = call i32 @bnxt_hwrm_vnic_tpa_cfg(%struct.bnxt_softc* %355)
  store i32 %356, i32* %7, align 4
  %357 = load i32, i32* %7, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %354
  br label %486

360:                                              ; preds = %354
  store i32 0, i32* %5, align 4
  br label %361

361:                                              ; preds = %471, %360
  %362 = load i32, i32* %5, align 4
  %363 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %364 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = icmp slt i32 %362, %365
  br i1 %366, label %367, label %474

367:                                              ; preds = %361
  %368 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %369 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %370 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %369, i32 0, i32 6
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %370, align 8
  %372 = load i32, i32* %5, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i64 %373
  %375 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %376 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %375, i32 0, i32 7
  %377 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i32, i32* %5, align 4
  %380 = sext i32 %379 to i64
  %381 = mul i64 4, %380
  %382 = add i64 %378, %381
  %383 = call i32 @bnxt_hwrm_stat_ctx_alloc(%struct.bnxt_softc* %368, %struct.TYPE_23__* %374, i64 %382)
  store i32 %383, i32* %7, align 4
  %384 = load i32, i32* %7, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %367
  br label %486

387:                                              ; preds = %367
  %388 = load i8*, i8** @UINT32_MAX, align 8
  %389 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %390 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %389, i32 0, i32 6
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** %390, align 8
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 3
  store i8* %388, i8** %395, align 8
  %396 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %397 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %396, i32 0, i32 6
  %398 = load %struct.TYPE_23__*, %struct.TYPE_23__** %397, align 8
  %399 = load i32, i32* %5, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i32 0, i32 0
  store i32 1, i32* %402, align 8
  %403 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %404 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %403, i32 0, i32 6
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %404, align 8
  %406 = load i32, i32* %5, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i64 %407
  %409 = call i32 @bnxt_mark_cpr_invalid(%struct.TYPE_23__* %408)
  %410 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %411 = load i32, i32* @HWRM_RING_ALLOC_INPUT_RING_TYPE_L2_CMPL, align 4
  %412 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %413 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %412, i32 0, i32 6
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %413, align 8
  %415 = load i32, i32* %5, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 2
  %419 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %420 = trunc i64 %419 to i32
  %421 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %422 = call i32 @bnxt_hwrm_ring_alloc(%struct.bnxt_softc* %410, i32 %411, %struct.TYPE_18__* %418, i32 %420, i64 %421, i32 0)
  store i32 %422, i32* %7, align 4
  %423 = load i32, i32* %7, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %387
  br label %486

426:                                              ; preds = %387
  %427 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %428 = load i32, i32* @HWRM_RING_ALLOC_INPUT_RING_TYPE_TX, align 4
  %429 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %430 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %429, i32 0, i32 5
  %431 = load %struct.TYPE_18__*, %struct.TYPE_18__** %430, align 8
  %432 = load i32, i32* %5, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i64 %433
  %435 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %436 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %435, i32 0, i32 6
  %437 = load %struct.TYPE_23__*, %struct.TYPE_23__** %436, align 8
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %440, i32 0, i32 2
  %442 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %445 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %444, i32 0, i32 6
  %446 = load %struct.TYPE_23__*, %struct.TYPE_23__** %445, align 8
  %447 = load i32, i32* %5, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %446, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = call i32 @bnxt_hwrm_ring_alloc(%struct.bnxt_softc* %427, i32 %428, %struct.TYPE_18__* %434, i32 %443, i64 %451, i32 0)
  store i32 %452, i32* %7, align 4
  %453 = load i32, i32* %7, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %426
  br label %486

456:                                              ; preds = %426
  %457 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %458 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %457, i32 0, i32 5
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %458, align 8
  %460 = load i32, i32* %5, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i64 %461
  %463 = call i32 @BNXT_TX_DB(%struct.TYPE_18__* %462, i32 0)
  %464 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %465 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %464, i32 0, i32 5
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %465, align 8
  %467 = load i32, i32* %5, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i64 %468
  %470 = call i32 @BNXT_TX_DB(%struct.TYPE_18__* %469, i32 0)
  br label %471

471:                                              ; preds = %456
  %472 = load i32, i32* %5, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %5, align 4
  br label %361

474:                                              ; preds = %361
  %475 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %476 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %475, i32 0, i32 4
  %477 = call i32 @bnxt_do_enable_intr(%struct.TYPE_23__* %476)
  %478 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %479 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %478, i32 0, i32 3
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @bnxt_media_status(i32 %480, %struct.ifmediareq* %4)
  %482 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %483 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %484 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %483, i32 0, i32 2
  %485 = call i32 @bnxt_hwrm_cfa_l2_set_rx_mask(%struct.bnxt_softc* %482, %struct.TYPE_24__* %484)
  br label %491

486:                                              ; preds = %455, %425, %386, %359, %353, %306, %298, %290, %265, %252, %165, %135, %119, %72, %45, %39
  %487 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %488 = call i32 @bnxt_hwrm_func_reset(%struct.bnxt_softc* %487)
  %489 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %490 = call i32 @bnxt_clear_ids(%struct.bnxt_softc* %489)
  br label %491

491:                                              ; preds = %486, %474, %14
  ret void
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @bnxt_hwrm_func_reset(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_clear_ids(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_mark_cpr_invalid(%struct.TYPE_23__*) #1

declare dso_local i32 @bnxt_hwrm_ring_alloc(%struct.bnxt_softc*, i32, %struct.TYPE_18__*, i32, i64, i32) #1

declare dso_local i32 @bnxt_cfg_async_cr(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_hwrm_stat_ctx_alloc(%struct.bnxt_softc*, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @BNXT_RX_DB(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @bnxt_hwrm_ring_grp_alloc(%struct.bnxt_softc*, %struct.TYPE_17__*) #1

declare dso_local i32 @bnxt_hwrm_vnic_ctx_alloc(%struct.bnxt_softc*, i32*) #1

declare dso_local i32 @bnxt_hwrm_vnic_alloc(%struct.bnxt_softc*, %struct.TYPE_24__*) #1

declare dso_local i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt_softc*, %struct.TYPE_24__*) #1

declare dso_local i32 @bnxt_hwrm_set_filter(%struct.bnxt_softc*, %struct.TYPE_24__*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @bnxt_hwrm_rss_cfg(%struct.bnxt_softc*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @bnxt_hwrm_vnic_tpa_cfg(%struct.bnxt_softc*) #1

declare dso_local i32 @BNXT_TX_DB(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @bnxt_do_enable_intr(%struct.TYPE_23__*) #1

declare dso_local i32 @bnxt_media_status(i32, %struct.ifmediareq*) #1

declare dso_local i32 @bnxt_hwrm_cfa_l2_set_rx_mask(%struct.bnxt_softc*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
