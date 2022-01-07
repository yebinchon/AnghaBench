; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_promise_go.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_promise_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { %struct.g_raid_softc*, %struct.g_raid_md_promise_pervolume* }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_md_promise_pervolume = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Force volume start due to timeout.\00", align 1
@G_RAID_VOLUME_E_STARTMD = common dso_local global i32 0, align 4
@G_RAID_EVENT_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_raid_promise_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_promise_go(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca %struct.g_raid_md_promise_pervolume*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.g_raid_volume*
  store %struct.g_raid_volume* %7, %struct.g_raid_volume** %3, align 8
  %8 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %8, i32 0, i32 1
  %10 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %9, align 8
  store %struct.g_raid_md_promise_pervolume* %10, %struct.g_raid_md_promise_pervolume** %5, align 8
  %11 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %12 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %11, i32 0, i32 0
  %13 = load %struct.g_raid_softc*, %struct.g_raid_softc** %12, align 8
  store %struct.g_raid_softc* %13, %struct.g_raid_softc** %4, align 8
  %14 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %5, align 8
  %15 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %20 = call i32 @G_RAID_DEBUG1(i32 0, %struct.g_raid_softc* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %22 = load i32, i32* @G_RAID_VOLUME_E_STARTMD, align 4
  %23 = load i32, i32* @G_RAID_EVENT_VOLUME, align 4
  %24 = call i32 @g_raid_event_send(%struct.g_raid_volume* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_volume*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
