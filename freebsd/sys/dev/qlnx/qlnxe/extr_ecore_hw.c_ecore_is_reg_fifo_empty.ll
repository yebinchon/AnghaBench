; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_is_reg_fifo_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_is_reg_fifo_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@GRC_REG_TRACE_FIFO_VALID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_is_reg_fifo_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_is_reg_fifo_empty(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %17 = load i32, i32* @GRC_REG_TRACE_FIFO_VALID_DATA, align 4
  %18 = call i32 @ecore_set_ptt(%struct.ecore_hwfn* %15, %struct.ecore_ptt* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @REG_RD(%struct.ecore_hwfn* %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i64 @CHIP_REV_IS_SLOW(%struct.TYPE_2__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = call i32 @OSAL_UDELAY(i32 100)
  br label %31

31:                                               ; preds = %29, %14
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @ecore_set_ptt(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i64 @REG_RD(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.TYPE_2__*) #1

declare dso_local i32 @OSAL_UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
