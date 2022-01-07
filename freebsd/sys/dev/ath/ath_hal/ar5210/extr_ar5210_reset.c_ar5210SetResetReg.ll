; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_reset.c_ar5210SetResetReg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_reset.c_ar5210SetResetReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_RC = common dso_local global i32 0, align 4
@AR_RC_RPCU = common dso_local global i32 0, align 4
@AR_RC_RDMA = common dso_local global i32 0, align 4
@AR_RC_RPHY = common dso_local global i32 0, align 4
@AR_RC_RMAC = common dso_local global i32 0, align 4
@INIT_CONFIG_STATUS = common dso_local global i32 0, align 4
@AR_CFG_SWTD = common dso_local global i32 0, align 4
@AR_CFG_SWRD = common dso_local global i32 0, align 4
@AR_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32, i32)* @ar5210SetResetReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5210SetResetReg(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ -1, %13 ]
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = load i32, i32* @AR_RC, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @OS_REG_WRITE(%struct.ath_hal* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @OS_DELAY(i32 %20)
  %22 = load i32, i32* @AR_RC_RPCU, align 4
  %23 = load i32, i32* @AR_RC_RDMA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @AR_RC_RPHY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AR_RC_RMAC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @AR_RC_RPCU, align 4
  %32 = load i32, i32* @AR_RC_RDMA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AR_RC_RPHY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AR_RC_RMAC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %41 = load i32, i32* @AR_RC, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ath_hal_wait(%struct.ath_hal* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @AR_RC_RMAC, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %14
  %50 = call i64 (...) @isBigEndian()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* @INIT_CONFIG_STATUS, align 4
  %54 = load i32, i32* @AR_CFG_SWTD, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AR_CFG_SWRD, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %59 = load i32, i32* @AR_CFG, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @OS_REG_WRITE(%struct.ath_hal* %58, i32 %59, i32 %60)
  br label %67

62:                                               ; preds = %49
  %63 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %64 = load i32, i32* @AR_CFG, align 4
  %65 = load i32, i32* @INIT_CONFIG_STATUS, align 4
  %66 = call i32 @OS_REG_WRITE(%struct.ath_hal* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %52
  br label %68

68:                                               ; preds = %67, %14
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @ath_hal_wait(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i64 @isBigEndian(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
