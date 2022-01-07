; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_arp_proxy_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_arp_proxy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aqc_arp_proxy_data = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_set_proxy_config = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_FLAG_RD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_set_arp_proxy_config(%struct.i40e_hw* %0, %struct.i40e_aqc_arp_proxy_data* %1, %struct.i40e_asq_cmd_details* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_aqc_arp_proxy_data*, align 8
  %7 = alloca %struct.i40e_asq_cmd_details*, align 8
  %8 = alloca %struct.i40e_aq_desc, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_aqc_arp_proxy_data* %1, %struct.i40e_aqc_arp_proxy_data** %6, align 8
  store %struct.i40e_asq_cmd_details* %2, %struct.i40e_asq_cmd_details** %7, align 8
  %10 = load %struct.i40e_aqc_arp_proxy_data*, %struct.i40e_aqc_arp_proxy_data** %6, align 8
  %11 = icmp ne %struct.i40e_aqc_arp_proxy_data* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %13, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load i32, i32* @i40e_aqc_opc_set_proxy_config, align 4
  %16 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %8, i32 %15)
  %17 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @CPU_TO_LE16(i32 %18)
  %20 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %8, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 8
  %23 = load i64, i64* @I40E_AQ_FLAG_RD, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @CPU_TO_LE16(i32 %24)
  %26 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %8, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 8
  %29 = load %struct.i40e_aqc_arp_proxy_data*, %struct.i40e_aqc_arp_proxy_data** %6, align 8
  %30 = ptrtoint %struct.i40e_aqc_arp_proxy_data* %29 to i32
  %31 = call i32 @I40E_HI_DWORD(i32 %30)
  %32 = call i8* @CPU_TO_LE32(i32 %31)
  %33 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %8, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load %struct.i40e_aqc_arp_proxy_data*, %struct.i40e_aqc_arp_proxy_data** %6, align 8
  %37 = ptrtoint %struct.i40e_aqc_arp_proxy_data* %36 to i32
  %38 = call i32 @I40E_LO_DWORD(i32 %37)
  %39 = call i8* @CPU_TO_LE32(i32 %38)
  %40 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %8, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = call i32 @CPU_TO_LE16(i32 4)
  %44 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %8, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %46 = load %struct.i40e_aqc_arp_proxy_data*, %struct.i40e_aqc_arp_proxy_data** %6, align 8
  %47 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %7, align 8
  %48 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %45, %struct.i40e_aq_desc* %8, %struct.i40e_aqc_arp_proxy_data* %46, i32 4, %struct.i40e_asq_cmd_details* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %14, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i8* @CPU_TO_LE32(i32) #1

declare dso_local i32 @I40E_HI_DWORD(i32) #1

declare dso_local i32 @I40E_LO_DWORD(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, %struct.i40e_aqc_arp_proxy_data*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
