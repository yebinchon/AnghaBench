; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_determine_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_determine_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { i32, %struct.TYPE_2__, %struct.g_raid3_softc* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.g_raid3_softc = type { i64, i32, i32 }

@G_RAID3_DISK_FLAG_SYNCHRONIZING = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_ACTIVE = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_NOAUTOSYNC = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_FORCE_SYNC = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_SYNCHRONIZING = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_STALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"Device %s was started before the freshest disk (%s) arrives!! It will not be connected to the running device.\00", align 1
@G_RAID3_DISK_STATE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"State for %s disk: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid3_disk*)* @g_raid3_determine_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_determine_state(%struct.g_raid3_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_raid3_disk*, align 8
  %4 = alloca %struct.g_raid3_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.g_raid3_disk* %0, %struct.g_raid3_disk** %3, align 8
  %6 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %7 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %6, i32 0, i32 2
  %8 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %7, align 8
  store %struct.g_raid3_softc* %8, %struct.g_raid3_softc** %4, align 8
  %9 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %10 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %13 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %11, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %1
  %18 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %19 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @G_RAID3_DISK_FLAG_SYNCHRONIZING, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @G_RAID3_DISK_STATE_ACTIVE, align 4
  store i32 %25, i32* %5, align 4
  br label %45

26:                                               ; preds = %17
  %27 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %28 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOAUTOSYNC, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %35 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @G_RAID3_DISK_FLAG_FORCE_SYNC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %26
  %41 = load i32, i32* @G_RAID3_DISK_STATE_SYNCHRONIZING, align 4
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @G_RAID3_DISK_STATE_STALE, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %24
  br label %103

46:                                               ; preds = %1
  %47 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %48 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %52 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %46
  %56 = load i32, i32* @G_RAID3_DISK_FLAG_SYNCHRONIZING, align 4
  %57 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %58 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %62 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %65 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %68 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %71 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %74 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @G_RAID3_DEVICE_FLAG_NOAUTOSYNC, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %55
  %80 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %81 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @G_RAID3_DISK_FLAG_FORCE_SYNC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %55
  %87 = load i32, i32* @G_RAID3_DISK_STATE_SYNCHRONIZING, align 4
  store i32 %87, i32* %5, align 4
  br label %90

88:                                               ; preds = %79
  %89 = load i32, i32* @G_RAID3_DISK_STATE_STALE, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %102

91:                                               ; preds = %46
  %92 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %93 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %96 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %95)
  %97 = call i32 @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %96)
  %98 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %99 = call i32 @g_raid3_destroy_disk(%struct.g_raid3_disk* %98)
  %100 = load i32, i32* @G_RAID3_DISK_STATE_NONE, align 4
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %110

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %45
  %104 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %105 = call i32 @g_raid3_get_diskname(%struct.g_raid3_disk* %104)
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @g_raid3_disk_state2str(i32 %106)
  %108 = call i32 @G_RAID3_DEBUG(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %107)
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %103, %91
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_raid3_get_diskname(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_destroy_disk(%struct.g_raid3_disk*) #1

declare dso_local i32 @g_raid3_disk_state2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
