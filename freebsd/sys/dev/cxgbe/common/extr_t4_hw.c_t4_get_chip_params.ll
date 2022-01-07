; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_chip_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_chip_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chip_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@t4_get_chip_params.chip_params = internal constant [3 x %struct.chip_params] [%struct.chip_params { i32 2, i32 15, i32 128, i32 128, i32 135, i32 132, i32 137, i32 130, i32 133 }, %struct.chip_params { i32 2, i32 16, i32 128, i32 128, i32 135, i32 131, i32 136, i32 130, i32 133 }, %struct.chip_params { i32 3, i32 16, i32 256, i32 256, i32 0, i32 131, i32 136, i32 128, i32 129 }], align 16
@CHELSIO_T4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.chip_params* @t4_get_chip_params(i32 %0) #0 {
  %2 = alloca %struct.chip_params*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @CHELSIO_T4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = sub nsw i64 %6, %4
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ARRAY_SIZE(%struct.chip_params* getelementptr inbounds ([3 x %struct.chip_params], [3 x %struct.chip_params]* @t4_get_chip_params.chip_params, i64 0, i64 0))
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  store %struct.chip_params* null, %struct.chip_params** %2, align 8
  br label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x %struct.chip_params], [3 x %struct.chip_params]* @t4_get_chip_params.chip_params, i64 0, i64 %18
  store %struct.chip_params* %19, %struct.chip_params** %2, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load %struct.chip_params*, %struct.chip_params** %2, align 8
  ret %struct.chip_params* %21
}

declare dso_local i32 @ARRAY_SIZE(%struct.chip_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
