; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_mrsas_get_best_arm_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_mrsas_get_best_arm_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i64, i64, i32** }
%struct.TYPE_5__ = type { i64*, i32* }
%struct.IO_REQUEST_INFO = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@RAID_CTX_SPANARM_SPAN_MASK = common dso_local global i32 0, align 4
@RAID_CTX_SPANARM_SPAN_SHIFT = common dso_local global i32 0, align 4
@RAID_CTX_SPANARM_ARM_MASK = common dso_local global i32 0, align 4
@MR_DEVHANDLE_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_get_best_arm_pd(%struct.mrsas_softc* %0, %struct.TYPE_5__* %1, %struct.IO_REQUEST_INFO* %2) #0 {
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.IO_REQUEST_INFO*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.IO_REQUEST_INFO* %2, %struct.IO_REQUEST_INFO** %6, align 8
  %24 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %25 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %22, align 8
  %27 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %28 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %23, align 4
  %30 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %31 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RAID_CTX_SPANARM_SPAN_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %18, align 4
  %37 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %38 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RAID_CTX_SPANARM_ARM_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %19, align 4
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 3
  %44 = load i32**, i32*** %43, align 8
  %45 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %46 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %44, i64 %49
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  %52 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %53 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @MR_TargetIdToLdGet(i32 %54, i32* %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call %struct.TYPE_6__* @MR_LdRaidGet(i64 %57, i32* %58)
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %7, align 8
  %60 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %3
  %65 = load i32*, i32** %8, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @SPAN_ROW_SIZE(i32* %65, i64 %66, i32 %67)
  br label %73

69:                                               ; preds = %3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i32 [ %68, %64 ], [ %72, %69 ]
  store i32 %74, i32* %21, align 4
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* %18, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @MR_LdSpanArrayGet(i64 %75, i32 %76, i32* %77)
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @MR_ArPdGet(i32 %79, i32 %80, i32* %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %21, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %21, align 4
  %92 = sub nsw i32 %90, %91
  br label %96

93:                                               ; preds = %73
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, 1
  br label %96

96:                                               ; preds = %93, %88
  %97 = phi i32 [ %92, %88 ], [ %95, %93 ]
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @MR_ArPdGet(i32 %83, i32 %97, i32* %98)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = call i64 @MR_PdDevHandleGet(i32 %100, i32* %101)
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @MR_DEVHANDLE_INVALID, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* %19, align 4
  store i32 %107, i32* %15, align 4
  br label %196

108:                                              ; preds = %96
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i64 @mrsas_atomic_read(i32* %114)
  store i64 %115, i64* %10, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i64 @mrsas_atomic_read(i32* %121)
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %22, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @ABS_DIFF(i64 %123, i64 %130)
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %22, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @ABS_DIFF(i64 %132, i64 %139)
  store i64 %140, i64* %14, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %14, align 8
  %143 = icmp sle i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %108
  %145 = load i32, i32* %19, align 4
  br label %149

146:                                              ; preds = %108
  %147 = load i32, i32* %19, align 4
  %148 = xor i32 %147, 1
  br label %149

149:                                              ; preds = %146, %144
  %150 = phi i32 [ %145, %144 ], [ %148, %146 ]
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %19, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %158 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %156, %159
  %161 = icmp sgt i64 %155, %160
  br i1 %161, label %174, label %162

162:                                              ; preds = %154, %149
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %19, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %162
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* %10, align 8
  %169 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %170 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %168, %171
  %173 = icmp sgt i64 %167, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %166, %154
  %175 = load i32, i32* %15, align 4
  %176 = xor i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %177

177:                                              ; preds = %174, %166, %162
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %180 = shl i32 %178, %179
  %181 = load i32, i32* %15, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %184 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %19, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %177
  %189 = load i32, i32* %16, align 4
  br label %192

190:                                              ; preds = %177
  %191 = load i32, i32* %17, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  %194 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %195 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %192, %106
  %197 = load i64, i64* %22, align 8
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %197, %199
  %201 = sub nsw i64 %200, 1
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %19, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %196
  %209 = load i32, i32* %16, align 4
  br label %212

210:                                              ; preds = %196
  %211 = load i32, i32* %17, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %209, %208 ], [ %211, %210 ]
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %204, i64 %214
  store i64 %201, i64* %215, align 8
  %216 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %217 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  ret i32 %218
}

declare dso_local i64 @MR_TargetIdToLdGet(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @MR_LdRaidGet(i64, i32*) #1

declare dso_local i32 @SPAN_ROW_SIZE(i32*, i64, i32) #1

declare dso_local i32 @MR_LdSpanArrayGet(i64, i32, i32*) #1

declare dso_local i32 @MR_ArPdGet(i32, i32, i32*) #1

declare dso_local i64 @MR_PdDevHandleGet(i32, i32*) #1

declare dso_local i64 @mrsas_atomic_read(i32*) #1

declare dso_local i64 @ABS_DIFF(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
