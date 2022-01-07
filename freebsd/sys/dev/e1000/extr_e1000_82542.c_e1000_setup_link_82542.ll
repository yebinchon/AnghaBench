; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_setup_link_82542.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_setup_link_82542.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_mac_info }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.e1000_mac_info = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [23 x i8] c"e1000_setup_link_82542\00", align 1
@e1000_fc_tx_pause = common dso_local global i32 0, align 4
@e1000_fc_rx_pause = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Initializing Flow Control address, type and timer regs\0A\00", align 1
@E1000_FCAL = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_LOW = common dso_local global i32 0, align 4
@E1000_FCAH = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_HIGH = common dso_local global i32 0, align 4
@E1000_FCT = common dso_local global i32 0, align 4
@FLOW_CONTROL_TYPE = common dso_local global i32 0, align 4
@E1000_FCTTV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_link_82542 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_link_82542(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  store %struct.e1000_mac_info* %6, %struct.e1000_mac_info** %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = call i64 @e1000_set_default_fc_generic(%struct.e1000_hw* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %79

13:                                               ; preds = %1
  %14 = load i32, i32* @e1000_fc_tx_pause, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %15
  store i32 %20, i32* %18, align 8
  %21 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load i32, i32* @e1000_fc_rx_pause, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %27
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %25, %13
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %48, align 8
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = bitcast %struct.e1000_hw* %50 to %struct.e1000_hw.0*
  %52 = call i64 %49(%struct.e1000_hw.0* %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %33
  br label %79

56:                                               ; preds = %33
  %57 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = load i32, i32* @E1000_FCAL, align 4
  %60 = load i32, i32* @FLOW_CONTROL_ADDRESS_LOW, align 4
  %61 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %58, i32 %59, i32 %60)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = load i32, i32* @E1000_FCAH, align 4
  %64 = load i32, i32* @FLOW_CONTROL_ADDRESS_HIGH, align 4
  %65 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %62, i32 %63, i32 %64)
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = load i32, i32* @E1000_FCT, align 4
  %68 = load i32, i32* @FLOW_CONTROL_TYPE, align 4
  %69 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %66, i32 %67, i32 %68)
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %71 = load i32, i32* @E1000_FCTTV, align 4
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %70, i32 %71, i32 %75)
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %78 = call i64 @e1000_set_fc_watermarks_generic(%struct.e1000_hw* %77)
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %56, %55, %12
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_set_default_fc_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_set_fc_watermarks_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
