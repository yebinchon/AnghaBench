; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_init_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_init_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i64, i32, i64, i32*, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mm_init_scan(%struct.drm_mm* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.drm_mm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.drm_mm* %0, %struct.drm_mm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %11 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %14 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %17 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %19 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %21 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %23 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %25 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %27 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
