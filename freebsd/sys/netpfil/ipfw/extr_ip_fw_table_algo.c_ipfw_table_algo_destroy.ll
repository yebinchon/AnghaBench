; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ipfw_table_algo_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ipfw_table_algo_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ip_fw_chain = type { i32 }

@addr_radix = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@addr_hash = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@iface_idx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@number_array = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@flow_hash = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@addr_kfib = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_table_algo_destroy(%struct.ip_fw_chain* %0) #0 {
  %2 = alloca %struct.ip_fw_chain*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %2, align 8
  %3 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @addr_radix, i32 0, i32 0), align 4
  %5 = call i32 @ipfw_del_table_algo(%struct.ip_fw_chain* %3, i32 %4)
  %6 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @addr_hash, i32 0, i32 0), align 4
  %8 = call i32 @ipfw_del_table_algo(%struct.ip_fw_chain* %6, i32 %7)
  %9 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iface_idx, i32 0, i32 0), align 4
  %11 = call i32 @ipfw_del_table_algo(%struct.ip_fw_chain* %9, i32 %10)
  %12 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @number_array, i32 0, i32 0), align 4
  %14 = call i32 @ipfw_del_table_algo(%struct.ip_fw_chain* %12, i32 %13)
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @flow_hash, i32 0, i32 0), align 4
  %17 = call i32 @ipfw_del_table_algo(%struct.ip_fw_chain* %15, i32 %16)
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @addr_kfib, i32 0, i32 0), align 4
  %20 = call i32 @ipfw_del_table_algo(%struct.ip_fw_chain* %18, i32 %19)
  ret void
}

declare dso_local i32 @ipfw_del_table_algo(%struct.ip_fw_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
