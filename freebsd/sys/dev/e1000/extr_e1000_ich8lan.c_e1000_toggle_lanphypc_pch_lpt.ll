; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_toggle_lanphypc_pch_lpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_toggle_lanphypc_pch_lpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_toggle_lanphypc_pch_lpt\00", align 1
@E1000_FEXTNVM3 = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK = common dso_local global i32 0, align 4
@E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_LANPHYPC_OVERRIDE = common dso_local global i32 0, align 4
@E1000_CTRL_LANPHYPC_VALUE = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i64 0, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LPCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_toggle_lanphypc_pch_lpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_toggle_lanphypc_pch_lpt(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = load i32, i32* @E1000_FEXTNVM3, align 4
  %8 = call i32 @E1000_READ_REG(%struct.e1000_hw* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = load i32, i32* @E1000_FEXTNVM3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %16, i32 %17, i32 %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = load i32, i32* @E1000_CTRL, align 4
  %22 = call i32 @E1000_READ_REG(%struct.e1000_hw* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @E1000_CTRL_LANPHYPC_OVERRIDE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @E1000_CTRL_LANPHYPC_VALUE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = load i32, i32* @E1000_CTRL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %30, i32 %31, i32 %32)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %34)
  %36 = call i32 @msec_delay(i32 1)
  %37 = load i32, i32* @E1000_CTRL_LANPHYPC_OVERRIDE, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = load i32, i32* @E1000_CTRL, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %41, i32 %42, i32 %43)
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %45)
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @e1000_pch_lpt, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = call i32 @msec_delay(i32 50)
  br label %73

55:                                               ; preds = %1
  store i32 20, i32* %4, align 4
  br label %56

56:                                               ; preds = %69, %55
  %57 = call i32 @msec_delay(i32 5)
  br label %58

58:                                               ; preds = %56
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %60 = load i32, i32* @E1000_CTRL_EXT, align 4
  %61 = call i32 @E1000_READ_REG(%struct.e1000_hw* %59, i32 %60)
  %62 = load i32, i32* @E1000_CTRL_EXT_LPCD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = icmp ne i32 %66, 0
  br label %69

69:                                               ; preds = %65, %58
  %70 = phi i1 [ false, %58 ], [ %68, %65 ]
  br i1 %70, label %56, label %71

71:                                               ; preds = %69
  %72 = call i32 @msec_delay(i32 30)
  br label %73

73:                                               ; preds = %71, %53
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
