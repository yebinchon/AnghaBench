; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32 }

@ALE_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_RESET = common dso_local global i32 0, align 4
@ALE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"master reset timeout!\0A\00", align 1
@ALE_IDLE_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"reset timeout(0x%08x)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_reset(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %5 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %6 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %7 = call i32 @CSR_READ_4(%struct.ale_softc* %6, i32 4104)
  %8 = or i32 %7, 32768
  %9 = call i32 @CSR_WRITE_4(%struct.ale_softc* %5, i32 4104, i32 %8)
  %10 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %11 = load i32, i32* @ALE_MASTER_CFG, align 4
  %12 = load i32, i32* @MASTER_RESET, align 4
  %13 = call i32 @CSR_WRITE_4(%struct.ale_softc* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @ALE_RESET_TIMEOUT, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = call i32 @DELAY(i32 10)
  %20 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %21 = load i32, i32* @ALE_MASTER_CFG, align 4
  %22 = call i32 @CSR_READ_4(%struct.ale_softc* %20, i32 %21)
  %23 = load i32, i32* @MASTER_RESET, align 4
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
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* @ALE_RESET_TIMEOUT, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %52, %39
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %46 = load i32, i32* @ALE_IDLE_STATUS, align 4
  %47 = call i32 @CSR_READ_4(%struct.ale_softc* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %55

50:                                               ; preds = %44
  %51 = call i32 @DELAY(i32 10)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  br label %41

55:                                               ; preds = %49, %41
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
