; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_asf_driver_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_asf_driver_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32 }

@ASF_STACKUP = common dso_local global i32 0, align 4
@BGE_SRAM_FW_CMD_MB = common dso_local global i32 0, align 4
@BGE_FW_CMD_DRV_ALIVE = common dso_local global i32 0, align 4
@BGE_SRAM_FW_CMD_LEN_MB = common dso_local global i32 0, align 4
@BGE_SRAM_FW_CMD_DATA_MB = common dso_local global i32 0, align 4
@BGE_FW_HB_TIMEOUT_SEC = common dso_local global i32 0, align 4
@BGE_RX_CPU_EVENT = common dso_local global i32 0, align 4
@BGE_RX_CPU_DRV_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_asf_driver_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_asf_driver_up(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %3 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %4 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ASF_STACKUP, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  br label %41

19:                                               ; preds = %9
  %20 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %20, i32 0, i32 1
  store i32 2, i32* %21, align 4
  %22 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %23 = load i32, i32* @BGE_SRAM_FW_CMD_MB, align 4
  %24 = load i32, i32* @BGE_FW_CMD_DRV_ALIVE, align 4
  %25 = call i32 @bge_writemem_ind(%struct.bge_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %27 = load i32, i32* @BGE_SRAM_FW_CMD_LEN_MB, align 4
  %28 = call i32 @bge_writemem_ind(%struct.bge_softc* %26, i32 %27, i32 4)
  %29 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %30 = load i32, i32* @BGE_SRAM_FW_CMD_DATA_MB, align 4
  %31 = load i32, i32* @BGE_FW_HB_TIMEOUT_SEC, align 4
  %32 = call i32 @bge_writemem_ind(%struct.bge_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %34 = load i32, i32* @BGE_RX_CPU_EVENT, align 4
  %35 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %36 = load i32, i32* @BGE_RX_CPU_EVENT, align 4
  %37 = call i32 @CSR_READ_4(%struct.bge_softc* %35, i32 %36)
  %38 = load i32, i32* @BGE_RX_CPU_DRV_EVENT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @CSR_WRITE_4(%struct.bge_softc* %33, i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %19, %14
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @bge_writemem_ind(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
