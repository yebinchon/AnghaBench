; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_disconnect_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_disconnect_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32 }
%struct.g_consumer = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*, %struct.g_consumer*)* @g_raid3_disconnect_consumer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_disconnect_consumer(%struct.g_raid3_softc* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.g_raid3_softc*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %5 = call i32 (...) @g_topology_assert()
  %6 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %7 = icmp eq %struct.g_consumer* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %21

9:                                                ; preds = %2
  %10 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %11 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %16 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %17 = call i32 @g_raid3_kill_consumer(%struct.g_raid3_softc* %15, %struct.g_consumer* %16)
  br label %21

18:                                               ; preds = %9
  %19 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %20 = call i32 @g_destroy_consumer(%struct.g_consumer* %19)
  br label %21

21:                                               ; preds = %8, %18, %14
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_raid3_kill_consumer(%struct.g_raid3_softc*, %struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
