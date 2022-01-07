; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_stop_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_stop_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64 }

@BGE_SRAM_FW_CMD_MB = common dso_local global i32 0, align 4
@BGE_FW_CMD_PAUSE = common dso_local global i32 0, align 4
@BGE_RX_CPU_EVENT = common dso_local global i32 0, align 4
@BGE_RX_CPU_DRV_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_stop_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_stop_fw(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %4 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %10 = load i32, i32* @BGE_SRAM_FW_CMD_MB, align 4
  %11 = load i32, i32* @BGE_FW_CMD_PAUSE, align 4
  %12 = call i32 @bge_writemem_ind(%struct.bge_softc* %9, i32 %10, i32 %11)
  %13 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %14 = load i32, i32* @BGE_RX_CPU_EVENT, align 4
  %15 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %16 = load i32, i32* @BGE_RX_CPU_EVENT, align 4
  %17 = call i32 @CSR_READ_4(%struct.bge_softc* %15, i32 %16)
  %18 = load i32, i32* @BGE_RX_CPU_DRV_EVENT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @CSR_WRITE_4(%struct.bge_softc* %13, i32 %14, i32 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %34, %8
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 100
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %26 = load i32, i32* @BGE_RX_CPU_EVENT, align 4
  %27 = call i32 @CSR_READ_4(%struct.bge_softc* %25, i32 %26)
  %28 = load i32, i32* @BGE_RX_CPU_DRV_EVENT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %37

32:                                               ; preds = %24
  %33 = call i32 @DELAY(i32 10)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %21

37:                                               ; preds = %31, %21
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @bge_writemem_ind(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
