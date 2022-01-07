; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_event_promise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_event_promise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_md_object = type { %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_disk = type { i32 }

@G_RAID_DISK_S_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_md_object*, %struct.g_raid_disk*, i32)* @g_raid_md_event_promise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_event_promise(%struct.g_raid_md_object* %0, %struct.g_raid_disk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid_md_object*, align 8
  %6 = alloca %struct.g_raid_disk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.g_raid_softc*, align 8
  store %struct.g_raid_md_object* %0, %struct.g_raid_md_object** %5, align 8
  store %struct.g_raid_disk* %1, %struct.g_raid_disk** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %10 = getelementptr inbounds %struct.g_raid_md_object, %struct.g_raid_md_object* %9, i32 0, i32 0
  %11 = load %struct.g_raid_softc*, %struct.g_raid_softc** %10, align 8
  store %struct.g_raid_softc* %11, %struct.g_raid_softc** %8, align 8
  %12 = load %struct.g_raid_disk*, %struct.g_raid_disk** %6, align 8
  %13 = icmp eq %struct.g_raid_disk* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %37 [
    i32 128, label %17
  ]

17:                                               ; preds = %15
  %18 = load %struct.g_raid_disk*, %struct.g_raid_disk** %6, align 8
  %19 = load i32, i32* @G_RAID_DISK_S_NONE, align 4
  %20 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %18, i32 %19)
  %21 = load %struct.g_raid_disk*, %struct.g_raid_disk** %6, align 8
  %22 = call i32 @g_raid_destroy_disk(%struct.g_raid_disk* %21)
  %23 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %24 = call i32 @g_raid_md_promise_purge_volumes(%struct.g_raid_softc* %23)
  %25 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %5, align 8
  %26 = call i32 @g_raid_md_write_promise(%struct.g_raid_md_object* %25, i32* null, i32* null, i32* null)
  %27 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %28 = call i32 @g_raid_ndisks(%struct.g_raid_softc* %27, i32 -1)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %32 = call i32 @g_raid_destroy_node(%struct.g_raid_softc* %31, i32 0)
  br label %36

33:                                               ; preds = %17
  %34 = load %struct.g_raid_softc*, %struct.g_raid_softc** %8, align 8
  %35 = call i32 @g_raid_md_promise_refill(%struct.g_raid_softc* %34)
  br label %36

36:                                               ; preds = %33, %30
  store i32 0, i32* %4, align 4
  br label %38

37:                                               ; preds = %15
  store i32 -2, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %36, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @g_raid_change_disk_state(%struct.g_raid_disk*, i32) #1

declare dso_local i32 @g_raid_destroy_disk(%struct.g_raid_disk*) #1

declare dso_local i32 @g_raid_md_promise_purge_volumes(%struct.g_raid_softc*) #1

declare dso_local i32 @g_raid_md_write_promise(%struct.g_raid_md_object*, i32*, i32*, i32*) #1

declare dso_local i32 @g_raid_ndisks(%struct.g_raid_softc*, i32) #1

declare dso_local i32 @g_raid_destroy_node(%struct.g_raid_softc*, i32) #1

declare dso_local i32 @g_raid_md_promise_refill(%struct.g_raid_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
