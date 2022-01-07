; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_tx_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_tx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32 }

@VR_CR0 = common dso_local global i32 0, align 4
@VR_CR0_TX_ON = common dso_local global i32 0, align 4
@VR_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vr_softc*)* @vr_tx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_tx_stop(%struct.vr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vr_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %3, align 8
  %6 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %7 = load i32, i32* @VR_CR0, align 4
  %8 = call i32 @CSR_READ_1(%struct.vr_softc* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @VR_CR0_TX_ON, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  %14 = load i32, i32* @VR_CR0_TX_ON, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %19 = load i32, i32* @VR_CR0, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @CSR_WRITE_1(%struct.vr_softc* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @VR_TIMEOUT, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %37, %13
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = call i32 @DELAY(i32 5)
  %28 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %29 = load i32, i32* @VR_CR0, align 4
  %30 = call i32 @CSR_READ_1(%struct.vr_softc* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VR_CR0_TX_ON, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %4, align 4
  br label %23

40:                                               ; preds = %35, %23
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %1
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @CSR_READ_1(%struct.vr_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
