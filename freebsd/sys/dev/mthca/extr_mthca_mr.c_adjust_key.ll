; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_adjust_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_mr.c_adjust_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }

@MTHCA_FLAG_SINAI_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, i32)* @adjust_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_key(%struct.mthca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %7 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MTHCA_FLAG_SINAI_OPT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 20
  %15 = and i32 %14, 8388608
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 8388607
  %18 = or i32 %15, %17
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
