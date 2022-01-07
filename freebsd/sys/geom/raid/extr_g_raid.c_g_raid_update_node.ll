; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_update_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_update_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_softc = type { i64, i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Event %s for the array.\00", align 1
@G_RAID_NODE_E_WAKE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_softc*, i64)* @g_raid_update_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_update_node(%struct.g_raid_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca i64, align 8
  store %struct.g_raid_softc* %0, %struct.g_raid_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %7 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %6, i32 0, i32 1
  %8 = load i32, i32* @SX_XLOCKED, align 4
  %9 = call i32 @sx_assert(i32* %7, i32 %8)
  %10 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @g_raid_node_event2str(i64 %11)
  %13 = call i32 @G_RAID_DEBUG1(i32 2, %struct.g_raid_softc* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @G_RAID_NODE_E_WAKE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %20 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %25 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @G_RAID_MD_EVENT(i64 %26, i32* null, i64 %27)
  br label %29

29:                                               ; preds = %23, %18
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32) #1

declare dso_local i32 @g_raid_node_event2str(i64) #1

declare dso_local i32 @G_RAID_MD_EVENT(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
