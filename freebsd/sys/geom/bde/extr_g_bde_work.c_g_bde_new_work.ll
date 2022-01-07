; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_new_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_new_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_work = type { %struct.g_bde_softc*, i32 }
%struct.g_bde_softc = type { i32, i32 }

@M_GBDE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SETUP = common dso_local global i32 0, align 4
@g_bde_nwork = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_bde_work* (%struct.g_bde_softc*)* @g_bde_new_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_bde_work* @g_bde_new_work(%struct.g_bde_softc* %0) #0 {
  %2 = alloca %struct.g_bde_work*, align 8
  %3 = alloca %struct.g_bde_softc*, align 8
  %4 = alloca %struct.g_bde_work*, align 8
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %3, align 8
  %5 = load i32, i32* @M_GBDE, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.g_bde_work* @malloc(i32 16, i32 %5, i32 %8)
  store %struct.g_bde_work* %9, %struct.g_bde_work** %4, align 8
  %10 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %11 = icmp eq %struct.g_bde_work* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  store %struct.g_bde_work* %13, %struct.g_bde_work** %2, align 8
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* @SETUP, align 4
  %16 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %17 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %19 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %20 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %19, i32 0, i32 0
  store %struct.g_bde_softc* %18, %struct.g_bde_softc** %20, align 8
  %21 = load i32, i32* @g_bde_nwork, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @g_bde_nwork, align 4
  %23 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %24 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %28 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %27, i32 0, i32 0
  %29 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %30 = load i32, i32* @list, align 4
  %31 = call i32 @TAILQ_INSERT_TAIL(i32* %28, %struct.g_bde_work* %29, i32 %30)
  %32 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  store %struct.g_bde_work* %32, %struct.g_bde_work** %2, align 8
  br label %33

33:                                               ; preds = %14, %12
  %34 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  ret %struct.g_bde_work* %34
}

declare dso_local %struct.g_bde_work* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_bde_work*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
