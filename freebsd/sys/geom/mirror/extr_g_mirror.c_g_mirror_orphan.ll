; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_mirror_disk* }
%struct.g_mirror_disk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@G_MIRROR_BUMP_SYNCID = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_MIRROR_EVENT_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_mirror_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_mirror_disk*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %4 = call i32 (...) @g_topology_assert()
  %5 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %6 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %5, i32 0, i32 0
  %7 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %6, align 8
  store %struct.g_mirror_disk* %7, %struct.g_mirror_disk** %3, align 8
  %8 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %9 = icmp eq %struct.g_mirror_disk* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @G_MIRROR_BUMP_SYNCID, align 4
  %13 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %14 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 4
  %19 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  %20 = load i32, i32* @G_MIRROR_DISK_STATE_DISCONNECTED, align 4
  %21 = load i32, i32* @G_MIRROR_EVENT_DONTWAIT, align 4
  %22 = call i32 @g_mirror_event_send(%struct.g_mirror_disk* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_mirror_event_send(%struct.g_mirror_disk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
