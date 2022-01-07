; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_cmd_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32 }
%struct.mrsas_mpt_cmd = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_cmd_done(%struct.mrsas_softc* %0, %struct.mrsas_mpt_cmd* %1) #0 {
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %struct.mrsas_mpt_cmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store %struct.mrsas_mpt_cmd* %1, %struct.mrsas_mpt_cmd** %4, align 8
  %5 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %6 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %7 = call i32 @mrsas_unmap_request(%struct.mrsas_softc* %5, %struct.mrsas_mpt_cmd* %6)
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %16, i32 0, i32 2
  %18 = call i32 @callout_stop(i32* %17)
  %19 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @xpt_done(i32* %24)
  %26 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %28, i32 0, i32 0
  %30 = call i32 @mtx_unlock(i32* %29)
  %31 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %32 = call i32 @mrsas_release_mpt_cmd(%struct.mrsas_mpt_cmd* %31)
  ret void
}

declare dso_local i32 @mrsas_unmap_request(%struct.mrsas_softc*, %struct.mrsas_mpt_cmd*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @xpt_done(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mrsas_release_mpt_cmd(%struct.mrsas_mpt_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
