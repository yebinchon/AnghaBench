; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_vnet_ipfw_iface_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_vnet_ipfw_iface_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32* }
%struct.namedobj_instance = type { i32 }

@destroy_iface = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnet_ipfw_iface_destroy(%struct.ip_fw_chain* %0) #0 {
  %2 = alloca %struct.ip_fw_chain*, align 8
  %3 = alloca %struct.namedobj_instance*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %2, align 8
  %4 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %5 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %4)
  %6 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %7 = call %struct.namedobj_instance* @CHAIN_TO_II(%struct.ip_fw_chain* %6)
  store %struct.namedobj_instance* %7, %struct.namedobj_instance** %3, align 8
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %9 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %11 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %10)
  %12 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %13 = icmp ne %struct.namedobj_instance* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %16 = load i32, i32* @destroy_iface, align 4
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %18 = call i32 @ipfw_objhash_foreach(%struct.namedobj_instance* %15, i32 %16, %struct.ip_fw_chain* %17)
  %19 = load %struct.namedobj_instance*, %struct.namedobj_instance** %3, align 8
  %20 = call i32 @ipfw_objhash_destroy(%struct.namedobj_instance* %19)
  %21 = call i32 (...) @iface_khandler_deregister()
  br label %22

22:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_II(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_foreach(%struct.namedobj_instance*, i32, %struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_destroy(%struct.namedobj_instance*) #1

declare dso_local i32 @iface_khandler_deregister(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
