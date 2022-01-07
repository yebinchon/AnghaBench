; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_remove_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_remove_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.g_sched_softc* }
%struct.g_sched_softc = type { i32, i32*, i32*, i32*, i32 }
%struct.g_gsched = type { i32 (i32*)* }

@G_SCHED_FLUSHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_geom*, %struct.g_gsched*)* @g_sched_remove_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_sched_remove_locked(%struct.g_geom* %0, %struct.g_gsched* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_gsched*, align 8
  %5 = alloca %struct.g_sched_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.g_gsched* %1, %struct.g_gsched** %4, align 8
  %7 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %8 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %7, i32 0, i32 0
  %9 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  store %struct.g_sched_softc* %9, %struct.g_sched_softc** %5, align 8
  %10 = load i32, i32* @G_SCHED_FLUSHING, align 4
  %11 = load %struct.g_sched_softc*, %struct.g_sched_softc** %5, align 8
  %12 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %16 = call i32 @g_sched_forced_dispatch(%struct.g_geom* %15)
  %17 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %18 = call i32 @g_sched_wait_pending(%struct.g_geom* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %54

22:                                               ; preds = %2
  %23 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %24 = load %struct.g_sched_softc*, %struct.g_sched_softc** %5, align 8
  %25 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.g_sched_softc*, %struct.g_sched_softc** %5, align 8
  %28 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.g_gsched*, %struct.g_gsched** %4, align 8
  %31 = load %struct.g_sched_softc*, %struct.g_sched_softc** %5, align 8
  %32 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @g_sched_hash_fini(%struct.g_geom* %23, i32* %26, i32 %29, %struct.g_gsched* %30, i32* %33)
  %35 = load %struct.g_sched_softc*, %struct.g_sched_softc** %5, align 8
  %36 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %38 = call i32 @g_sched_unlock(%struct.g_geom* %37)
  %39 = load %struct.g_gsched*, %struct.g_gsched** %4, align 8
  %40 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %39, i32 0, i32 0
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = load %struct.g_sched_softc*, %struct.g_sched_softc** %5, align 8
  %43 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 %41(i32* %44)
  %46 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %47 = call i32 @g_sched_lock(%struct.g_geom* %46)
  %48 = load %struct.g_sched_softc*, %struct.g_sched_softc** %5, align 8
  %49 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.g_sched_softc*, %struct.g_sched_softc** %5, align 8
  %51 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.g_gsched*, %struct.g_gsched** %4, align 8
  %53 = call i32 @g_gsched_unref(%struct.g_gsched* %52)
  br label %54

54:                                               ; preds = %22, %21
  %55 = load i32, i32* @G_SCHED_FLUSHING, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.g_sched_softc*, %struct.g_sched_softc** %5, align 8
  %58 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @g_sched_forced_dispatch(%struct.g_geom*) #1

declare dso_local i32 @g_sched_wait_pending(%struct.g_geom*) #1

declare dso_local i32 @g_sched_hash_fini(%struct.g_geom*, i32*, i32, %struct.g_gsched*, i32*) #1

declare dso_local i32 @g_sched_unlock(%struct.g_geom*) #1

declare dso_local i32 @g_sched_lock(%struct.g_geom*) #1

declare dso_local i32 @g_gsched_unref(%struct.g_gsched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
