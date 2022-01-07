; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_get_cfg_done_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_get_cfg_done_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@PHY_CFG_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"e1000_get_cfg_done_82571\00", align 1
@E1000_EEMNGCTL = common dso_local global i32 0, align 4
@E1000_NVM_CFG_DONE_PORT_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"MNG configuration cycle has not completed.\0A\00", align 1
@E1000_ERR_RESET = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_get_cfg_done_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_cfg_done_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = load i64, i64* @PHY_CFG_TIMEOUT, align 8
  store i64 %5, i64* %4, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* @E1000_EEMNGCTL, align 4
  %13 = call i32 @E1000_READ_REG(%struct.e1000_hw* %11, i32 %12)
  %14 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_0, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  %19 = call i32 @msec_delay(i32 1)
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %4, align 8
  br label %7

22:                                               ; preds = %17, %7
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* @E1000_ERR_RESET, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %2, align 8
  br label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
