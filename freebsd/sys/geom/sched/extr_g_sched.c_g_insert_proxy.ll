; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_insert_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_insert_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.g_geom = type { i32*, i32, %struct.g_sched_softc* }
%struct.g_sched_softc = type { i32 }
%struct.g_provider = type { i64, i64, i32, i32, i32, %struct.g_geom*, i32, i32 }
%struct.g_consumer = type { i32, i32, i32 }

@g_sched_start = common dso_local global i32* null, align 8
@ticks = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@me = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@g_sched_temporary_start = common dso_local global i32* null, align 8
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@provider = common dso_local global i32 0, align 4
@G_SCHED_PROXYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_geom*, %struct.g_provider*, %struct.g_geom*, %struct.g_provider*, %struct.g_consumer*)* @g_insert_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_insert_proxy(%struct.g_geom* %0, %struct.g_provider* %1, %struct.g_geom* %2, %struct.g_provider* %3, %struct.g_consumer* %4) #0 {
  %6 = alloca %struct.g_geom*, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_provider*, align 8
  %10 = alloca %struct.g_consumer*, align 8
  %11 = alloca %struct.g_sched_softc*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %6, align 8
  store %struct.g_provider* %1, %struct.g_provider** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_provider* %3, %struct.g_provider** %9, align 8
  store %struct.g_consumer* %4, %struct.g_consumer** %10, align 8
  %16 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %17 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %16, i32 0, i32 2
  %18 = load %struct.g_sched_softc*, %struct.g_sched_softc** %17, align 8
  store %struct.g_sched_softc* %18, %struct.g_sched_softc** %11, align 8
  %19 = load i32*, i32** @g_sched_start, align 8
  store i32* %19, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @ticks, align 4
  %21 = load i32, i32* @hz, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %24 = call i32 @g_cancel_event(%struct.g_provider* %23)
  %25 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 0), align 8
  %35 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 5
  %37 = load %struct.g_geom*, %struct.g_geom** %36, align 8
  %38 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %12, align 8
  %40 = load i32*, i32** @g_sched_temporary_start, align 8
  %41 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %42 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  br label %43

43:                                               ; preds = %60, %5
  %44 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %45 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %48 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 0), align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @ticks, align 4
  %56 = sub nsw i32 %54, %55
  %57 = icmp sge i32 %56, 0
  br label %58

58:                                               ; preds = %53, %43
  %59 = phi i1 [ false, %43 ], [ %57, %53 ]
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %62 = load i32, i32* @PRIBIO, align 4
  %63 = load i32, i32* @hz, align 4
  %64 = sdiv i32 %63, 10
  %65 = call i32 @tsleep(%struct.g_provider* %61, i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %43

66:                                               ; preds = %58
  %67 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %68 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %71 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 0), align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32*, i32** %12, align 8
  store i32* %77, i32** %13, align 8
  %78 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %78, i32* %14, align 4
  br label %117

79:                                               ; preds = %66
  %80 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %81 = load i32, i32* @provider, align 4
  %82 = call i32 @LIST_REMOVE(%struct.g_provider* %80, i32 %81)
  %83 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %84 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %85 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %84, i32 0, i32 5
  store %struct.g_geom* %83, %struct.g_geom** %85, align 8
  %86 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %87 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %86, i32 0, i32 1
  %88 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %89 = load i32, i32* @provider, align 4
  %90 = call i32 @LIST_INSERT_HEAD(i32* %87, %struct.g_provider* %88, i32 %89)
  %91 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %92 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %95 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %97 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 4
  %98 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %99 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %102 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %104 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 4
  %105 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %106 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %109 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %111 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* @G_SCHED_PROXYING, align 4
  %113 = load %struct.g_sched_softc*, %struct.g_sched_softc** %11, align 8
  %114 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %79, %76
  %118 = load i32*, i32** %12, align 8
  %119 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %120 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @g_sched_flush_pending(i32* %121)
  %123 = load i32, i32* %14, align 4
  ret i32 %123
}

declare dso_local i32 @g_cancel_event(%struct.g_provider*) #1

declare dso_local i32 @tsleep(%struct.g_provider*, i32, i8*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_provider*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_provider*, i32) #1

declare dso_local i32 @g_sched_flush_pending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
