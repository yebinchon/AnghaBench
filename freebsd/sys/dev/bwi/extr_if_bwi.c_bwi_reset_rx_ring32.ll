; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_reset_rx_ring32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_reset_rx_ring32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }

@BWI_RX32_CTRL = common dso_local global i64 0, align 8
@BWI_RX32_STATUS = common dso_local global i64 0, align 8
@BWI_RX32_STATUS_STATE_MASK = common dso_local global i32 0, align 4
@BWI_RX32_STATUS_STATE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"reset rx ring timedout\0A\00", align 1
@BWI_RX32_RINGINFO = common dso_local global i64 0, align 8
@NRETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i64)* @bwi_reset_rx_ring32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_reset_rx_ring32(%struct.bwi_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @BWI_RX32_CTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %7, i64 %10, i32 0)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @BWI_RX32_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @CSR_READ_4(%struct.bwi_softc* %16, i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @BWI_RX32_STATUS_STATE_MASK, align 4
  %23 = call i64 @__SHIFTOUT(i64 %21, i32 %22)
  %24 = load i64, i64* @BWI_RX32_STATUS_STATE_DISABLED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %32

27:                                               ; preds = %15
  %28 = call i32 @DELAY(i32 1000)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %12

32:                                               ; preds = %26, %12
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @BWI_RX32_RINGINFO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %41, i64 %44, i32 0)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i64, i32) #1

declare dso_local i64 @CSR_READ_4(%struct.bwi_softc*, i64) #1

declare dso_local i64 @__SHIFTOUT(i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
