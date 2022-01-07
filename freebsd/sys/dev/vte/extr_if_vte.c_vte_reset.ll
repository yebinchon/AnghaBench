; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32 }

@VTE_MCR1 = common dso_local global i32 0, align 4
@MCR1_MAC_RESET = common dso_local global i32 0, align 4
@VTE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reset timeout(0x%04x)!\0A\00", align 1
@VTE_MACSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_reset(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %5 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %6 = load i32, i32* @VTE_MCR1, align 4
  %7 = call i32 @CSR_READ_2(%struct.vte_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %9 = load i32, i32* @VTE_MCR1, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MCR1_MAC_RESET, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @CSR_WRITE_2(%struct.vte_softc* %8, i32 %9, i32 %12)
  %14 = load i32, i32* @VTE_RESET_TIMEOUT, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = call i32 @DELAY(i32 10)
  %20 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %21 = load i32, i32* @VTE_MCR1, align 4
  %22 = call i32 @CSR_READ_2(%struct.vte_softc* %20, i32 %21)
  %23 = load i32, i32* @MCR1_MAC_RESET, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  br label %15

31:                                               ; preds = %26, %15
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %36 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %31
  %41 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %42 = load i32, i32* @VTE_MACSM, align 4
  %43 = call i32 @CSR_WRITE_2(%struct.vte_softc* %41, i32 %42, i32 2)
  %44 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %45 = load i32, i32* @VTE_MACSM, align 4
  %46 = call i32 @CSR_WRITE_2(%struct.vte_softc* %44, i32 %45, i32 0)
  %47 = call i32 @DELAY(i32 5000)
  ret void
}

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
