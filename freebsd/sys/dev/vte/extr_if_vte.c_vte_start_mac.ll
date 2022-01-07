; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_start_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_start_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32 }

@VTE_MCR0 = common dso_local global i32 0, align 4
@MCR0_RX_ENB = common dso_local global i32 0, align 4
@MCR0_TX_ENB = common dso_local global i32 0, align 4
@VTE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not enable RX/TX MAC(0x%04x)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_start_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_start_mac(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %5 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %6 = call i32 @VTE_LOCK_ASSERT(%struct.vte_softc* %5)
  %7 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %8 = load i32, i32* @VTE_MCR0, align 4
  %9 = call i32 @CSR_READ_2(%struct.vte_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MCR0_RX_ENB, align 4
  %12 = load i32, i32* @MCR0_TX_ENB, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @MCR0_RX_ENB, align 4
  %16 = load i32, i32* @MCR0_TX_ENB, align 4
  %17 = or i32 %15, %16
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %1
  %20 = load i32, i32* @MCR0_RX_ENB, align 4
  %21 = load i32, i32* @MCR0_TX_ENB, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %26 = load i32, i32* @VTE_MCR0, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @CSR_WRITE_2(%struct.vte_softc* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @VTE_TIMEOUT, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %49, %19
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %35 = load i32, i32* @VTE_MCR0, align 4
  %36 = call i32 @CSR_READ_2(%struct.vte_softc* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MCR0_RX_ENB, align 4
  %39 = load i32, i32* @MCR0_TX_ENB, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = load i32, i32* @MCR0_RX_ENB, align 4
  %43 = load i32, i32* @MCR0_TX_ENB, align 4
  %44 = or i32 %42, %43
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %52

47:                                               ; preds = %33
  %48 = call i32 @DELAY(i32 10)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  br label %30

52:                                               ; preds = %46, %30
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %57 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  br label %62

62:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @VTE_LOCK_ASSERT(%struct.vte_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vte_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
