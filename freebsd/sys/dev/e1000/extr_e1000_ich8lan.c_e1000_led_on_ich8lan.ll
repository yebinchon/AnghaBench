; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_led_on_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_led_on_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*, i32, i32)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [21 x i8] c"e1000_led_on_ich8lan\00", align 1
@e1000_phy_ife = common dso_local global i64 0, align 8
@IFE_PHY_SPECIAL_CONTROL_LED = common dso_local global i32 0, align 4
@IFE_PSCL_PROBE_MODE = common dso_local global i32 0, align 4
@IFE_PSCL_PROBE_LEDS_ON = common dso_local global i32 0, align 4
@E1000_LEDCTL = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_led_on_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_led_on_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @e1000_phy_ife, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %15, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = bitcast %struct.e1000_hw* %17 to %struct.e1000_hw.0*
  %19 = load i32, i32* @IFE_PHY_SPECIAL_CONTROL_LED, align 4
  %20 = load i32, i32* @IFE_PSCL_PROBE_MODE, align 4
  %21 = load i32, i32* @IFE_PSCL_PROBE_LEDS_ON, align 4
  %22 = or i32 %20, %21
  %23 = call i32 %16(%struct.e1000_hw.0* %18, i32 %19, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = load i32, i32* @E1000_LEDCTL, align 4
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %25, i32 %26, i32 %30)
  %32 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
