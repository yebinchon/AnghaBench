; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_intr_sdio_newintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_intr_sdio_newintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcnull_softc = type { i32, i32, i32 }
%struct.cam_path = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mmcnull_intr_sdio_newintr()\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"mmcnull_intr_sdio_newintr(): cannot create path\0A\00", align 1
@AC_UNIT_ATTENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mmcnull_intr_sdio_newintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmcnull_intr_sdio_newintr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mmcnull_softc*, align 8
  %4 = alloca %struct.cam_path*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mmcnull_softc*
  store %struct.mmcnull_softc* %6, %struct.mmcnull_softc** %3, align 8
  %7 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %7, i32 0, i32 2
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cam_sim_path(i32 %17)
  %19 = call i64 @xpt_create_path(%struct.cam_path** %4, i32* null, i32 %18, i32 0, i32 0)
  %20 = load i64, i64* @CAM_REQ_CMP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @AC_UNIT_ATTENTION, align 4
  %29 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %30 = call i32 @xpt_async(i32 %28, %struct.cam_path* %29, i32* null)
  %31 = load %struct.cam_path*, %struct.cam_path** %4, align 8
  %32 = call i32 @xpt_free_path(%struct.cam_path* %31)
  br label %33

33:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
