; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_shutdown_vbus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_shutdown_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_12__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"hpt_shutdown_vbus\00", align 1
@osm_max_targets = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"hpt_shutdown_vbus done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32)* @hpt_shutdown_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt_shutdown_vbus(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = call i32 @KdPrint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = call i32 @hpt_stop_tasks(%struct.TYPE_14__* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %39, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @osm_max_targets, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ldm_find_target(i32 %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @hpt_flush_vdev(%struct.TYPE_14__* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @hpt_flush_vdev(%struct.TYPE_14__* %34, i64 %35)
  br label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = call i32 @hpt_lock_vbus(%struct.TYPE_14__* %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ldm_shutdown(i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = call i32 @hpt_unlock_vbus(%struct.TYPE_14__* %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ldm_release_vbus(i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %6, align 8
  br label %54

54:                                               ; preds = %68, %42
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = icmp ne %struct.TYPE_15__* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bus_teardown_intr(i32 %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %57
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %6, align 8
  br label %54

72:                                               ; preds = %54
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = call i32 @hpt_free_mem(%struct.TYPE_14__* %73)
  br label %75

75:                                               ; preds = %80, %72
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %6, align 8
  %79 = icmp ne %struct.TYPE_15__* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i32, i32* @M_DEVBUF, align 4
  %91 = call i32 @free(%struct.TYPE_14__* %89, i32 %90)
  br label %75

92:                                               ; preds = %75
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = load i32, i32* @M_DEVBUF, align 4
  %95 = call i32 @free(%struct.TYPE_14__* %93, i32 %94)
  %96 = call i32 @KdPrint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @hpt_stop_tasks(%struct.TYPE_14__*) #1

declare dso_local i64 @ldm_find_target(i32, i32) #1

declare dso_local i64 @hpt_flush_vdev(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @hpt_lock_vbus(%struct.TYPE_14__*) #1

declare dso_local i32 @ldm_shutdown(i32) #1

declare dso_local i32 @hpt_unlock_vbus(%struct.TYPE_14__*) #1

declare dso_local i32 @ldm_release_vbus(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @hpt_free_mem(%struct.TYPE_14__*) #1

declare dso_local i32 @free(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
