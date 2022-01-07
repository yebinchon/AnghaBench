; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_jmicron_go.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_jmicron_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { %struct.g_raid_md_object* }
%struct.g_raid_md_object = type { i32 }
%struct.g_raid_md_jmicron_object = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Force array start due to timeout.\00", align 1
@G_RAID_NODE_E_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_raid_jmicron_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_jmicron_go(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_md_object*, align 8
  %5 = alloca %struct.g_raid_md_jmicron_object*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.g_raid_softc*
  store %struct.g_raid_softc* %7, %struct.g_raid_softc** %3, align 8
  %8 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %8, i32 0, i32 0
  %10 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %9, align 8
  store %struct.g_raid_md_object* %10, %struct.g_raid_md_object** %4, align 8
  %11 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %4, align 8
  %12 = bitcast %struct.g_raid_md_object* %11 to %struct.g_raid_md_jmicron_object*
  store %struct.g_raid_md_jmicron_object* %12, %struct.g_raid_md_jmicron_object** %5, align 8
  %13 = load %struct.g_raid_md_jmicron_object*, %struct.g_raid_md_jmicron_object** %5, align 8
  %14 = getelementptr inbounds %struct.g_raid_md_jmicron_object, %struct.g_raid_md_jmicron_object* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %19 = call i32 @G_RAID_DEBUG1(i32 0, %struct.g_raid_softc* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %21 = load i32, i32* @G_RAID_NODE_E_START, align 4
  %22 = call i32 @g_raid_event_send(%struct.g_raid_softc* %20, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
