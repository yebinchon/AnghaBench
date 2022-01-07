; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_intel_gtt_insert_sg_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_intel_gtt_insert_sg_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.agp_i810_softc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i64)*, i32 (i32, i64, i32, i64)* }

@AGP_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp_intel_gtt_insert_sg_entries(i32 %0, %struct.sglist* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sglist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.agp_i810_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sglist* %1, %struct.sglist** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.agp_i810_softc* @device_get_softc(i32 %14)
  store %struct.agp_i810_softc* %15, %struct.agp_i810_softc** %9, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %16

16:                                               ; preds = %67, %4
  %17 = load i64, i64* %13, align 8
  %18 = load %struct.sglist*, %struct.sglist** %6, align 8
  %19 = getelementptr inbounds %struct.sglist, %struct.sglist* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %16
  %23 = load %struct.sglist*, %struct.sglist** %6, align 8
  %24 = getelementptr inbounds %struct.sglist, %struct.sglist* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.sglist*, %struct.sglist** %6, align 8
  %31 = getelementptr inbounds %struct.sglist, %struct.sglist* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %63, %22
  %38 = load i64, i64* %11, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %9, align 8
  %42 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32 (i32, i64, i32, i64)*, i32 (i32, i64, i32, i64)** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i64, i64* %8, align 8
  %54 = call i32 %47(i32 %48, i64 %51, i32 %52, i64 %53)
  %55 = load i64, i64* @AGP_PAGE_SIZE, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i64, i64* @AGP_PAGE_SIZE, align 8
  %61 = load i64, i64* %11, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %11, align 8
  br label %63

63:                                               ; preds = %40
  %64 = load i64, i64* %12, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %37

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %13, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %13, align 8
  br label %16

70:                                               ; preds = %16
  %71 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %9, align 8
  %72 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32 (i32, i64)*, i32 (i32, i64)** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add nsw i64 %79, %80
  %82 = sub nsw i64 %81, 1
  %83 = call i32 %77(i32 %78, i64 %82)
  ret void
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
