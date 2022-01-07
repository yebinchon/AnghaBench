; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_resize_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_resize_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@MPI2_VERSION_02_05 = common dso_local global i64 0, align 8
@MPR_DEFAULT_CHAIN_SEG_SIZE = common dso_local global i32 0, align 4
@MPR_MAX_CHAIN_ELEMENT_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@MPR_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Sized queues to q=%d reqs=%d replies=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpr_softc*)* @mpr_resize_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpr_resize_queues(%struct.mpr_softc* %0) #0 {
  %2 = alloca %struct.mpr_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %2, align 8
  %8 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MAX(i32 1, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %13, i32 0, i32 12
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @MIN(i32 %12, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %21 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MAX(i32 2, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %25, i32 0, i32 12
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @MIN(i32 %24, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %41 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %44 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %47, i32 0, i32 12
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @MIN(i32 %46, i32 %51)
  %53 = getelementptr i8, i8* %52, i64 -1
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %56 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %55, i32 0, i32 11
  store i64 %54, i64* %56, align 8
  %57 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %58 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %57, i32 0, i32 12
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 4
  %63 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %64 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %66 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %65, i32 0, i32 12
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MPI2_VERSION_02_05, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %1
  %73 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %74 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %73, i32 0, i32 12
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @htole16(i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* @MPR_DEFAULT_CHAIN_SEG_SIZE, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %72
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @MPR_MAX_CHAIN_ELEMENT_SIZE, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %88 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  br label %95

89:                                               ; preds = %1
  %90 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %91 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %94 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %97 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %99, 4
  %101 = sub i64 %100, 1
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %105 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %104, i32 0, i32 12
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %103, %108
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* @PAGE_SIZE, align 4
  %112 = mul nsw i32 %110, %111
  store i32 %112, i32* %5, align 4
  %113 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %114 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %95
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %120 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = mul nsw i32 %121, %122
  %124 = call i32 @min(i32 %118, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %127 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  br label %135

128:                                              ; preds = %95
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %131 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @MAXPHYS, align 4
  %134 = call i32 @min(i32 %132, i32 %133)
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %128, %117
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = sdiv i32 %136, %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %138, %139
  %141 = sub nsw i32 %140, 2
  %142 = load i32, i32* %6, align 4
  %143 = sdiv i32 %141, %142
  %144 = load i32, i32* %3, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %147 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 8
  %148 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %149 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %135
  %153 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %154 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %153, i32 0, i32 9
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %157 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = icmp slt i64 %155, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %152
  %162 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %163 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %162, i32 0, i32 9
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %167 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %161, %152, %135
  %169 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %170 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %169, i32 0, i32 12
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %177 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %176, i32 0, i32 10
  store i32 1, i32* %177, align 8
  br label %178

178:                                              ; preds = %175, %168
  %179 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %180 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %216

183:                                              ; preds = %178
  %184 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %185 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %184, i32 0, i32 10
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @mp_ncpus, align 4
  %188 = call i8* @MIN(i32 %186, i32 %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %191 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %190, i32 0, i32 10
  store i32 %189, i32* %191, align 8
  %192 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %193 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %196 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %195, i32 0, i32 12
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @MIN(i32 %194, i32 %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %203 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %202, i32 0, i32 10
  store i32 %201, i32* %203, align 8
  %204 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %205 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %208 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %207, i32 0, i32 10
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %206, %209
  %211 = icmp slt i32 %210, 2
  br i1 %211, label %212, label %215

212:                                              ; preds = %183
  %213 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %214 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %213, i32 0, i32 10
  store i32 1, i32* %214, align 8
  br label %215

215:                                              ; preds = %212, %183
  br label %216

216:                                              ; preds = %215, %178
  %217 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %218 = load i32, i32* @MPR_INIT, align 4
  %219 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %220 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %219, i32 0, i32 10
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %223 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %226 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %225, i32 0, i32 11
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @mpr_dprint(%struct.mpr_softc* %217, i32 %218, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %221, i32 %224, i64 %227)
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
