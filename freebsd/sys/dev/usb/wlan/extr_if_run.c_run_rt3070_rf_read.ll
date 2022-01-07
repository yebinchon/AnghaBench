; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_rf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_rf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }

@RT3070_RF_CSR_CFG = common dso_local global i32 0, align 4
@RT3070_RF_KICK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*, i32, i32*)* @run_rt3070_rf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_rt3070_rf_read(%struct.run_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.run_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %28, %3
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %16 = load i32, i32* @RT3070_RF_CSR_CFG, align 4
  %17 = call i32 @run_read(%struct.run_softc* %15, i32 %16, i32* %8)
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %78

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @RT3070_RF_KICK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %31

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %11

31:                                               ; preds = %26, %11
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 100
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %35, i32* %4, align 4
  br label %78

36:                                               ; preds = %31
  %37 = load i32, i32* @RT3070_RF_KICK, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %42 = load i32, i32* @RT3070_RF_CSR_CFG, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @run_write(%struct.run_softc* %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %78

48:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 100
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %54 = load i32, i32* @RT3070_RF_CSR_CFG, align 4
  %55 = call i32 @run_read(%struct.run_softc* %53, i32 %54, i32* %8)
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %78

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @RT3070_RF_KICK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %49

69:                                               ; preds = %64, %49
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 100
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %73, i32* %4, align 4
  br label %78

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %72, %57, %46, %34, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
