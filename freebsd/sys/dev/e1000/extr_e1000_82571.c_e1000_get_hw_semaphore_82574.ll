; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_get_hw_semaphore_82574.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_get_hw_semaphore_82574.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"e1000_get_hw_semaphore_82573\00", align 1
@E1000_EXTCNF_CTRL = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP = common dso_local global i32 0, align 4
@MDIO_OWNERSHIP_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Driver can't access the PHY\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_get_hw_semaphore_82574 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_hw_semaphore_82574(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = call i32 @ASSERT_CTX_LOCK_HELD(%struct.e1000_hw* %7)
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = load i32, i32* @E1000_EXTCNF_CTRL, align 4
  %11 = call i32 @E1000_READ_REG(%struct.e1000_hw* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i32, i32* @E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = load i32, i32* @E1000_EXTCNF_CTRL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %16, i32 %17, i32 %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = load i32, i32* @E1000_EXTCNF_CTRL, align 4
  %22 = call i32 @E1000_READ_REG(%struct.e1000_hw* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %36

28:                                               ; preds = %12
  %29 = call i32 @msec_delay(i32 2)
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @MDIO_OWNERSHIP_TIMEOUT, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %12, label %36

36:                                               ; preds = %32, %27
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @MDIO_OWNERSHIP_TIMEOUT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = call i32 @e1000_put_hw_semaphore_82574(%struct.e1000_hw* %41)
  %43 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* @E1000_ERR_PHY, align 8
  %45 = sub nsw i64 0, %44
  store i64 %45, i64* %2, align 8
  br label %48

46:                                               ; preds = %36
  %47 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ASSERT_CTX_LOCK_HELD(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @e1000_put_hw_semaphore_82574(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
