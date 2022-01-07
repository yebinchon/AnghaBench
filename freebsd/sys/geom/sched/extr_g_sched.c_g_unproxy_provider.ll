; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_unproxy_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_unproxy_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { %struct.g_geom* }
%struct.g_geom = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_provider*, %struct.g_provider*)* @g_unproxy_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_unproxy_provider(%struct.g_provider* %0, %struct.g_provider* %1) #0 {
  %3 = alloca %struct.g_provider*, align 8
  %4 = alloca %struct.g_provider*, align 8
  %5 = alloca %struct.g_geom*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %3, align 8
  store %struct.g_provider* %1, %struct.g_provider** %4, align 8
  %6 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %7 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %6, i32 0, i32 0
  %8 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  store %struct.g_geom* %8, %struct.g_geom** %5, align 8
  %9 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %10 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %11 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %10, i32 0, i32 0
  %12 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %13 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %14 = call i32 @g_reparent_provider(%struct.g_provider* %9, %struct.g_geom* %12, %struct.g_provider* %13)
  %15 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %16 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %17 = call i32 @g_reparent_provider(%struct.g_provider* %15, %struct.g_geom* %16, %struct.g_provider* null)
  ret void
}

declare dso_local i32 @g_reparent_provider(%struct.g_provider*, %struct.g_geom*, %struct.g_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
