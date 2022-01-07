; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32 }
%struct.ti_cmd_desc = type { i32 }

@TI_GCR_CMDRING = common dso_local global i64 0, align 8
@TI_CMD_RING_CNT = common dso_local global i32 0, align 4
@TI_MB_CMDPROD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*, %struct.ti_cmd_desc*)* @ti_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_cmd(%struct.ti_softc* %0, %struct.ti_cmd_desc* %1) #0 {
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca %struct.ti_cmd_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %3, align 8
  store %struct.ti_cmd_desc* %1, %struct.ti_cmd_desc** %4, align 8
  %6 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %10 = load i64, i64* @TI_GCR_CMDRING, align 8
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = load %struct.ti_cmd_desc*, %struct.ti_cmd_desc** %4, align 8
  %16 = bitcast %struct.ti_cmd_desc* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CSR_WRITE_4(%struct.ti_softc* %9, i64 %14, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TI_CMD_RING_CNT, align 4
  %21 = call i32 @TI_INC(i32 %19, i32 %20)
  %22 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %23 = load i64, i64* @TI_MB_CMDPROD_IDX, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @CSR_WRITE_4(%struct.ti_softc* %22, i64 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i64, i32) #1

declare dso_local i32 @TI_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
