; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_intel_gtt_insert_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_intel_gtt_insert_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.agp_i810_softc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, i64)*, i32 (i32, i64, i32, i64)* }

@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp_intel_gtt_insert_pages(i32 %0, i64 %1, i64 %2, %struct.TYPE_8__** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.agp_i810_softc*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.agp_i810_softc* @device_get_softc(i32 %13)
  store %struct.agp_i810_softc* %14, %struct.agp_i810_softc** %11, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %57, %5
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @MPASS(i32 %37)
  %39 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %11, align 8
  %40 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32 (i32, i64, i32, i64)*, i32 (i32, i64, i32, i64)** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__* %53)
  %55 = load i64, i64* %10, align 8
  %56 = call i32 %45(i32 %46, i64 %49, i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %19
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %15

60:                                               ; preds = %15
  %61 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %11, align 8
  %62 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (i32, i64)*, i32 (i32, i64)** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %69, %70
  %72 = sub i64 %71, 1
  %73 = call i32 %67(i32 %68, i64 %72)
  ret void
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
