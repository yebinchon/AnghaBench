; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_update_state_raid5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_update_state_raid5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, i64, i64, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_subdisk = type { i32 }
%struct.g_raid_tr_raid5_object = type { i32, i64, i64 }

@TR_RAID5_F_DOING_SOME = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_STOPPED = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_STARTING = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_STALE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_RESYNC = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_UNINITIALIZED = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_DEGRADED = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_BROKEN = common dso_local global i64 0, align 8
@G_RAID_VOLUME_E_UP = common dso_local global i32 0, align 4
@G_RAID_VOLUME_E_DOWN = common dso_local global i32 0, align 4
@G_RAID_EVENT_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*, %struct.g_raid_subdisk*)* @g_raid_tr_update_state_raid5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_update_state_raid5(%struct.g_raid_volume* %0, %struct.g_raid_subdisk* %1) #0 {
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  %5 = alloca %struct.g_raid_tr_raid5_object*, align 8
  %6 = alloca %struct.g_raid_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %3, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %4, align 8
  %11 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %12 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %11, i32 0, i32 3
  %13 = load %struct.g_raid_softc*, %struct.g_raid_softc** %12, align 8
  store %struct.g_raid_softc* %13, %struct.g_raid_softc** %6, align 8
  %14 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %15 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.g_raid_tr_raid5_object*
  store %struct.g_raid_tr_raid5_object* %17, %struct.g_raid_tr_raid5_object** %5, align 8
  %18 = load %struct.g_raid_tr_raid5_object*, %struct.g_raid_tr_raid5_object** %5, align 8
  %19 = getelementptr inbounds %struct.g_raid_tr_raid5_object, %struct.g_raid_tr_raid5_object* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.g_raid_tr_raid5_object*, %struct.g_raid_tr_raid5_object** %5, align 8
  %24 = getelementptr inbounds %struct.g_raid_tr_raid5_object, %struct.g_raid_tr_raid5_object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TR_RAID5_F_DOING_SOME, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @G_RAID_VOLUME_S_STOPPED, align 8
  store i64 %30, i64* %7, align 8
  br label %104

31:                                               ; preds = %22, %2
  %32 = load %struct.g_raid_tr_raid5_object*, %struct.g_raid_tr_raid5_object** %5, align 8
  %33 = getelementptr inbounds %struct.g_raid_tr_raid5_object, %struct.g_raid_tr_raid5_object* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @G_RAID_VOLUME_S_STARTING, align 8
  store i64 %37, i64* %7, align 8
  br label %103

38:                                               ; preds = %31
  %39 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %40 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %41 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %43 = load i32, i32* @G_RAID_SUBDISK_S_STALE, align 4
  %44 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %42, i32 %43)
  %45 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %46 = load i32, i32* @G_RAID_SUBDISK_S_RESYNC, align 4
  %47 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %45, i32 %46)
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %50 = load i32, i32* @G_RAID_SUBDISK_S_UNINITIALIZED, align 4
  %51 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %54 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %38
  %58 = load i64, i64* @G_RAID_VOLUME_S_OPTIMAL, align 8
  store i64 %58, i64* %7, align 8
  br label %102

59:                                               ; preds = %38
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %64 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %74 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67, %59
  %78 = load i64, i64* @G_RAID_VOLUME_S_SUBOPTIMAL, align 8
  store i64 %78, i64* %7, align 8
  br label %101

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %82 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %93 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %86, %79
  %97 = load i64, i64* @G_RAID_VOLUME_S_DEGRADED, align 8
  store i64 %97, i64* %7, align 8
  br label %100

98:                                               ; preds = %86
  %99 = load i64, i64* @G_RAID_VOLUME_S_BROKEN, align 8
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %98, %96
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101, %57
  br label %103

103:                                              ; preds = %102, %36
  br label %104

104:                                              ; preds = %103, %29
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %107 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @G_RAID_VOLUME_S_ALIVE(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @G_RAID_VOLUME_E_UP, align 4
  br label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @G_RAID_VOLUME_E_DOWN, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load i32, i32* @G_RAID_EVENT_VOLUME, align 4
  %122 = call i32 @g_raid_event_send(%struct.g_raid_volume* %111, i32 %120, i32 %121)
  %123 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @g_raid_change_volume_state(%struct.g_raid_volume* %123, i64 %124)
  %126 = load %struct.g_raid_tr_raid5_object*, %struct.g_raid_tr_raid5_object** %5, align 8
  %127 = getelementptr inbounds %struct.g_raid_tr_raid5_object, %struct.g_raid_tr_raid5_object* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %119
  %131 = load %struct.g_raid_tr_raid5_object*, %struct.g_raid_tr_raid5_object** %5, align 8
  %132 = getelementptr inbounds %struct.g_raid_tr_raid5_object, %struct.g_raid_tr_raid5_object* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %137 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %138 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %136, %struct.g_raid_volume* %137, i32* null, i32* null)
  br label %139

139:                                              ; preds = %135, %130, %119
  br label %140

140:                                              ; preds = %139, %104
  ret i32 0
}

declare dso_local i32 @g_raid_nsubdisks(%struct.g_raid_volume*, i32) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_volume*, i32, i32) #1

declare dso_local i64 @G_RAID_VOLUME_S_ALIVE(i64) #1

declare dso_local i32 @g_raid_change_volume_state(%struct.g_raid_volume*, i64) #1

declare dso_local i32 @g_raid_write_metadata(%struct.g_raid_softc*, %struct.g_raid_volume*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
