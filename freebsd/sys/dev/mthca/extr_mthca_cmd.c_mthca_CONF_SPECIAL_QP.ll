; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_CONF_SPECIAL_QP.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_CONF_SPECIAL_QP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CMD_CONF_SPECIAL_QP = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_CONF_SPECIAL_QP(%struct.mthca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %14 [
    i32 128, label %10
    i32 131, label %11
    i32 129, label %12
    i32 130, label %13
  ]

10:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

11:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %17

12:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %17

13:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  br label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %13, %12, %11, %10
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CMD_CONF_SPECIAL_QP, align 4
  %22 = load i32, i32* @CMD_TIME_CLASS_B, align 4
  %23 = call i32 @mthca_cmd(%struct.mthca_dev* %18, i32 0, i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @mthca_cmd(%struct.mthca_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
