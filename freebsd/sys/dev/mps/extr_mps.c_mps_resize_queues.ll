; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_resize_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_resize_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@MPS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Sized queues to q=%d reqs=%d replies=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*)* @mps_resize_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_resize_queues(%struct.mps_softc* %0) #0 {
  %2 = alloca %struct.mps_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %2, align 8
  %7 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %7, i32 0, i32 13
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MAX(i32 1, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %12, i32 0, i32 11
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @MIN(i32 %11, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @MAX(i32 2, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %24, i32 0, i32 11
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @MIN(i32 %23, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %35 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %38 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %47 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %46, i32 0, i32 11
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @MIN(i32 %45, i32 %50)
  %52 = getelementptr i8, i8* %51, i64 -1
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %55 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %54, i32 0, i32 10
  store i64 %53, i64* %55, align 8
  %56 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %57 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %56, i32 0, i32 11
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 4
  %62 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %63 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %65 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %67, 4
  %69 = sub i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %73 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %72, i32 0, i32 11
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %71, %76
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %5, align 4
  %81 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %82 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %1
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %88 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = mul nsw i32 %89, %90
  %92 = call i32 @min(i32 %86, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %95 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  br label %103

96:                                               ; preds = %1
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %99 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @MAXPHYS, align 4
  %102 = call i32 @min(i32 %100, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %96, %85
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = sdiv i32 %104, %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %108, 2
  %110 = load i32, i32* %6, align 4
  %111 = sdiv i32 %109, %110
  %112 = load i32, i32* %3, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %115 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  %116 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %117 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %103
  %121 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %122 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %125 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %123, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %120
  %130 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %131 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %135 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %129, %120, %103
  %137 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %138 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %137, i32 0, i32 11
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %141, 2
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %145 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %144, i32 0, i32 9
  store i32 1, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %136
  %147 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %148 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %147, i32 0, i32 9
  %149 = load i32, i32* %148, align 8
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %151, label %184

151:                                              ; preds = %146
  %152 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %153 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @mp_ncpus, align 4
  %156 = call i8* @MIN(i32 %154, i32 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %159 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 8
  %160 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %161 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %164 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %163, i32 0, i32 11
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @MIN(i32 %162, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %171 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %170, i32 0, i32 9
  store i32 %169, i32* %171, align 8
  %172 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %173 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %176 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 8
  %178 = sdiv i32 %174, %177
  %179 = icmp slt i32 %178, 2
  br i1 %179, label %180, label %183

180:                                              ; preds = %151
  %181 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %182 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %181, i32 0, i32 9
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %151
  br label %184

184:                                              ; preds = %183, %146
  %185 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %186 = load i32, i32* @MPS_INIT, align 4
  %187 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %188 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %191 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %194 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %193, i32 0, i32 10
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @mps_dprint(%struct.mps_softc* %185, i32 %186, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %189, i32 %192, i64 %195)
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
