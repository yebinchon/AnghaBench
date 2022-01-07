; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }

@opcodes = common dso_local global i32 0, align 4
@scodes = common dso_local global i32 0, align 4
@V_nat64stl_eid = common dso_local global i64 0, align 8
@destroy_config_cb = common dso_local global i32 0, align 4
@IPFW_TLV_NAT64STL_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nat64stl_uninit(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @opcodes, align 4
  %7 = call i32 @IPFW_DEL_OBJ_REWRITER(i32 %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @scodes, align 4
  %10 = call i32 @IPFW_DEL_SOPT_HANDLER(i32 %8, i32 %9)
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %12 = load i64, i64* @V_nat64stl_eid, align 8
  %13 = call i32 @ipfw_del_eaction(%struct.ip_fw_chain* %11, i64 %12)
  %14 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %15 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %14)
  %16 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %17 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %16)
  %18 = load i32, i32* @destroy_config_cb, align 4
  %19 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %20 = load i32, i32* @IPFW_TLV_NAT64STL_NAME, align 4
  %21 = call i32 @ipfw_objhash_foreach_type(i32 %17, i32 %18, %struct.ip_fw_chain* %19, i32 %20)
  store i64 0, i64* @V_nat64stl_eid, align 8
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %23 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %22)
  ret void
}

declare dso_local i32 @IPFW_DEL_OBJ_REWRITER(i32, i32) #1

declare dso_local i32 @IPFW_DEL_SOPT_HANDLER(i32, i32) #1

declare dso_local i32 @ipfw_del_eaction(%struct.ip_fw_chain*, i64) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_foreach_type(i32, i32, %struct.ip_fw_chain*, i32) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
