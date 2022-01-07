; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_stop_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_stop_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i32 }

@NGE_CSR = common dso_local global i32 0, align 4
@NGE_CSR_TX_ENABLE = common dso_local global i32 0, align 4
@NGE_CSR_RX_ENABLE = common dso_local global i32 0, align 4
@NGE_CSR_TX_DISABLE = common dso_local global i32 0, align 4
@NGE_CSR_RX_DISABLE = common dso_local global i32 0, align 4
@NGE_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nge_softc*)* @nge_stop_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nge_stop_mac(%struct.nge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nge_softc* %0, %struct.nge_softc** %3, align 8
  %6 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %7 = call i32 @NGE_LOCK_ASSERT(%struct.nge_softc* %6)
  %8 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %9 = load i32, i32* @NGE_CSR, align 4
  %10 = call i32 @CSR_READ_4(%struct.nge_softc* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NGE_CSR_TX_ENABLE, align 4
  %13 = load i32, i32* @NGE_CSR_RX_ENABLE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %1
  %18 = load i32, i32* @NGE_CSR_TX_ENABLE, align 4
  %19 = load i32, i32* @NGE_CSR_RX_ENABLE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @NGE_CSR_TX_DISABLE, align 4
  %25 = load i32, i32* @NGE_CSR_RX_DISABLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %30 = load i32, i32* @NGE_CSR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @CSR_WRITE_4(%struct.nge_softc* %29, i32 %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %49, %17
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NGE_TIMEOUT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = call i32 @DELAY(i32 1)
  %39 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %40 = load i32, i32* @NGE_CSR, align 4
  %41 = call i32 @CSR_READ_4(%struct.nge_softc* %39, i32 %40)
  %42 = load i32, i32* @NGE_CSR_RX_ENABLE, align 4
  %43 = load i32, i32* @NGE_CSR_TX_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %33

52:                                               ; preds = %47, %33
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NGE_TIMEOUT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %1
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @NGE_LOCK_ASSERT(%struct.nge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.nge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
