; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_destroy_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_destroy_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, i64, i64, i32, %struct.g_raid_volume*, %struct.g_raid_disk*, i64, i32*, i32*, %struct.g_raid_softc* }
%struct.g_raid_disk = type { i32 }
%struct.g_raid_softc = type { i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Destroying volume %s.\00", align 1
@G_RAID_VOLUME_S_STOPPED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@M_RAID = common dso_local global i32 0, align 4
@v_global_next = common dso_local global i32 0, align 4
@v_next = common dso_local global i32 0, align 4
@G_RAID_MAX_SUBDISKS = common dso_local global i32 0, align 4
@sd_next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Volume %s destroyed.\00", align 1
@G_RAID_DESTROY_HARD = common dso_local global i64 0, align 8
@G_RAID_NODE_E_WAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_raid_destroy_volume(%struct.g_raid_volume* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca %struct.g_raid_disk*, align 8
  %6 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %3, align 8
  %7 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %8 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %7, i32 0, i32 9
  %9 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  store %struct.g_raid_softc* %9, %struct.g_raid_softc** %4, align 8
  %10 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %11 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %12 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @G_RAID_DEBUG1(i32 2, %struct.g_raid_softc* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %16 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %18 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @G_RAID_VOLUME_S_STOPPED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %24 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %29 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @G_RAID_TR_STOP(i32* %30)
  %32 = load i32, i32* @EBUSY, align 4
  store i32 %32, i32* %2, align 4
  br label %169

33:                                               ; preds = %22
  %34 = load i64, i64* @G_RAID_VOLUME_S_STOPPED, align 8
  %35 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %36 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %40 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %41 = call i64 @g_raid_event_check(%struct.g_raid_softc* %39, %struct.g_raid_volume* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @EBUSY, align 4
  store i32 %44, i32* %2, align 4
  br label %169

45:                                               ; preds = %38
  %46 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %47 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %46, i32 0, i32 8
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @EBUSY, align 4
  store i32 %51, i32* %2, align 4
  br label %169

52:                                               ; preds = %45
  %53 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %54 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @EBUSY, align 4
  store i32 %58, i32* %2, align 4
  br label %169

59:                                               ; preds = %52
  %60 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %61 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %66 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @G_RAID_TR_FREE(i32* %67)
  %69 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %70 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = ptrtoint i32* %71 to i32
  %73 = load i32, i32* @M_RAID, align 4
  %74 = call i32 @kobj_delete(i32 %72, i32 %73)
  %75 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %76 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %75, i32 0, i32 7
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %64, %59
  %78 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %79 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %84 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @root_mount_rel(i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = call i32 (...) @g_topology_lock()
  %89 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %90 = load i32, i32* @v_global_next, align 4
  %91 = call i32 @LIST_REMOVE(%struct.g_raid_volume* %89, i32 %90)
  %92 = call i32 (...) @g_topology_unlock()
  %93 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %94 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %93, i32 0, i32 2
  %95 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %96 = load i32, i32* @v_next, align 4
  %97 = call i32 @TAILQ_REMOVE(i32* %94, %struct.g_raid_volume* %95, i32 %96)
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %133, %87
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @G_RAID_MAX_SUBDISKS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %136

102:                                              ; preds = %98
  %103 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %104 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %105 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %104, i32 0, i32 4
  %106 = load %struct.g_raid_volume*, %struct.g_raid_volume** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %106, i64 %108
  %110 = call i32 @g_raid_event_cancel(%struct.g_raid_softc* %103, %struct.g_raid_volume* %109)
  %111 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %112 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %111, i32 0, i32 4
  %113 = load %struct.g_raid_volume*, %struct.g_raid_volume** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %113, i64 %115
  %117 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %116, i32 0, i32 5
  %118 = load %struct.g_raid_disk*, %struct.g_raid_disk** %117, align 8
  store %struct.g_raid_disk* %118, %struct.g_raid_disk** %5, align 8
  %119 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %120 = icmp eq %struct.g_raid_disk* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %102
  br label %133

122:                                              ; preds = %102
  %123 = load %struct.g_raid_disk*, %struct.g_raid_disk** %5, align 8
  %124 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %123, i32 0, i32 0
  %125 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %126 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %125, i32 0, i32 4
  %127 = load %struct.g_raid_volume*, %struct.g_raid_volume** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %127, i64 %129
  %131 = load i32, i32* @sd_next, align 4
  %132 = call i32 @TAILQ_REMOVE(i32* %124, %struct.g_raid_volume* %130, i32 %131)
  br label %133

133:                                              ; preds = %122, %121
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %98

136:                                              ; preds = %98
  %137 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %138 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %139 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @G_RAID_DEBUG1(i32 2, %struct.g_raid_softc* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %143 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %136
  %147 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %148 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %151 = call i32 @G_RAID_MD_FREE_VOLUME(i64 %149, %struct.g_raid_volume* %150)
  br label %152

152:                                              ; preds = %146, %136
  %153 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %154 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %155 = call i32 @g_raid_event_cancel(%struct.g_raid_softc* %153, %struct.g_raid_volume* %154)
  %156 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %157 = load i32, i32* @M_RAID, align 4
  %158 = call i32 @free(%struct.g_raid_volume* %156, i32 %157)
  %159 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %160 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @G_RAID_DESTROY_HARD, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %152
  %165 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %166 = load i32, i32* @G_RAID_NODE_E_WAKE, align 4
  %167 = call i32 @g_raid_event_send(%struct.g_raid_softc* %165, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %164, %152
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %57, %50, %43, %27
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32) #1

declare dso_local i32 @G_RAID_TR_STOP(i32*) #1

declare dso_local i64 @g_raid_event_check(%struct.g_raid_softc*, %struct.g_raid_volume*) #1

declare dso_local i32 @G_RAID_TR_FREE(i32*) #1

declare dso_local i32 @kobj_delete(i32, i32) #1

declare dso_local i32 @root_mount_rel(i64) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_raid_volume*, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_raid_volume*, i32) #1

declare dso_local i32 @g_raid_event_cancel(%struct.g_raid_softc*, %struct.g_raid_volume*) #1

declare dso_local i32 @G_RAID_MD_FREE_VOLUME(i64, %struct.g_raid_volume*) #1

declare dso_local i32 @free(%struct.g_raid_volume*, i32) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
