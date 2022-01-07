; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_power_up_serdes_link_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_power_up_serdes_link_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"e1000_power_up_serdes_link_82575\00", align 1
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@E1000_PCS_CFG0 = common dso_local global i32 0, align 4
@E1000_PCS_CFG_PCS_EN = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP3_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_power_up_serdes_link_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_power_up_serdes_link_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = call i32 @e1000_sgmii_active_82575(%struct.e1000_hw* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %41

16:                                               ; preds = %11, %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = load i32, i32* @E1000_PCS_CFG0, align 4
  %19 = call i32 @E1000_READ_REG(%struct.e1000_hw* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @E1000_PCS_CFG_PCS_EN, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = load i32, i32* @E1000_PCS_CFG0, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %23, i32 %24, i32 %25)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = load i32, i32* @E1000_CTRL_EXT, align 4
  %29 = call i32 @E1000_READ_REG(%struct.e1000_hw* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @E1000_CTRL_EXT_SDP3_DATA, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = load i32, i32* @E1000_CTRL_EXT, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %34, i32 %35, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %38)
  %40 = call i32 @msec_delay(i32 1)
  br label %41

41:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_sgmii_active_82575(%struct.e1000_hw*) #1

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
