; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_release_mpt_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_release_mpt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_mpt_cmd = type { i64, i64, i32*, i64, i32, %struct.mrsas_softc* }
%struct.mrsas_softc = type { i32, i32 }

@MR_DEVHANDLE_INVALID = common dso_local global i32 0, align 4
@MRSAS_ULONG_MAX = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_release_mpt_cmd(%struct.mrsas_mpt_cmd* %0) #0 {
  %2 = alloca %struct.mrsas_mpt_cmd*, align 8
  %3 = alloca %struct.mrsas_softc*, align 8
  store %struct.mrsas_mpt_cmd* %0, %struct.mrsas_mpt_cmd** %2, align 8
  %4 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %4, i32 0, i32 5
  %6 = load %struct.mrsas_softc*, %struct.mrsas_softc** %5, align 8
  store %struct.mrsas_softc* %6, %struct.mrsas_softc** %3, align 8
  %7 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load i32, i32* @MR_DEVHANDLE_INVALID, align 4
  %11 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i64, i64* @MRSAS_ULONG_MAX, align 8
  %14 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %14, i32 0, i32 3
  store i64 %13, i64* %15, align 8
  %16 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %2, align 8
  %21 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  %25 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %25, i32 0, i32 1
  %27 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %2, align 8
  %28 = load i32, i32* @next, align 4
  %29 = call i32 @TAILQ_INSERT_HEAD(i32* %26, %struct.mrsas_mpt_cmd* %27, i32 %28)
  %30 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %30, i32 0, i32 0
  %32 = call i32 @mtx_unlock(i32* %31)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.mrsas_mpt_cmd*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
