; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_set_obff_timer_pch_lpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_set_obff_timer_pch_lpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"e1000_set_obff_timer_pch_lpt\00", align 1
@E1000_ITR_MASK = common dso_local global i32 0, align 4
@E1000_ITR_MULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid OBFF timer %d\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@E1000_SVCR = common dso_local global i32 0, align 4
@E1000_SVCR_OFF_TIMER_MASK = common dso_local global i32 0, align 4
@E1000_SVCR_OFF_TIMER_SHIFT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32)* @e1000_set_obff_timer_pch_lpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_obff_timer_pch_lpt(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @E1000_ITR_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @E1000_ITR_MULT, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @E1000_ITR_MASK, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %45

27:                                               ; preds = %18
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %29 = load i32, i32* @E1000_SVCR, align 4
  %30 = call i32 @E1000_READ_REG(%struct.e1000_hw* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @E1000_SVCR_OFF_TIMER_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @E1000_SVCR_OFF_TIMER_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %41 = load i32, i32* @E1000_SVCR, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %27, %22
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
