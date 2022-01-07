; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_channel_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_channel_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32, i32 }

@SEC_TIMEOUT = common dso_local global i32 0, align 4
@SEC_CHAN_CCR_R = common dso_local global i32 0, align 4
@SEC_CHAN_CCR_CON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"timeout while waiting for channel reset!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SEC_CHAN_CCR_CDIE = common dso_local global i32 0, align 4
@SEC_CHAN_CCR_NT = common dso_local global i32 0, align 4
@SEC_CHAN_CCR_BS = common dso_local global i32 0, align 4
@SEC_CHAN_CCR_CDWE = common dso_local global i32 0, align 4
@SEC_CHAN_CCR_AWSE = common dso_local global i32 0, align 4
@SEC_CHAN_CCR_WGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*, i32, i32)* @sec_channel_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_channel_reset(%struct.sec_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sec_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @SEC_TIMEOUT, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SEC_CHAN_CCR_R, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @SEC_CHAN_CCR_CON, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %9, align 4
  %20 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @SEC_CHAN_CCR(i32 %21)
  %23 = call i32 @SEC_READ(%struct.sec_softc* %20, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @SEC_CHAN_CCR(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @SEC_WRITE(%struct.sec_softc* %24, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %51, %18
  %32 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @SEC_CHAN_CCR(i32 %33)
  %35 = call i32 @SEC_READ(%struct.sec_softc* %32, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = call i32 @DELAY(i32 1000)
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1000
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %47 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %50, i32* %4, align 4
  br label %81

51:                                               ; preds = %39
  br label %31

52:                                               ; preds = %31
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %52
  %56 = load i32, i32* @SEC_CHAN_CCR_CDIE, align 4
  %57 = load i32, i32* @SEC_CHAN_CCR_NT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SEC_CHAN_CCR_BS, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %62 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %74 [
    i32 2, label %64
    i32 3, label %68
  ]

64:                                               ; preds = %55
  %65 = load i32, i32* @SEC_CHAN_CCR_CDWE, align 4
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %74

68:                                               ; preds = %55
  %69 = load i32, i32* @SEC_CHAN_CCR_AWSE, align 4
  %70 = load i32, i32* @SEC_CHAN_CCR_WGN, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %55, %68, %64
  %75 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @SEC_CHAN_CCR(i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @SEC_WRITE(%struct.sec_softc* %75, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %52
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %45
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @SEC_READ(%struct.sec_softc*, i32) #1

declare dso_local i32 @SEC_CHAN_CCR(i32) #1

declare dso_local i32 @SEC_WRITE(%struct.sec_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
