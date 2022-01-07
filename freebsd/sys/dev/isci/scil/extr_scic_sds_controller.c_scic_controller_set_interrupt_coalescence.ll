; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_set_interrupt_coalescence.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_set_interrupt_coalescence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@INTERRUPT_COALESCE_NUMBER_MAX = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@INTERRUPT_COALESCE_TIMEOUT_BASE_RANGE_LOWER_BOUND_NS = common dso_local global i32 0, align 4
@INTERRUPT_COALESCE_TIMEOUT_BASE_RANGE_UPPER_BOUND_NS = common dso_local global i32 0, align 4
@INTERRUPT_COALESCE_TIMEOUT_ENCODE_MIN = common dso_local global i64 0, align 8
@INTERRUPT_COALESCE_TIMEOUT_ENCODE_MAX = common dso_local global i64 0, align 8
@INTERRUPT_COALESCE_TIMEOUT_MAX_US = common dso_local global i32 0, align 4
@NUMBER = common dso_local global i32 0, align 4
@TIMER = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_set_interrupt_coalescence(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @INTERRUPT_COALESCE_NUMBER_MAX, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %18, i32* %4, align 4
  br label %110

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 0, i64* %9, align 8
  br label %92

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = mul nsw i64 %24, 100
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* @INTERRUPT_COALESCE_TIMEOUT_BASE_RANGE_LOWER_BOUND_NS, align 4
  %27 = sdiv i32 %26, 10
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* @INTERRUPT_COALESCE_TIMEOUT_BASE_RANGE_UPPER_BOUND_NS, align 4
  %30 = sdiv i32 %29, 10
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* @INTERRUPT_COALESCE_TIMEOUT_ENCODE_MIN, align 8
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %81, %23
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @INTERRUPT_COALESCE_TIMEOUT_ENCODE_MAX, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %84

46:                                               ; preds = %41, %37
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = mul nsw i64 %52, 2
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @INTERRUPT_COALESCE_TIMEOUT_MAX_US, align 4
  %58 = mul nsw i32 %57, 100
  %59 = sext i32 %58 to i64
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %11, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i64, i64* %10, align 8
  %66 = mul nsw i64 2, %65
  %67 = load i64, i64* %7, align 8
  %68 = sub nsw i64 %66, %67
  %69 = icmp slt i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %84

71:                                               ; preds = %61
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %84

74:                                               ; preds = %55, %50, %46
  %75 = load i64, i64* %11, align 8
  %76 = mul nsw i64 %75, 2
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = mul nsw i64 %77, 2
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %33

84:                                               ; preds = %71, %70, %45, %33
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @INTERRUPT_COALESCE_TIMEOUT_ENCODE_MAX, align 8
  %87 = add nsw i64 %86, 1
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %90, i32* %4, align 4
  br label %110

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %22
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = load i32, i32* @NUMBER, align 4
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @SMU_ICC_GEN_VAL(i32 %94, i64 %95)
  %97 = load i32, i32* @TIMER, align 4
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @SMU_ICC_GEN_VAL(i32 %97, i64 %98)
  %100 = or i32 %96, %99
  %101 = call i32 @SMU_ICC_WRITE(%struct.TYPE_3__* %93, i32 %100)
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sdiv i64 %105, 100
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %92, %89, %17
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @SMU_ICC_WRITE(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SMU_ICC_GEN_VAL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
