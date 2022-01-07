; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_udp_tunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_udp_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_udp_tunnel = type { i32, i32 }
%struct.i40e_aqc_del_udp_tunnel_completion = type { i32 }

@i40e_aqc_opc_add_udp_tunnel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_add_udp_tunnel(%struct.i40e_hw* %0, i32 %1, i32 %2, i32* %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i40e_asq_cmd_details*, align 8
  %11 = alloca %struct.i40e_aq_desc, align 4
  %12 = alloca %struct.i40e_aqc_add_udp_tunnel*, align 8
  %13 = alloca %struct.i40e_aqc_del_udp_tunnel_completion*, align 8
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %10, align 8
  %15 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.i40e_aqc_add_udp_tunnel*
  store %struct.i40e_aqc_add_udp_tunnel* %17, %struct.i40e_aqc_add_udp_tunnel** %12, align 8
  %18 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.i40e_aqc_del_udp_tunnel_completion*
  store %struct.i40e_aqc_del_udp_tunnel_completion* %20, %struct.i40e_aqc_del_udp_tunnel_completion** %13, align 8
  %21 = load i32, i32* @i40e_aqc_opc_add_udp_tunnel, align 4
  %22 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %11, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @CPU_TO_LE16(i32 %23)
  %25 = load %struct.i40e_aqc_add_udp_tunnel*, %struct.i40e_aqc_add_udp_tunnel** %12, align 8
  %26 = getelementptr inbounds %struct.i40e_aqc_add_udp_tunnel, %struct.i40e_aqc_add_udp_tunnel* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.i40e_aqc_add_udp_tunnel*, %struct.i40e_aqc_add_udp_tunnel** %12, align 8
  %29 = getelementptr inbounds %struct.i40e_aqc_add_udp_tunnel, %struct.i40e_aqc_add_udp_tunnel* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %31 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %10, align 8
  %32 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %30, %struct.i40e_aq_desc* %11, i32* null, i32 0, %struct.i40e_asq_cmd_details* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %5
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.i40e_aqc_del_udp_tunnel_completion*, %struct.i40e_aqc_del_udp_tunnel_completion** %13, align 8
  %40 = getelementptr inbounds %struct.i40e_aqc_del_udp_tunnel_completion, %struct.i40e_aqc_del_udp_tunnel_completion* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %35, %5
  %44 = load i32, i32* %14, align 4
  ret i32 %44
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
