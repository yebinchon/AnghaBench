; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_concat.c_g_raid_tr_update_state_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_concat.c_g_raid_tr_update_state_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, i64, i64, i64, %struct.TYPE_2__*, i64, %struct.g_raid_softc* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_tr_concat_object = type { i64, i64 }

@G_RAID_VOLUME_S_STOPPED = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_STARTING = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_FAILED = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_BROKEN = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_CONCAT = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_NONE = common dso_local global i64 0, align 8
@G_RAID_VOLUME_E_UP = common dso_local global i32 0, align 4
@G_RAID_VOLUME_E_DOWN = common dso_local global i32 0, align 4
@G_RAID_EVENT_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*)* @g_raid_tr_update_state_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_update_state_concat(%struct.g_raid_volume* %0) #0 {
  %2 = alloca %struct.g_raid_volume*, align 8
  %3 = alloca %struct.g_raid_tr_concat_object*, align 8
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %2, align 8
  %10 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %11 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %10, i32 0, i32 6
  %12 = load %struct.g_raid_softc*, %struct.g_raid_softc** %11, align 8
  store %struct.g_raid_softc* %12, %struct.g_raid_softc** %4, align 8
  %13 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %14 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.g_raid_tr_concat_object*
  store %struct.g_raid_tr_concat_object* %16, %struct.g_raid_tr_concat_object** %3, align 8
  %17 = load %struct.g_raid_tr_concat_object*, %struct.g_raid_tr_concat_object** %3, align 8
  %18 = getelementptr inbounds %struct.g_raid_tr_concat_object, %struct.g_raid_tr_concat_object* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @G_RAID_VOLUME_S_STOPPED, align 8
  store i64 %22, i64* %6, align 8
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.g_raid_tr_concat_object*, %struct.g_raid_tr_concat_object** %3, align 8
  %25 = getelementptr inbounds %struct.g_raid_tr_concat_object, %struct.g_raid_tr_concat_object* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* @G_RAID_VOLUME_S_STARTING, align 8
  store i64 %29, i64* %6, align 8
  br label %55

30:                                               ; preds = %23
  %31 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %32 = load i32, i32* @G_RAID_SUBDISK_S_ACTIVE, align 4
  %33 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %35 = load i32, i32* @G_RAID_SUBDISK_S_FAILED, align 4
  %36 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %41 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @G_RAID_VOLUME_S_OPTIMAL, align 8
  store i64 %48, i64* %6, align 8
  br label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @G_RAID_VOLUME_S_SUBOPTIMAL, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %49, %47
  br label %54

52:                                               ; preds = %30
  %53 = load i64, i64* @G_RAID_VOLUME_S_BROKEN, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %52, %51
  br label %55

55:                                               ; preds = %54, %28
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %59 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %145

62:                                               ; preds = %56
  %63 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %64 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @G_RAID_VOLUME_RL_CONCAT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %62
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @G_RAID_VOLUME_S_ALIVE(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %68
  %73 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %74 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @G_RAID_VOLUME_S_ALIVE(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %115, label %78

78:                                               ; preds = %72
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %108, %78
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %82 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %79
  %86 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %87 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @G_RAID_SUBDISK_S_NONE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %85
  %97 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %98 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %96, %85
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %79

111:                                              ; preds = %79
  %112 = load i64, i64* %5, align 8
  %113 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %114 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %72, %68, %62
  %116 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @G_RAID_VOLUME_S_ALIVE(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @G_RAID_VOLUME_E_UP, align 4
  br label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @G_RAID_VOLUME_E_DOWN, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = load i32, i32* @G_RAID_EVENT_VOLUME, align 4
  %127 = call i32 @g_raid_event_send(%struct.g_raid_volume* %116, i32 %125, i32 %126)
  %128 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @g_raid_change_volume_state(%struct.g_raid_volume* %128, i64 %129)
  %131 = load %struct.g_raid_tr_concat_object*, %struct.g_raid_tr_concat_object** %3, align 8
  %132 = getelementptr inbounds %struct.g_raid_tr_concat_object, %struct.g_raid_tr_concat_object* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %124
  %136 = load %struct.g_raid_tr_concat_object*, %struct.g_raid_tr_concat_object** %3, align 8
  %137 = getelementptr inbounds %struct.g_raid_tr_concat_object, %struct.g_raid_tr_concat_object* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %142 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %143 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %141, %struct.g_raid_volume* %142, i32* null, i32* null)
  br label %144

144:                                              ; preds = %140, %135, %124
  br label %145

145:                                              ; preds = %144, %56
  ret i32 0
}

declare dso_local i32 @g_raid_nsubdisks(%struct.g_raid_volume*, i32) #1

declare dso_local i64 @G_RAID_VOLUME_S_ALIVE(i64) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_volume*, i32, i32) #1

declare dso_local i32 @g_raid_change_volume_state(%struct.g_raid_volume*, i64) #1

declare dso_local i32 @g_raid_write_metadata(%struct.g_raid_softc*, %struct.g_raid_volume*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
