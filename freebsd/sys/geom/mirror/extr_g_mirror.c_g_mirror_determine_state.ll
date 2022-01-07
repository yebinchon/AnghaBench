; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_determine_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_determine_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { i32, %struct.TYPE_2__, %struct.g_mirror_softc* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.g_mirror_softc = type { i64, i32, i32 }

@G_MIRROR_DISK_FLAG_SYNCHRONIZING = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_ACTIVE = common dso_local global i32 0, align 4
@G_MIRROR_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@G_MIRROR_DEVICE_FLAG_NOAUTOSYNC = common dso_local global i32 0, align 4
@G_MIRROR_DISK_FLAG_FORCE_SYNC = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_SYNCHRONIZING = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_STALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"Device %s was started before the freshest disk (%s) arrives!! It will not be connected to the running device.\00", align 1
@G_MIRROR_DISK_STATE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"State for %s disk: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_mirror_disk*)* @g_mirror_determine_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_mirror_determine_state(%struct.g_mirror_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_mirror_disk*, align 8
  %4 = alloca %struct.g_mirror_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.g_mirror_disk* %0, %struct.g_mirror_disk** %3, align 8
  %6 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %7 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %6, i32 0, i32 2
  %8 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %7, align 8
  store %struct.g_mirror_softc* %8, %struct.g_mirror_softc** %4, align 8
  %9 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %10 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %13 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %11, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %1
  %18 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %19 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @G_MIRROR_DISK_FLAG_SYNCHRONIZING, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %26 = load i32, i32* @G_MIRROR_DISK_STATE_ACTIVE, align 4
  %27 = call i64 @g_mirror_ndisks(%struct.g_mirror_softc* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %31 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @G_MIRROR_DISK_FLAG_DIRTY, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29, %24
  %37 = load i32, i32* @G_MIRROR_DISK_STATE_ACTIVE, align 4
  store i32 %37, i32* %5, align 4
  br label %57

38:                                               ; preds = %29, %17
  %39 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %40 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @G_MIRROR_DEVICE_FLAG_NOAUTOSYNC, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %47 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @G_MIRROR_DISK_FLAG_FORCE_SYNC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %38
  %53 = load i32, i32* @G_MIRROR_DISK_STATE_SYNCHRONIZING, align 4
  store i32 %53, i32* %5, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @G_MIRROR_DISK_STATE_STALE, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %36
  br label %115

58:                                               ; preds = %1
  %59 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %60 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %64 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %58
  %68 = load i32, i32* @G_MIRROR_DISK_FLAG_SYNCHRONIZING, align 4
  %69 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %70 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %74 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %77 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %80 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %83 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  %85 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %86 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @G_MIRROR_DEVICE_FLAG_NOAUTOSYNC, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %67
  %92 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %93 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @G_MIRROR_DISK_FLAG_FORCE_SYNC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91, %67
  %99 = load i32, i32* @G_MIRROR_DISK_STATE_SYNCHRONIZING, align 4
  store i32 %99, i32* %5, align 4
  br label %102

100:                                              ; preds = %91
  %101 = load i32, i32* @G_MIRROR_DISK_STATE_STALE, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %98
  br label %114

103:                                              ; preds = %58
  %104 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %105 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %108 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %107)
  %109 = call i32 @G_MIRROR_DEBUG(i32 0, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %108)
  %110 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %111 = call i32 @g_mirror_destroy_disk(%struct.g_mirror_disk* %110)
  %112 = load i32, i32* @G_MIRROR_DISK_STATE_NONE, align 4
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %122

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %57
  %116 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %117 = call i32 @g_mirror_get_diskname(%struct.g_mirror_disk* %116)
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @g_mirror_disk_state2str(i32 %118)
  %120 = call i32 @G_MIRROR_DEBUG(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %119)
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %115, %103
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @g_mirror_ndisks(%struct.g_mirror_softc*, i32) #1

declare dso_local i32 @G_MIRROR_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_mirror_get_diskname(%struct.g_mirror_disk*) #1

declare dso_local i32 @g_mirror_destroy_disk(%struct.g_mirror_disk*) #1

declare dso_local i32 @g_mirror_disk_state2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
