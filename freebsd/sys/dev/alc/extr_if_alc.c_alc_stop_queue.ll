; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stop_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32 }

@ALC_RXQ_CFG = common dso_local global i32 0, align 4
@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@RXQ_CFG_ENB = common dso_local global i32 0, align 4
@RXQ_CFG_QUEUE0_ENB = common dso_local global i32 0, align 4
@ALC_TXQ_CFG = common dso_local global i32 0, align 4
@TXQ_CFG_ENB = common dso_local global i32 0, align 4
@ALC_TIMEOUT = common dso_local global i32 0, align 4
@ALC_IDLE_STATUS = common dso_local global i32 0, align 4
@IDLE_STATUS_RXQ = common dso_local global i32 0, align 4
@IDLE_STATUS_TXQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not disable RxQ/TxQ (0x%08x)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_stop_queue(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %5 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %6 = load i32, i32* @ALC_RXQ_CFG, align 4
  %7 = call i32 @CSR_READ_4(%struct.alc_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @RXQ_CFG_ENB, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* @RXQ_CFG_ENB, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %25 = load i32, i32* @ALC_RXQ_CFG, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @CSR_WRITE_4(%struct.alc_softc* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %14
  br label %44

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @RXQ_CFG_QUEUE0_ENB, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, i32* @RXQ_CFG_QUEUE0_ENB, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %40 = load i32, i32* @ALC_RXQ_CFG, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @CSR_WRITE_4(%struct.alc_softc* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %29
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %46 = load i32, i32* @ALC_TXQ_CFG, align 4
  %47 = call i32 @CSR_READ_4(%struct.alc_softc* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @TXQ_CFG_ENB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load i32, i32* @TXQ_CFG_ENB, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %58 = load i32, i32* @ALC_TXQ_CFG, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @CSR_WRITE_4(%struct.alc_softc* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %44
  %62 = call i32 @DELAY(i32 40)
  %63 = load i32, i32* @ALC_TIMEOUT, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %80, %61
  %65 = load i32, i32* %4, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %69 = load i32, i32* @ALC_IDLE_STATUS, align 4
  %70 = call i32 @CSR_READ_4(%struct.alc_softc* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @IDLE_STATUS_RXQ, align 4
  %73 = load i32, i32* @IDLE_STATUS_TXQ, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %83

78:                                               ; preds = %67
  %79 = call i32 @DELAY(i32 10)
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %4, align 4
  br label %64

83:                                               ; preds = %77, %64
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %88 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %83
  ret void
}

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
