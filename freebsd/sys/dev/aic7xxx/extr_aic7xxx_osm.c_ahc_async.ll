; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.ahc_softc = type { i32 }
%struct.cam_sim = type { i32 }
%struct.ahc_devinfo = type { i32 }

@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHC_TRANS_GOAL = common dso_local global i32 0, align 4
@AHC_TRANS_CUR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cam_path*, i8*)* @ahc_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_async(i8* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ahc_softc*, align 8
  %10 = alloca %struct.cam_sim*, align 8
  %11 = alloca %struct.ahc_devinfo, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cam_sim*
  store %struct.cam_sim* %13, %struct.cam_sim** %10, align 8
  %14 = load %struct.cam_sim*, %struct.cam_sim** %10, align 8
  %15 = call i64 @cam_sim_softc(%struct.cam_sim* %14)
  %16 = inttoptr i64 %15 to %struct.ahc_softc*
  store %struct.ahc_softc* %16, %struct.ahc_softc** %9, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %44 [
    i32 128, label %18
  ]

18:                                               ; preds = %4
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %20 = load %struct.cam_sim*, %struct.cam_sim** %10, align 8
  %21 = call i32 @SIM_SCSI_ID(%struct.ahc_softc* %19, %struct.cam_sim* %20)
  %22 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %23 = call i32 @xpt_path_target_id(%struct.cam_path* %22)
  %24 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %25 = call i32 @xpt_path_lun_id(%struct.cam_path* %24)
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %27 = load %struct.cam_sim*, %struct.cam_sim** %10, align 8
  %28 = call i32 @SIM_CHANNEL(%struct.ahc_softc* %26, %struct.cam_sim* %27)
  %29 = load i32, i32* @ROLE_UNKNOWN, align 4
  %30 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %11, i32 %21, i32 %23, i32 %25, i32 %28, i32 %29)
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %32 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %33 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %34 = load i32, i32* @AHC_TRANS_CUR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @ahc_set_width(%struct.ahc_softc* %31, %struct.ahc_devinfo* %11, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %39 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %40 = load i32, i32* @AHC_TRANS_CUR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %38, %struct.ahc_devinfo* %11, i32* null, i32 0, i32 0, i32 0, i32 %41, i32 %42)
  br label %45

44:                                               ; preds = %4
  br label %45

45:                                               ; preds = %44, %18
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SIM_SCSI_ID(%struct.ahc_softc*, %struct.cam_sim*) #1

declare dso_local i32 @xpt_path_target_id(%struct.cam_path*) #1

declare dso_local i32 @xpt_path_lun_id(%struct.cam_path*) #1

declare dso_local i32 @SIM_CHANNEL(%struct.ahc_softc*, %struct.cam_sim*) #1

declare dso_local i32 @ahc_set_width(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahc_set_syncrate(%struct.ahc_softc*, %struct.ahc_devinfo*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
