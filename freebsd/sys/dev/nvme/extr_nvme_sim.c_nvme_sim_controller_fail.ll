; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sim.c_nvme_sim_controller_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sim.c_nvme_sim_controller_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_sim_softc = type { i32, i32 }

@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@M_NVME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nvme_sim_controller_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_sim_controller_fail(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nvme_sim_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nvme_sim_softc*
  store %struct.nvme_sim_softc* %5, %struct.nvme_sim_softc** %3, align 8
  %6 = load i32, i32* @AC_LOST_DEVICE, align 4
  %7 = load %struct.nvme_sim_softc*, %struct.nvme_sim_softc** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_sim_softc, %struct.nvme_sim_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @xpt_async(i32 %6, i32 %9, i32* null)
  %11 = load %struct.nvme_sim_softc*, %struct.nvme_sim_softc** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_sim_softc, %struct.nvme_sim_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @xpt_free_path(i32 %13)
  %15 = load %struct.nvme_sim_softc*, %struct.nvme_sim_softc** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_sim_softc, %struct.nvme_sim_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cam_sim_path(i32 %17)
  %19 = call i32 @xpt_bus_deregister(i32 %18)
  %20 = load %struct.nvme_sim_softc*, %struct.nvme_sim_softc** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_sim_softc, %struct.nvme_sim_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @cam_sim_free(i32 %22, i32 %23)
  %25 = load %struct.nvme_sim_softc*, %struct.nvme_sim_softc** %3, align 8
  %26 = load i32, i32* @M_NVME, align 4
  %27 = call i32 @free(%struct.nvme_sim_softc* %25, i32 %26)
  ret void
}

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @free(%struct.nvme_sim_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
