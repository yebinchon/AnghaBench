; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_stop_txmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_stop_txmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i32 }

@AGE_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_TX_ENB = common dso_local global i32 0, align 4
@AGE_DMA_CFG = common dso_local global i32 0, align 4
@DMA_CFG_RD_ENB = common dso_local global i32 0, align 4
@AGE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@AGE_IDLE_STATUS = common dso_local global i32 0, align 4
@IDLE_STATUS_TXMAC = common dso_local global i32 0, align 4
@IDLE_STATUS_DMARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"stopping TxMAC timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_stop_txmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_stop_txmac(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %5 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %6 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %5)
  %7 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %8 = load i32, i32* @AGE_MAC_CFG, align 4
  %9 = call i32 @CSR_READ_4(%struct.age_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAC_CFG_TX_ENB, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @MAC_CFG_TX_ENB, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %20 = load i32, i32* @AGE_MAC_CFG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @CSR_WRITE_4(%struct.age_softc* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %25 = load i32, i32* @AGE_DMA_CFG, align 4
  %26 = call i32 @CSR_READ_4(%struct.age_softc* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @DMA_CFG_RD_ENB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32, i32* @DMA_CFG_RD_ENB, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %37 = load i32, i32* @AGE_DMA_CFG, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @CSR_WRITE_4(%struct.age_softc* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %23
  %41 = load i32, i32* @AGE_RESET_TIMEOUT, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %57, %40
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %47 = load i32, i32* @AGE_IDLE_STATUS, align 4
  %48 = call i32 @CSR_READ_4(%struct.age_softc* %46, i32 %47)
  %49 = load i32, i32* @IDLE_STATUS_TXMAC, align 4
  %50 = load i32, i32* @IDLE_STATUS_DMARD, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %60

55:                                               ; preds = %45
  %56 = call i32 @DELAY(i32 10)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %4, align 4
  br label %42

60:                                               ; preds = %54, %42
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %65 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %60
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
