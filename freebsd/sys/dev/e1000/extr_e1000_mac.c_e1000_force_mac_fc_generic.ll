; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_force_mac_fc_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_force_mac_fc_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"e1000_force_mac_fc_generic\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"hw->fc.current_mode = %u\0A\00", align 1
@E1000_CTRL_TFCE = common dso_local global i32 0, align 4
@E1000_CTRL_RFCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_force_mac_fc_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @E1000_CTRL, align 4
  %8 = call i32 @E1000_READ_REG(%struct.e1000_hw* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %47 [
    i32 130, label %18
    i32 129, label %25
    i32 128, label %33
    i32 131, label %41
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %20 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %1
  %26 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %51

33:                                               ; preds = %1
  %34 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %51

41:                                               ; preds = %1
  %42 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %43 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %1
  %48 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %57

51:                                               ; preds = %41, %33, %25, %18
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = load i32, i32* @E1000_CTRL, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %47
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
