; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_rx_ctl_write_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_rx_ctl_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_rx_ctl_reg_read_write = type { i8*, i8* }

@i40e_aqc_opc_rx_ctl_reg_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_rx_ctl_write_register(%struct.i40e_hw* %0, i32 %1, i32 %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_asq_cmd_details*, align 8
  %9 = alloca %struct.i40e_aq_desc, align 4
  %10 = alloca %struct.i40e_aqc_rx_ctl_reg_read_write*, align 8
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %8, align 8
  %12 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %9, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.i40e_aqc_rx_ctl_reg_read_write*
  store %struct.i40e_aqc_rx_ctl_reg_read_write* %14, %struct.i40e_aqc_rx_ctl_reg_read_write** %10, align 8
  %15 = load i32, i32* @i40e_aqc_opc_rx_ctl_reg_write, align 4
  %16 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %9, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @CPU_TO_LE32(i32 %17)
  %19 = load %struct.i40e_aqc_rx_ctl_reg_read_write*, %struct.i40e_aqc_rx_ctl_reg_read_write** %10, align 8
  %20 = getelementptr inbounds %struct.i40e_aqc_rx_ctl_reg_read_write, %struct.i40e_aqc_rx_ctl_reg_read_write* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @CPU_TO_LE32(i32 %21)
  %23 = load %struct.i40e_aqc_rx_ctl_reg_read_write*, %struct.i40e_aqc_rx_ctl_reg_read_write** %10, align 8
  %24 = getelementptr inbounds %struct.i40e_aqc_rx_ctl_reg_read_write, %struct.i40e_aqc_rx_ctl_reg_read_write* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %26 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %8, align 8
  %27 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %25, %struct.i40e_aq_desc* %9, i32* null, i32 0, %struct.i40e_asq_cmd_details* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  ret i32 %28
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
