; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32 }

@IPW_CSR_CTL = common dso_local global i32 0, align 4
@IPW_CTL_INIT = common dso_local global i32 0, align 4
@IPW_CTL_CLOCK_READY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IPW_CSR_RST = common dso_local global i32 0, align 4
@IPW_RST_SW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_softc*)* @ipw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_reset(%struct.ipw_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipw_softc* %0, %struct.ipw_softc** %3, align 8
  %6 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %7 = call i32 @ipw_stop_master(%struct.ipw_softc* %6)
  %8 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %9 = load i32, i32* @IPW_CSR_CTL, align 4
  %10 = call i32 @CSR_READ_4(%struct.ipw_softc* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %12 = load i32, i32* @IPW_CSR_CTL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IPW_CTL_INIT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %11, i32 %12, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 1000
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %22 = load i32, i32* @IPW_CSR_CTL, align 4
  %23 = call i32 @CSR_READ_4(%struct.ipw_softc* %21, i32 %22)
  %24 = load i32, i32* @IPW_CTL_CLOCK_READY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %33

28:                                               ; preds = %20
  %29 = call i32 @DELAY(i32 200)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17

33:                                               ; preds = %27, %17
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 1000
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @EIO, align 4
  store i32 %37, i32* %2, align 4
  br label %58

38:                                               ; preds = %33
  %39 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %40 = load i32, i32* @IPW_CSR_RST, align 4
  %41 = call i32 @CSR_READ_4(%struct.ipw_softc* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %43 = load i32, i32* @IPW_CSR_RST, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IPW_RST_SW_RESET, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %42, i32 %43, i32 %46)
  %48 = call i32 @DELAY(i32 10)
  %49 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %50 = load i32, i32* @IPW_CSR_CTL, align 4
  %51 = call i32 @CSR_READ_4(%struct.ipw_softc* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %53 = load i32, i32* @IPW_CSR_CTL, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @IPW_CTL_INIT, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %52, i32 %53, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %38, %36
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ipw_stop_master(%struct.ipw_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.ipw_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ipw_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
