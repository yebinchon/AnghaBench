; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_poll_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_poll_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_poll_bit(%struct.iwm_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwm_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %12

12:                                               ; preds = %27, %5
  %13 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @IWM_READ(%struct.iwm_softc* %13, i32 %14)
  %16 = load i32, i32* %10, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %31

23:                                               ; preds = %12
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %28, 10
  store i32 %29, i32* %11, align 4
  %30 = call i32 @DELAY(i32 10)
  br label %12

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @IWM_READ(%struct.iwm_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
