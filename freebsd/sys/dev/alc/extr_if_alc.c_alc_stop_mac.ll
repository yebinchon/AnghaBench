; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stop_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stop_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32 }

@ALC_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_TX_ENB = common dso_local global i32 0, align 4
@MAC_CFG_RX_ENB = common dso_local global i32 0, align 4
@ALC_TIMEOUT = common dso_local global i32 0, align 4
@ALC_IDLE_STATUS = common dso_local global i32 0, align 4
@IDLE_STATUS_RXMAC = common dso_local global i32 0, align 4
@IDLE_STATUS_TXMAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not disable Rx/Tx MAC(0x%08x)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_stop_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_stop_mac(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %5 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %6 = call i32 @alc_stop_queue(%struct.alc_softc* %5)
  %7 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %8 = load i32, i32* @ALC_MAC_CFG, align 4
  %9 = call i32 @CSR_READ_4(%struct.alc_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAC_CFG_TX_ENB, align 4
  %12 = load i32, i32* @MAC_CFG_RX_ENB, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @MAC_CFG_TX_ENB, align 4
  %18 = load i32, i32* @MAC_CFG_RX_ENB, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %24 = load i32, i32* @ALC_MAC_CFG, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @CSR_WRITE_4(%struct.alc_softc* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %1
  %28 = load i32, i32* @ALC_TIMEOUT, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %45, %27
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %34 = load i32, i32* @ALC_IDLE_STATUS, align 4
  %35 = call i32 @CSR_READ_4(%struct.alc_softc* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @IDLE_STATUS_RXMAC, align 4
  %38 = load i32, i32* @IDLE_STATUS_TXMAC, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %48

43:                                               ; preds = %32
  %44 = call i32 @DELAY(i32 10)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  br label %29

48:                                               ; preds = %42, %29
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %53 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %48
  ret void
}

declare dso_local i32 @alc_stop_queue(%struct.alc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
