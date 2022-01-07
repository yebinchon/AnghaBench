; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_kill_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_kill_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32 }
%struct.g_consumer = type { i32, i32, i32, %struct.g_provider*, i32* }
%struct.g_provider = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Consumer %s destroyed.\00", align 1
@G_GEOM_WITHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Access %s r%dw%de%d = %d\00", align 1
@g_raid3_destroy_consumer = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*, %struct.g_consumer*)* @g_raid3_kill_consumer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_kill_consumer(%struct.g_raid3_softc* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.g_raid3_softc*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i32, align 4
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %7 = call i32 (...) @g_topology_assert()
  %8 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %9 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %8, i32 0, i32 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %12 = call i64 @g_raid3_is_busy(%struct.g_raid3_softc* %10, %struct.g_consumer* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %103

15:                                               ; preds = %2
  %16 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %17 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %16, i32 0, i32 3
  %18 = load %struct.g_provider*, %struct.g_provider** %17, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %23 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %22, i32 0, i32 3
  %24 = load %struct.g_provider*, %struct.g_provider** %23, align 8
  store %struct.g_provider* %24, %struct.g_provider** %5, align 8
  store i32 0, i32* %6, align 4
  %25 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %26 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %15
  %30 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @G_GEOM_WITHER, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %29
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %45 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 0, %46
  %48 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %49 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 0, %50
  %52 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %53 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %47, i32 %51, i32 %55, i32 0)
  %57 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %58 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %40
  %62 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %63 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %68 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66, %61, %40
  %72 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %73 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %74 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 0, %75
  %77 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %78 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 0, %79
  %81 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %82 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 0, %83
  %85 = call i32 @g_access(%struct.g_consumer* %72, i32 %76, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %71, %66
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @g_raid3_destroy_consumer, align 4
  %91 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %92 = load i32, i32* @M_WAITOK, align 4
  %93 = call i32 @g_post_event(i32 %90, %struct.g_consumer* %91, i32 %92, i32* null)
  br label %103

94:                                               ; preds = %86
  %95 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %96 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, i32, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %100 = call i32 @g_detach(%struct.g_consumer* %99)
  %101 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %102 = call i32 @g_destroy_consumer(%struct.g_consumer* %101)
  br label %103

103:                                              ; preds = %94, %89, %14
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64 @g_raid3_is_busy(%struct.g_raid3_softc*, %struct.g_consumer*) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.g_consumer*, i32, i32*) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
