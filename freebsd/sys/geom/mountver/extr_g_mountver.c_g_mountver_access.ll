; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i32, %struct.g_geom* }
%struct.g_geom = type { %struct.g_mountver_softc*, i32 }
%struct.g_mountver_softc = type { i32, i32, i32, i64 }
%struct.g_consumer = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Trying to access withered provider \22%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_mountver_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_mountver_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_mountver_softc*, align 8
  %11 = alloca %struct.g_geom*, align 8
  %12 = alloca %struct.g_consumer*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call i32 (...) @g_topology_assert()
  %14 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %15 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %14, i32 0, i32 1
  %16 = load %struct.g_geom*, %struct.g_geom** %15, align 8
  store %struct.g_geom* %16, %struct.g_geom** %11, align 8
  %17 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %18 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %17, i32 0, i32 1
  %19 = call %struct.g_consumer* @LIST_FIRST(i32* %18)
  store %struct.g_consumer* %19, %struct.g_consumer** %12, align 8
  %20 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %21 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %20, i32 0, i32 0
  %22 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %21, align 8
  store %struct.g_mountver_softc* %22, %struct.g_mountver_softc** %10, align 8
  %23 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %10, align 8
  %24 = icmp eq %struct.g_mountver_softc* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %71

35:                                               ; preds = %31, %28, %25, %4
  %36 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %10, align 8
  %37 = icmp ne %struct.g_mountver_softc* %36, null
  %38 = zext i1 %37 to i32
  %39 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %40 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %38, i8* %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %10, align 8
  %47 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %10, align 8
  %52 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %10, align 8
  %57 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.g_mountver_softc*, %struct.g_mountver_softc** %10, align 8
  %61 = getelementptr inbounds %struct.g_mountver_softc, %struct.g_mountver_softc* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %71

65:                                               ; preds = %35
  %66 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @g_access(%struct.g_consumer* %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %64, %34
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
