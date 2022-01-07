; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_unmap_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_unmap_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32 }
%struct.mrsas_mpt_cmd = type { i32, i32, i32* }

@MRSAS_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MRSAS_DIR_OUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_unmap_request(%struct.mrsas_softc* %0, %struct.mrsas_mpt_cmd* %1) #0 {
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %struct.mrsas_mpt_cmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store %struct.mrsas_mpt_cmd* %1, %struct.mrsas_mpt_cmd** %4, align 8
  %5 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MRSAS_DIR_IN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %24 = call i32 @bus_dmamap_sync(i32 %19, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %9
  %26 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MRSAS_DIR_OUT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %34 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %40 = call i32 @bus_dmamap_sync(i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %25
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 0
  %44 = call i32 @mtx_lock(i32* %43)
  %45 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bus_dmamap_unload(i32 %47, i32 %50)
  %52 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %53 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %52, i32 0, i32 0
  %54 = call i32 @mtx_unlock(i32* %53)
  br label %55

55:                                               ; preds = %41, %2
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
