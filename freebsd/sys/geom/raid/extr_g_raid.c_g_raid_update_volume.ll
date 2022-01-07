; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_update_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_update_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i64, i64, i32*, i64, i32, i32*, i32, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32, i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Event %s for volume %s.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"root_mount_rel %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*, i32)* @g_raid_update_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_update_volume(%struct.g_raid_volume* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid_volume*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_raid_softc*, align 8
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %8 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %7, i32 0, i32 7
  %9 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  store %struct.g_raid_softc* %9, %struct.g_raid_softc** %6, align 8
  %10 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %11 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %10, i32 0, i32 1
  %12 = load i32, i32* @SX_XLOCKED, align 4
  %13 = call i32 @sx_assert(i32* %11, i32 %12)
  %14 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @g_raid_volume_event2str(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %20 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, %struct.g_raid_softc*, i8*, i32*, ...) @G_RAID_DEBUG1(i32 2, %struct.g_raid_softc* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %21)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %53 [
    i32 130, label %24
    i32 128, label %33
    i32 129, label %42
  ]

24:                                               ; preds = %2
  %25 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %26 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %31 = call i32 @g_raid_destroy_provider(%struct.g_raid_volume* %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %66

33:                                               ; preds = %2
  %34 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %35 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %40 = call i32 @g_raid_launch_provider(%struct.g_raid_volume* %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %66

42:                                               ; preds = %2
  %43 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %44 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %49 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @G_RAID_TR_START(i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  store i32 0, i32* %3, align 4
  br label %99

53:                                               ; preds = %2
  %54 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %55 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %60 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @G_RAID_MD_VOLUME_EVENT(i32 %61, %struct.g_raid_volume* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %53
  store i32 0, i32* %3, align 4
  br label %99

66:                                               ; preds = %41, %32
  %67 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %68 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %73 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %75 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %76 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 (i32, %struct.g_raid_softc*, i8*, i32*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %77)
  %79 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %80 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @root_mount_rel(i32* %81)
  %83 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %84 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %83, i32 0, i32 2
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %71, %66
  %86 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %87 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %92 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %97 = call i32 @g_raid_destroy_volume(%struct.g_raid_volume* %96)
  br label %98

98:                                               ; preds = %95, %90, %85
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %65, %52
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32*, ...) #1

declare dso_local i32 @g_raid_volume_event2str(i32) #1

declare dso_local i32 @g_raid_destroy_provider(%struct.g_raid_volume*) #1

declare dso_local i32 @g_raid_launch_provider(%struct.g_raid_volume*) #1

declare dso_local i32 @G_RAID_TR_START(i32) #1

declare dso_local i32 @G_RAID_MD_VOLUME_EVENT(i32, %struct.g_raid_volume*, i32) #1

declare dso_local i32 @root_mount_rel(i32*) #1

declare dso_local i32 @g_raid_destroy_volume(%struct.g_raid_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
