; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_providergone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_providergone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.disk = type { i32 (%struct.disk*)* }
%struct.g_disk_softc = type { i64*, i32, i32, i32*, i32, %struct.disk* }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_provider*)* @g_disk_providergone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_disk_providergone(%struct.g_provider* %0) #0 {
  %2 = alloca %struct.g_provider*, align 8
  %3 = alloca %struct.disk*, align 8
  %4 = alloca %struct.g_disk_softc*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %2, align 8
  %5 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %6 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to %struct.g_disk_softc*
  store %struct.g_disk_softc* %8, %struct.g_disk_softc** %4, align 8
  %9 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %10 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %9, i32 0, i32 5
  %11 = load %struct.disk*, %struct.disk** %10, align 8
  store %struct.disk* %11, %struct.disk** %3, align 8
  %12 = load %struct.disk*, %struct.disk** %3, align 8
  %13 = icmp ne %struct.disk* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.disk*, %struct.disk** %3, align 8
  %16 = getelementptr inbounds %struct.disk, %struct.disk* %15, i32 0, i32 0
  %17 = load i32 (%struct.disk*)*, i32 (%struct.disk*)** %16, align 8
  %18 = icmp ne i32 (%struct.disk*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.disk*, %struct.disk** %3, align 8
  %21 = getelementptr inbounds %struct.disk, %struct.disk* %20, i32 0, i32 0
  %22 = load i32 (%struct.disk*)*, i32 (%struct.disk*)** %21, align 8
  %23 = load %struct.disk*, %struct.disk** %3, align 8
  %24 = call i32 %22(%struct.disk* %23)
  br label %25

25:                                               ; preds = %19, %14, %1
  %26 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %27 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %32 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %31, i32 0, i32 4
  %33 = call i32 @sysctl_ctx_free(i32* %32)
  %34 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %35 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %38 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %45 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @led_set(i64* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %49 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %36
  %53 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %54 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %56 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %60 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %59, i32 0, i32 2
  %61 = call i32 @mtx_destroy(i32* %60)
  %62 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %63 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %62, i32 0, i32 1
  %64 = call i32 @mtx_destroy(i32* %63)
  %65 = load %struct.g_disk_softc*, %struct.g_disk_softc** %4, align 8
  %66 = call i32 @g_free(%struct.g_disk_softc* %65)
  ret void
}

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @led_set(i64*, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @g_free(%struct.g_disk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
