; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, i32 }

@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_RESET = common dso_local global i32 0, align 4
@XL_FLAG_WEIRDRESET = common dso_local global i32 0, align 4
@XL_RESETOPT_DISADVFD = common dso_local global i32 0, align 4
@XL_FLAG_USE_MMIO = common dso_local global i32 0, align 4
@XL_TIMEOUT = common dso_local global i32 0, align 4
@XL_STATUS = common dso_local global i32 0, align 4
@XL_STAT_CMDBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reset didn't complete\0A\00", align 1
@XL_CMD_RX_RESET = common dso_local global i32 0, align 4
@XL_CMD_TX_RESET = common dso_local global i32 0, align 4
@XL_FLAG_INVERT_LED_PWR = common dso_local global i32 0, align 4
@XL_FLAG_INVERT_MII_PWR = common dso_local global i32 0, align 4
@XL_W2_RESET_OPTIONS = common dso_local global i32 0, align 4
@XL_RESETOPT_INVERT_LED = common dso_local global i32 0, align 4
@XL_RESETOPT_INVERT_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_reset(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %4 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %5 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %4)
  %6 = call i32 @XL_SEL_WIN(i32 0)
  %7 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %8 = load i32, i32* @XL_COMMAND, align 4
  %9 = load i32, i32* @XL_CMD_RESET, align 4
  %10 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %11 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XL_FLAG_WEIRDRESET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @XL_RESETOPT_DISADVFD, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = or i32 %9, %20
  %22 = call i32 @CSR_WRITE_2(%struct.xl_softc* %7, i32 %8, i32 %21)
  %23 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %24 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @XL_FLAG_USE_MMIO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 @DELAY(i32 100000)
  br label %31

31:                                               ; preds = %29, %19
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @XL_TIMEOUT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = call i32 @DELAY(i32 10)
  %38 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %39 = load i32, i32* @XL_STATUS, align 4
  %40 = call i32 @CSR_READ_2(%struct.xl_softc* %38, i32 %39)
  %41 = load i32, i32* @XL_STAT_CMDBUSY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %49

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %32

49:                                               ; preds = %44, %32
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @XL_TIMEOUT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %55 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %49
  %59 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %60 = load i32, i32* @XL_COMMAND, align 4
  %61 = load i32, i32* @XL_CMD_RX_RESET, align 4
  %62 = call i32 @CSR_WRITE_2(%struct.xl_softc* %59, i32 %60, i32 %61)
  %63 = call i32 @DELAY(i32 100000)
  %64 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %65 = call i32 @xl_wait(%struct.xl_softc* %64)
  %66 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %67 = load i32, i32* @XL_COMMAND, align 4
  %68 = load i32, i32* @XL_CMD_TX_RESET, align 4
  %69 = call i32 @CSR_WRITE_2(%struct.xl_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %71 = call i32 @xl_wait(%struct.xl_softc* %70)
  %72 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %73 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XL_FLAG_INVERT_LED_PWR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %58
  %79 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %80 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @XL_FLAG_INVERT_MII_PWR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %78, %58
  %86 = call i32 @XL_SEL_WIN(i32 2)
  %87 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %88 = load i32, i32* @XL_W2_RESET_OPTIONS, align 4
  %89 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %90 = load i32, i32* @XL_W2_RESET_OPTIONS, align 4
  %91 = call i32 @CSR_READ_2(%struct.xl_softc* %89, i32 %90)
  %92 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %93 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @XL_FLAG_INVERT_LED_PWR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = load i32, i32* @XL_RESETOPT_INVERT_LED, align 4
  br label %101

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = or i32 %91, %102
  %104 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %105 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @XL_FLAG_INVERT_MII_PWR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* @XL_RESETOPT_INVERT_MII, align 4
  br label %113

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = or i32 %103, %114
  %116 = call i32 @CSR_WRITE_2(%struct.xl_softc* %87, i32 %88, i32 %115)
  br label %117

117:                                              ; preds = %113, %78
  %118 = call i32 @DELAY(i32 100000)
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.xl_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xl_wait(%struct.xl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
