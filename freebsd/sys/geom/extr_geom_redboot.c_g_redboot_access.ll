; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_redboot.c_g_redboot_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_redboot.c_g_redboot_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i64, %struct.g_geom* }
%struct.g_geom = type { %struct.g_slicer* }
%struct.g_slicer = type { %struct.g_redboot_softc* }
%struct.g_redboot_softc = type { i32 (%struct.g_provider.0*, i32, i32, i32)*, i64* }
%struct.g_provider.0 = type opaque

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_redboot_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_redboot_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_geom*, align 8
  %11 = alloca %struct.g_slicer*, align 8
  %12 = alloca %struct.g_redboot_softc*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %14 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %13, i32 0, i32 1
  %15 = load %struct.g_geom*, %struct.g_geom** %14, align 8
  store %struct.g_geom* %15, %struct.g_geom** %10, align 8
  %16 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %17 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %16, i32 0, i32 0
  %18 = load %struct.g_slicer*, %struct.g_slicer** %17, align 8
  store %struct.g_slicer* %18, %struct.g_slicer** %11, align 8
  %19 = load %struct.g_slicer*, %struct.g_slicer** %11, align 8
  %20 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %19, i32 0, i32 0
  %21 = load %struct.g_redboot_softc*, %struct.g_redboot_softc** %20, align 8
  store %struct.g_redboot_softc* %21, %struct.g_redboot_softc** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load %struct.g_redboot_softc*, %struct.g_redboot_softc** %12, align 8
  %26 = getelementptr inbounds %struct.g_redboot_softc, %struct.g_redboot_softc* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @EPERM, align 4
  store i32 %35, i32* %5, align 4
  br label %46

36:                                               ; preds = %24, %4
  %37 = load %struct.g_redboot_softc*, %struct.g_redboot_softc** %12, align 8
  %38 = getelementptr inbounds %struct.g_redboot_softc, %struct.g_redboot_softc* %37, i32 0, i32 0
  %39 = load i32 (%struct.g_provider.0*, i32, i32, i32)*, i32 (%struct.g_provider.0*, i32, i32, i32)** %38, align 8
  %40 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %41 = bitcast %struct.g_provider* %40 to %struct.g_provider.0*
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 %39(%struct.g_provider.0* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %36, %34
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
