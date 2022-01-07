; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_kill_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_kill_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i32 }
%struct.g_consumer = type { i32, i32, i32, %struct.g_provider*, i32* }
%struct.g_provider = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@G_GEOM_WITHER = common dso_local global i32 0, align 4
@g_raid_destroy_consumer = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Consumer %s destroyed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid_kill_consumer(%struct.g_raid_softc* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i32, align 4
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %7 = call i32 (...) @g_topology_assert_not()
  %8 = call i32 (...) @g_topology_lock()
  %9 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %10 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %9, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %12 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %13 = call i64 @g_raid_consumer_is_busy(%struct.g_raid_softc* %11, %struct.g_consumer* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %82

16:                                               ; preds = %2
  %17 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 3
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %5, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %21 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @G_GEOM_WITHER, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %24
  br label %35

35:                                               ; preds = %34, %16
  %36 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %37 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %42 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %47 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45, %40, %35
  %51 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %52 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %53 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 0, %54
  %56 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %57 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 0, %58
  %60 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %61 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 @g_access(%struct.g_consumer* %51, i32 %55, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %50, %45
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* @g_raid_destroy_consumer, align 4
  %70 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = call i32 @g_post_event(i32 %69, %struct.g_consumer* %70, i32 %71, i32* null)
  br label %82

73:                                               ; preds = %65
  %74 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %75 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %79 = call i32 @g_detach(%struct.g_consumer* %78)
  %80 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %81 = call i32 @g_destroy_consumer(%struct.g_consumer* %80)
  br label %82

82:                                               ; preds = %73, %68, %15
  %83 = call i32 (...) @g_topology_unlock()
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i64 @g_raid_consumer_is_busy(%struct.g_raid_softc*, %struct.g_consumer*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.g_consumer*, i32, i32*) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_topology_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
