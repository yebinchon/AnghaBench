; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_acquire_swflag_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_acquire_swflag_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@PHY_CFG_TIMEOUT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"e1000_acquire_swflag_ich8lan\00", align 1
@E1000_EXTCNF_CTRL = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_SWFLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SW has already locked the resource.\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@SW_FLAG_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"Failed to acquire the semaphore, FW or HW has it: FWSM=0x%8.8x EXTCNF_CTRL=0x%8.8x)\0A\00", align 1
@E1000_FWSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_acquire_swflag_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i32, i32* @PHY_CFG_TIMEOUT, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = call i32 @ASSERT_CTX_LOCK_HELD(%struct.e1000_hw* %9)
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = load i32, i32* @E1000_EXTCNF_CTRL, align 4
  %17 = call i32 @E1000_READ_REG(%struct.e1000_hw* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @E1000_EXTCNF_CTRL_SWFLAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  %24 = call i32 @msec_delay_irq(i32 1)
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %22, %11
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %79

34:                                               ; preds = %27
  %35 = load i32, i32* @SW_FLAG_TIMEOUT, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @E1000_EXTCNF_CTRL_SWFLAG, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = load i32, i32* @E1000_EXTCNF_CTRL, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %55, %34
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = load i32, i32* @E1000_EXTCNF_CTRL, align 4
  %49 = call i32 @E1000_READ_REG(%struct.e1000_hw* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @E1000_EXTCNF_CTRL_SWFLAG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %59

55:                                               ; preds = %46
  %56 = call i32 @msec_delay_irq(i32 1)
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  br label %43

59:                                               ; preds = %54, %43
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %59
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = load i32, i32* @E1000_FWSM, align 4
  %65 = call i32 @E1000_READ_REG(%struct.e1000_hw* %63, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* @E1000_EXTCNF_CTRL_SWFLAG, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = load i32, i32* @E1000_EXTCNF_CTRL, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %72, i32 %73, i32 %74)
  %76 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %79

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %62, %30
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ASSERT_CTX_LOCK_HELD(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @msec_delay_irq(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
