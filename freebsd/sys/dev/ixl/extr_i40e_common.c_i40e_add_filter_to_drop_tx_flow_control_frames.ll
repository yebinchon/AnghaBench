; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_add_filter_to_drop_tx_flow_control_frames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_add_filter_to_drop_tx_flow_control_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_AQC_ADD_CONTROL_PACKET_FLAGS_IGNORE_MAC = common dso_local global i32 0, align 4
@I40E_AQC_ADD_CONTROL_PACKET_FLAGS_DROP = common dso_local global i32 0, align 4
@I40E_AQC_ADD_CONTROL_PACKET_FLAGS_TX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Ethtype Filter Add failed: Error pruning Tx flow control frames\0A\00", align 1
@I40E_FLOW_CONTROL_ETHTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_add_filter_to_drop_tx_flow_control_frames(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @I40E_AQC_ADD_CONTROL_PACKET_FLAGS_IGNORE_MAC, align 4
  %9 = load i32, i32* @I40E_AQC_ADD_CONTROL_PACKET_FLAGS_DROP, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @I40E_AQC_ADD_CONTROL_PACKET_FLAGS_TX, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  store i32 34824, i32* %6, align 4
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @i40e_aq_add_rem_control_packet_filter(%struct.i40e_hw* %13, i32* null, i32 %14, i32 %15, i32 %16, i32 0, i32 %17, i32* null, i32* null)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @i40e_aq_add_rem_control_packet_filter(%struct.i40e_hw*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
