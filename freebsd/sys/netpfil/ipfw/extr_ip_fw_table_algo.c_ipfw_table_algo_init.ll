; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ipfw_table_algo_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ipfw_table_algo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ip_fw_chain = type { i32 }

@addr_radix = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@addr_hash = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@iface_idx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@number_array = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@flow_hash = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@addr_kfib = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_table_algo_init(%struct.ip_fw_chain* %0) #0 {
  %2 = alloca %struct.ip_fw_chain*, align 8
  %3 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %2, align 8
  store i64 4, i64* %3, align 8
  %4 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @ipfw_add_table_algo(%struct.ip_fw_chain* %4, %struct.TYPE_8__* @addr_radix, i64 %5, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @addr_radix, i32 0, i32 0))
  %7 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @ipfw_add_table_algo(%struct.ip_fw_chain* %7, %struct.TYPE_8__* @addr_hash, i64 %8, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @addr_hash, i32 0, i32 0))
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @ipfw_add_table_algo(%struct.ip_fw_chain* %10, %struct.TYPE_8__* @iface_idx, i64 %11, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iface_idx, i32 0, i32 0))
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @ipfw_add_table_algo(%struct.ip_fw_chain* %13, %struct.TYPE_8__* @number_array, i64 %14, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @number_array, i32 0, i32 0))
  %16 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ipfw_add_table_algo(%struct.ip_fw_chain* %16, %struct.TYPE_8__* @flow_hash, i64 %17, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @flow_hash, i32 0, i32 0))
  %19 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @ipfw_add_table_algo(%struct.ip_fw_chain* %19, %struct.TYPE_8__* @addr_kfib, i64 %20, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @addr_kfib, i32 0, i32 0))
  ret void
}

declare dso_local i32 @ipfw_add_table_algo(%struct.ip_fw_chain*, %struct.TYPE_8__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
