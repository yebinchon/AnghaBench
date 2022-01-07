; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32, i32, i64, i32, i64, i32, %struct.g_raid3_disk*, %struct.TYPE_2__*, i32 }
%struct.g_raid3_disk = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_NOFAILSYNC = common dso_local global i32 0, align 4
@g_raid3_idletime = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@g_raid3_shutdown = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Disk %s (device %s) marked as clean.\00", align 1
@G_RAID3_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid3_softc*, i32)* @g_raid3_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_idle(%struct.g_raid3_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid3_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_raid3_disk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 (...) @g_topology_assert_not()
  %10 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %11 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %10, i32 0, i32 8
  %12 = load i32, i32* @SX_XLOCKED, align 4
  %13 = call i32 @sx_assert(i32* %11, i32 %12)
  %14 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %15 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %14, i32 0, i32 7
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %108

19:                                               ; preds = %2
  %20 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %21 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOFAILSYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %108

27:                                               ; preds = %19
  %28 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %29 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %108

33:                                               ; preds = %27
  %34 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %35 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %108

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %47 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %46, i32 0, i32 7
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %45, %39
  %53 = load i32, i32* @g_raid3_idletime, align 4
  %54 = load i32, i32* @time_uptime, align 4
  %55 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %56 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = sub nsw i32 %53, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @g_raid3_shutdown, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %108

67:                                               ; preds = %62, %52
  br label %68

68:                                               ; preds = %67, %45, %42
  %69 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %70 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  store i64 0, i64* %7, align 8
  br label %71

71:                                               ; preds = %104, %68
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %74 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %71
  %78 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %79 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %78, i32 0, i32 6
  %80 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %80, i64 %81
  store %struct.g_raid3_disk* %82, %struct.g_raid3_disk** %6, align 8
  %83 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %84 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @G_RAID3_DISK_STATE_ACTIVE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %104

89:                                               ; preds = %77
  %90 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %91 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %90)
  %92 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %93 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32, i32* @G_RAID3_DISK_FLAG_DIRTY, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %99 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %103 = call i32 @g_raid3_update_metadata(%struct.g_raid3_disk* %102)
  br label %104

104:                                              ; preds = %89, %88
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %71

107:                                              ; preds = %71
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %65, %38, %32, %26, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_update_metadata(%struct.g_raid3_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
