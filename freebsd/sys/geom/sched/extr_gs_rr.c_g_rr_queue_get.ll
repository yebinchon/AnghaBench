; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_queue_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_queue_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_rr_queue = type { i32 }
%struct.g_rr_softc = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_rr_queue* (%struct.g_rr_softc*, %struct.bio*)* @g_rr_queue_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_rr_queue* @g_rr_queue_get(%struct.g_rr_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_rr_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.g_rr_softc* %0, %struct.g_rr_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.g_rr_softc*, %struct.g_rr_softc** %3, align 8
  %6 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = call %struct.g_rr_queue* @g_sched_get_class(i32 %7, %struct.bio* %8)
  ret %struct.g_rr_queue* %9
}

declare dso_local %struct.g_rr_queue* @g_sched_get_class(i32, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
