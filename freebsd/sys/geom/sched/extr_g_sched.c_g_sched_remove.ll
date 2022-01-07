; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { i32 }
%struct.g_gsched = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_geom*, %struct.g_gsched*)* @g_sched_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_sched_remove(%struct.g_geom* %0, %struct.g_gsched* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_gsched*, align 8
  %5 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.g_gsched* %1, %struct.g_gsched** %4, align 8
  %6 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %7 = call i32 @g_sched_lock(%struct.g_geom* %6)
  %8 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %9 = load %struct.g_gsched*, %struct.g_gsched** %4, align 8
  %10 = call i32 @g_sched_remove_locked(%struct.g_geom* %8, %struct.g_gsched* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %12 = call i32 @g_sched_unlock(%struct.g_geom* %11)
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

declare dso_local i32 @g_sched_lock(%struct.g_geom*) #1

declare dso_local i32 @g_sched_remove_locked(%struct.g_geom*, %struct.g_gsched*) #1

declare dso_local i32 @g_sched_unlock(%struct.g_geom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
