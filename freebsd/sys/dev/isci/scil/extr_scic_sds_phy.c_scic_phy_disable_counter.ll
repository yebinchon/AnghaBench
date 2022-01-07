; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_disable_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_disable_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"scic_phy_disable_counter(0x%x, 0x%x) enter\0A\00", align 1
@SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_phy_disable_counter(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @sci_base_object_get_logger(i32* %16)
  %18 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SCIC_LOG_TRACE(i32 %20)
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %90 [
    i32 140, label %23
    i32 131, label %34
    i32 144, label %45
    i32 139, label %56
    i32 130, label %67
    i32 142, label %78
    i32 138, label %89
    i32 129, label %89
    i32 135, label %89
    i32 128, label %89
    i32 143, label %89
    i32 141, label %89
    i32 136, label %89
    i32 133, label %89
    i32 134, label %89
    i32 137, label %89
    i32 132, label %89
  ]

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @SCU_SAS_ECENCR_READ(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %31, i32 %32)
  br label %92

34:                                               ; preds = %2
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @SCU_SAS_ECENCR_READ(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %42, i32 %43)
  br label %92

45:                                               ; preds = %2
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @SCU_SAS_ECENCR_READ(i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %53, i32 %54)
  br label %92

56:                                               ; preds = %2
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @SCU_SAS_ECENCR_READ(i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX, align 4
  %60 = shl i32 1, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %64, i32 %65)
  br label %92

67:                                               ; preds = %2
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @SCU_SAS_ECENCR_READ(i32* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX, align 4
  %71 = shl i32 1, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %75, i32 %76)
  br label %92

78:                                               ; preds = %2
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @SCU_SAS_ECENCR_READ(i32* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* @SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX, align 4
  %82 = shl i32 1, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %86, i32 %87)
  br label %92

89:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %90

90:                                               ; preds = %2, %89
  %91 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %78, %67, %56, %45, %34, %23
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @SCU_SAS_ECENCR_READ(i32*) #1

declare dso_local i32 @SCU_SAS_ECENCR_WRITE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
