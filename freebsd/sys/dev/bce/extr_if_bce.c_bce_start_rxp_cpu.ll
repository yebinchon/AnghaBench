; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_start_rxp_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_start_rxp_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32 }
%struct.cpu_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_RXP_CPU_MODE = common dso_local global i32 0, align 4
@BCE_RXP_CPU_MODE_SOFT_HALT = common dso_local global i32 0, align 4
@BCE_RXP_CPU_MODE_STEP_ENA = common dso_local global i32 0, align 4
@BCE_RXP_CPU_STATE = common dso_local global i32 0, align 4
@BCE_RXP_CPU_REG_FILE = common dso_local global i32 0, align 4
@BCE_RXP_CPU_EVENT_MASK = common dso_local global i32 0, align 4
@BCE_RXP_CPU_PROGRAM_COUNTER = common dso_local global i32 0, align 4
@BCE_RXP_CPU_INSTRUCTION = common dso_local global i32 0, align 4
@BCE_RXP_CPU_HW_BREAKPOINT = common dso_local global i32 0, align 4
@BCE_RXP_SCRATCH = common dso_local global i32 0, align 4
@BCE_INFO_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Starting RX firmware.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_start_rxp_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_start_rxp_cpu(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca %struct.cpu_reg, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %4 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %5 = call i32 @DBENTER(i32 %4)
  %6 = load i32, i32* @BCE_RXP_CPU_MODE, align 4
  %7 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 11
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @BCE_RXP_CPU_MODE_SOFT_HALT, align 4
  %9 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 10
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @BCE_RXP_CPU_MODE_STEP_ENA, align 4
  %11 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 9
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @BCE_RXP_CPU_STATE, align 4
  %13 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 8
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 0
  store i32 16777215, i32* %14, align 4
  %15 = load i32, i32* @BCE_RXP_CPU_REG_FILE, align 4
  %16 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 7
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @BCE_RXP_CPU_EVENT_MASK, align 4
  %18 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @BCE_RXP_CPU_PROGRAM_COUNTER, align 4
  %20 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 5
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @BCE_RXP_CPU_INSTRUCTION, align 4
  %22 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @BCE_RXP_CPU_HW_BREAKPOINT, align 4
  %24 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @BCE_RXP_SCRATCH, align 4
  %26 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 1
  store i32 134217728, i32* %27, align 4
  %28 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %29 = load i32, i32* @BCE_INFO_RESET, align 4
  %30 = call i32 @DBPRINT(%struct.bce_softc* %28, i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %32 = call i32 @bce_start_cpu(%struct.bce_softc* %31, %struct.cpu_reg* %3)
  %33 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %34 = call i32 @DBEXIT(i32 %33)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @DBPRINT(%struct.bce_softc*, i32, i8*) #1

declare dso_local i32 @bce_start_cpu(%struct.bce_softc*, %struct.cpu_reg*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
