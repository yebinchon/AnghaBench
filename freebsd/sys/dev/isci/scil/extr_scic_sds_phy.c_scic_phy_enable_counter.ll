; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_enable_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_enable_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"scic_phy_enable_counter(0x%x, 0x%x) enter\0A\00", align 1
@SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX = common dso_local global i32 0, align 4
@SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_phy_enable_counter(i64 %0, i32 %1) #0 {
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
  switch i32 %22, label %84 [
    i32 140, label %23
    i32 131, label %33
    i32 144, label %43
    i32 139, label %53
    i32 130, label %63
    i32 142, label %73
    i32 138, label %83
    i32 129, label %83
    i32 135, label %83
    i32 128, label %83
    i32 143, label %83
    i32 141, label %83
    i32 136, label %83
    i32 133, label %83
    i32 134, label %83
    i32 137, label %83
    i32 132, label %83
  ]

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @SCU_SAS_ECENCR_READ(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %30, i32 %31)
  br label %86

33:                                               ; preds = %2
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @SCU_SAS_ECENCR_READ(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %40, i32 %41)
  br label %86

43:                                               ; preds = %2
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @SCU_SAS_ECENCR_READ(i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %50, i32 %51)
  br label %86

53:                                               ; preds = %2
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @SCU_SAS_ECENCR_READ(i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %60, i32 %61)
  br label %86

63:                                               ; preds = %2
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @SCU_SAS_ECENCR_READ(i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %70, i32 %71)
  br label %86

73:                                               ; preds = %2
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @SCU_SAS_ECENCR_READ(i32* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* @SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX, align 4
  %77 = shl i32 1, %76
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @SCU_SAS_ECENCR_WRITE(i32* %80, i32 %81)
  br label %86

83:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %86

84:                                               ; preds = %2
  %85 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %83, %73, %63, %53, %43, %33, %23
  %87 = load i32, i32* %6, align 4
  ret i32 %87
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
