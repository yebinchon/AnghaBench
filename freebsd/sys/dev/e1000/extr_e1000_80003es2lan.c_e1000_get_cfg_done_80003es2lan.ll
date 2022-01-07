; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_get_cfg_done_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_get_cfg_done_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PHY_CFG_TIMEOUT = common dso_local global i64 0, align 8
@E1000_NVM_CFG_DONE_PORT_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"e1000_get_cfg_done_80003es2lan\00", align 1
@E1000_NVM_CFG_DONE_PORT_1 = common dso_local global i32 0, align 4
@E1000_EEMNGCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"MNG configuration cycle has not completed.\0A\00", align 1
@E1000_ERR_RESET = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_get_cfg_done_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_cfg_done_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i64, i64* @PHY_CFG_TIMEOUT, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_0, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_1, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %1
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = load i32, i32* @E1000_EEMNGCTL, align 4
  %23 = call i32 @E1000_READ_REG(%struct.e1000_hw* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  %29 = call i32 @msec_delay(i32 1)
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %4, align 8
  br label %17

32:                                               ; preds = %27, %17
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* @E1000_ERR_RESET, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %2, align 8
  br label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %2, align 8
  ret i64 %42
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
