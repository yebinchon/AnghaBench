; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }

@nptv6_ifaddr_event = common dso_local global i32* null, align 8
@ifaddr_event_ext = common dso_local global i32 0, align 4
@opcodes = common dso_local global i32 0, align 4
@scodes = common dso_local global i32 0, align 4
@V_nptv6_eid = common dso_local global i64 0, align 8
@destroy_config_cb = common dso_local global i32 0, align 4
@IPFW_TLV_NPTV6_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nptv6_uninit(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32*, i32** @nptv6_ifaddr_event, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @ifaddr_event_ext, align 4
  %12 = load i32*, i32** @nptv6_ifaddr_event, align 8
  %13 = call i32 @EVENTHANDLER_DEREGISTER(i32 %11, i32* %12)
  br label %14

14:                                               ; preds = %10, %7, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @opcodes, align 4
  %17 = call i32 @IPFW_DEL_OBJ_REWRITER(i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @scodes, align 4
  %20 = call i32 @IPFW_DEL_SOPT_HANDLER(i32 %18, i32 %19)
  %21 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %22 = load i64, i64* @V_nptv6_eid, align 8
  %23 = call i32 @ipfw_del_eaction(%struct.ip_fw_chain* %21, i64 %22)
  %24 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %25 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %24)
  %26 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %27 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %26)
  %28 = load i32, i32* @destroy_config_cb, align 4
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %30 = load i32, i32* @IPFW_TLV_NPTV6_NAME, align 4
  %31 = call i32 @ipfw_objhash_foreach_type(i32 %27, i32 %28, %struct.ip_fw_chain* %29, i32 %30)
  store i64 0, i64* @V_nptv6_eid, align 8
  %32 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %33 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %32)
  ret void
}

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

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
