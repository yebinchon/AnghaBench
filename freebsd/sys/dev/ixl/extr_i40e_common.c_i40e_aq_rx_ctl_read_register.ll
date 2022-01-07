; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_rx_ctl_read_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_rx_ctl_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_rx_ctl_reg_read_write = type { i32, i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_rx_ctl_reg_read = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_rx_ctl_read_register(%struct.i40e_hw* %0, i32 %1, i32* %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i40e_asq_cmd_details*, align 8
  %10 = alloca %struct.i40e_aq_desc, align 4
  %11 = alloca %struct.i40e_aqc_rx_ctl_reg_read_write*, align 8
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %9, align 8
  %13 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %10, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.i40e_aqc_rx_ctl_reg_read_write*
  store %struct.i40e_aqc_rx_ctl_reg_read_write* %15, %struct.i40e_aqc_rx_ctl_reg_read_write** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %19, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load i32, i32* @i40e_aqc_opc_rx_ctl_reg_read, align 4
  %22 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %10, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @CPU_TO_LE32(i32 %23)
  %25 = load %struct.i40e_aqc_rx_ctl_reg_read_write*, %struct.i40e_aqc_rx_ctl_reg_read_write** %11, align 8
  %26 = getelementptr inbounds %struct.i40e_aqc_rx_ctl_reg_read_write, %struct.i40e_aqc_rx_ctl_reg_read_write* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %28 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %9, align 8
  %29 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %27, %struct.i40e_aq_desc* %10, i32* null, i32 0, %struct.i40e_asq_cmd_details* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @I40E_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.i40e_aqc_rx_ctl_reg_read_write*, %struct.i40e_aqc_rx_ctl_reg_read_write** %11, align 8
  %35 = getelementptr inbounds %struct.i40e_aqc_rx_ctl_reg_read_write, %struct.i40e_aqc_rx_ctl_reg_read_write* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LE32_TO_CPU(i32 %36)
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %20
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %18
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
