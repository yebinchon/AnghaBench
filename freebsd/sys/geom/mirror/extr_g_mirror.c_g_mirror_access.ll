; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i64, i32, %struct.g_mirror_softc* }
%struct.g_mirror_softc = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Access request for %s: r%dw%de%d.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"NULL softc (provider=%s).\00", align 1
@G_MIRROR_DEVICE_FLAG_DESTROY = common dso_local global i32 0, align 4
@G_MIRROR_DEVICE_FLAG_CLOSEWAIT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@g_mirror_destroy_delayed = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_mirror_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_mirror_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.g_mirror_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.g_provider* %0, %struct.g_provider** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @g_topology_assert()
  %12 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %13 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @G_MIRROR_DEBUG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %20 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %19, i32 0, i32 2
  %21 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %20, align 8
  store %struct.g_mirror_softc* %21, %struct.g_mirror_softc** %9, align 8
  %22 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %23 = icmp ne %struct.g_mirror_softc* %22, null
  %24 = zext i1 %23 to i32
  %25 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %24, i8* %29)
  %31 = call i32 (...) @g_topology_unlock()
  %32 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %33 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %32, i32 0, i32 2
  %34 = call i32 @sx_xlock(i32* %33)
  %35 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %36 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @G_MIRROR_DEVICE_FLAG_DESTROY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %4
  %42 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %43 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @G_MIRROR_DEVICE_FLAG_CLOSEWAIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %50 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %49, i32 0, i32 3
  %51 = call i64 @LIST_EMPTY(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48, %41, %4
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %56, %53
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %59
  br label %105

65:                                               ; preds = %48
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %73 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %77 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %65
  %84 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %85 = call i32 @g_mirror_idle(%struct.g_mirror_softc* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %65
  %87 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %88 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @G_MIRROR_DEVICE_FLAG_CLOSEWAIT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %86
  %94 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %95 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* @g_mirror_destroy_delayed, align 4
  %100 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %101 = load i32, i32* @M_WAITOK, align 4
  %102 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %103 = call i32 @g_post_event(i32 %99, %struct.g_mirror_softc* %100, i32 %101, %struct.g_mirror_softc* %102, i32* null)
  br label %104

104:                                              ; preds = %98, %93, %86
  br label %105

105:                                              ; preds = %104, %64
  %106 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %9, align 8
  %107 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %106, i32 0, i32 2
  %108 = call i32 @sx_xunlock(i32* %107)
  %109 = call i32 (...) @g_topology_lock()
  %110 = load i32, i32* %10, align 4
  ret i32 %110
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @g_mirror_idle(%struct.g_mirror_softc*, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.g_mirror_softc*, i32, %struct.g_mirror_softc*, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
