; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@DC_BUSCTL = common dso_local global i32 0, align 4
@DC_BUSCTL_RESET = common dso_local global i32 0, align 4
@DC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reset never completed!\0A\00", align 1
@DC_IMR = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_SIARESET = common dso_local global i32 0, align 4
@DC_SIA_RESET = common dso_local global i32 0, align 4
@DC_10BTCTRL = common dso_local global i32 0, align 4
@DC_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_reset(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %4 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %5 = load i32, i32* @DC_BUSCTL, align 4
  %6 = load i32, i32* @DC_BUSCTL_RESET, align 4
  %7 = call i32 @DC_SETBIT(%struct.dc_softc* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @DC_TIMEOUT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = call i32 @DELAY(i32 10)
  %14 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %15 = load i32, i32* @DC_BUSCTL, align 4
  %16 = call i32 @CSR_READ_4(%struct.dc_softc* %14, i32 %15)
  %17 = load i32, i32* @DC_BUSCTL_RESET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %25

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %20, %8
  %26 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %27 = call i64 @DC_IS_ASIX(%struct.dc_softc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %31 = call i64 @DC_IS_ADMTEK(%struct.dc_softc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %35 = call i64 @DC_IS_CONEXANT(%struct.dc_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %39 = call i64 @DC_IS_XIRCOM(%struct.dc_softc* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %43 = call i64 @DC_IS_INTEL(%struct.dc_softc* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %47 = call i64 @DC_IS_ULI(%struct.dc_softc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45, %41, %37, %33, %29, %25
  %50 = call i32 @DELAY(i32 10000)
  %51 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %52 = load i32, i32* @DC_BUSCTL, align 4
  %53 = load i32, i32* @DC_BUSCTL_RESET, align 4
  %54 = call i32 @DC_CLRBIT(%struct.dc_softc* %51, i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @DC_TIMEOUT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %61 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %55
  %65 = call i32 @DELAY(i32 1000)
  %66 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %67 = load i32, i32* @DC_IMR, align 4
  %68 = call i32 @CSR_WRITE_4(%struct.dc_softc* %66, i32 %67, i32 0)
  %69 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %70 = load i32, i32* @DC_BUSCTL, align 4
  %71 = call i32 @CSR_WRITE_4(%struct.dc_softc* %69, i32 %70, i32 0)
  %72 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %73 = load i32, i32* @DC_NETCFG, align 4
  %74 = call i32 @CSR_WRITE_4(%struct.dc_softc* %72, i32 %73, i32 0)
  %75 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %76 = call i64 @DC_IS_INTEL(%struct.dc_softc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %64
  %79 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %80 = load i32, i32* @DC_SIARESET, align 4
  %81 = load i32, i32* @DC_SIA_RESET, align 4
  %82 = call i32 @DC_SETBIT(%struct.dc_softc* %79, i32 %80, i32 %81)
  %83 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %84 = load i32, i32* @DC_10BTCTRL, align 4
  %85 = call i32 @CSR_WRITE_4(%struct.dc_softc* %83, i32 %84, i32 -1)
  %86 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %87 = load i32, i32* @DC_WATCHDOG, align 4
  %88 = call i32 @CSR_WRITE_4(%struct.dc_softc* %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %78, %64
  ret void
}

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i64 @DC_IS_ASIX(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_ADMTEK(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_CONEXANT(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_XIRCOM(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_INTEL(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_ULI(%struct.dc_softc*) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
