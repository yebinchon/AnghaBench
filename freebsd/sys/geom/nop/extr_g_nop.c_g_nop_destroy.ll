; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/nop/extr_g_nop.c_g_nop_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { i32, i32, %struct.g_nop_softc* }
%struct.g_nop_softc = type { i32 }
%struct.g_provider = type { i64, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Device %s is still open, so it can't be definitely removed.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Device %s is still open (r%dw%de%d).\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Device %s removed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_geom*, i64)* @g_nop_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_nop_destroy(%struct.g_geom* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.g_nop_softc*, align 8
  %7 = alloca %struct.g_provider*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %10 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %9, i32 0, i32 2
  %11 = load %struct.g_nop_softc*, %struct.g_nop_softc** %10, align 8
  store %struct.g_nop_softc* %11, %struct.g_nop_softc** %6, align 8
  %12 = load %struct.g_nop_softc*, %struct.g_nop_softc** %6, align 8
  %13 = icmp eq %struct.g_nop_softc* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %18 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %17, i32 0, i32 1
  %19 = call %struct.g_provider* @LIST_FIRST(i32* %18)
  store %struct.g_provider* %19, %struct.g_provider** %7, align 8
  %20 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %21 = icmp ne %struct.g_provider* %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %32, %27, %22
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, i32, ...) @G_NOP_DEBUG(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %60

45:                                               ; preds = %37
  %46 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %47 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %50 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %53 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %56 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, i32, ...) @G_NOP_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %48, i64 %51, i64 %54, i64 %57)
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %3, align 4
  br label %70

60:                                               ; preds = %40
  br label %66

61:                                               ; preds = %32, %16
  %62 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %63 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, i32, ...) @G_NOP_DEBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %60
  %67 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %68 = load i32, i32* @ENXIO, align 4
  %69 = call i32 @g_wither_geom(%struct.g_geom* %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %45, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @G_NOP_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
