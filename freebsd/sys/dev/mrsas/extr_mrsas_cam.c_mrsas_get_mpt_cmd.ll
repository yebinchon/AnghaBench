; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_get_mpt_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_get_mpt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_mpt_cmd = type { i32*, i64, i64, i64, i64, i32*, i64 }
%struct.mrsas_softc = type { i32, i32 }

@next = common dso_local global i32 0, align 4
@MRSAS_MPI2_RAID_DEFAULT_IO_FRAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mrsas_mpt_cmd* @mrsas_get_mpt_cmd(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  %3 = alloca %struct.mrsas_mpt_cmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  store %struct.mrsas_mpt_cmd* null, %struct.mrsas_mpt_cmd** %3, align 8
  %4 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %4, i32 0, i32 0
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %7, i32 0, i32 1
  %9 = call i32 @TAILQ_EMPTY(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %12, i32 0, i32 1
  %14 = call %struct.mrsas_mpt_cmd* @TAILQ_FIRST(i32* %13)
  store %struct.mrsas_mpt_cmd* %14, %struct.mrsas_mpt_cmd** %3, align 8
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %15, i32 0, i32 1
  %17 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %18 = load i32, i32* @next, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.mrsas_mpt_cmd* %17, i32 %18)
  br label %21

20:                                               ; preds = %1
  br label %40

21:                                               ; preds = %11
  %22 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* @MRSAS_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %27 = call i32 @memset(i32* %25, i32 0, i32 %26)
  %28 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %35 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %21, %20
  %41 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %42 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %41, i32 0, i32 0
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %3, align 8
  ret %struct.mrsas_mpt_cmd* %44
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.mrsas_mpt_cmd* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mrsas_mpt_cmd*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
