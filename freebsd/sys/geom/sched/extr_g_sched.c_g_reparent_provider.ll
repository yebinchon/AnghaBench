; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_reparent_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_reparent_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { i32 }
%struct.g_provider = type { %struct.g_geom*, i32, i32 }

@provider = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_provider*, %struct.g_geom*, %struct.g_provider*)* @g_reparent_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_reparent_provider(%struct.g_provider* %0, %struct.g_geom* %1, %struct.g_provider* %2) #0 {
  %4 = alloca %struct.g_provider*, align 8
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_provider*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %4, align 8
  store %struct.g_geom* %1, %struct.g_geom** %5, align 8
  store %struct.g_provider* %2, %struct.g_provider** %6, align 8
  %7 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %8 = load i32, i32* @provider, align 4
  %9 = call i32 @LIST_REMOVE(%struct.g_provider* %7, i32 %8)
  %10 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %11 = icmp ne %struct.g_provider* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %14 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %17 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %12, %3
  %24 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %25 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 0
  store %struct.g_geom* %24, %struct.g_geom** %26, align 8
  %27 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %28 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %27, i32 0, i32 0
  %29 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %30 = load i32, i32* @provider, align 4
  %31 = call i32 @LIST_INSERT_HEAD(i32* %28, %struct.g_provider* %29, i32 %30)
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.g_provider*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_provider*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
