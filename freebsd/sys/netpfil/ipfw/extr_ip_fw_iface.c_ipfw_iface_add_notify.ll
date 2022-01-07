; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_ipfw_iface_add_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_ipfw_iface_add_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ipfw_ifc = type { i32, i32 (%struct.ip_fw_chain.0*, i32, i32)*, %struct.ipfw_iface* }
%struct.ip_fw_chain.0 = type opaque
%struct.ipfw_iface = type { i64, i32, i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_iface_add_notify(%struct.ip_fw_chain* %0, %struct.ipfw_ifc* %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.ipfw_ifc*, align 8
  %5 = alloca %struct.ipfw_iface*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.ipfw_ifc* %1, %struct.ipfw_ifc** %4, align 8
  %6 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %7 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %6)
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %9 = call i32 @IPFW_WLOCK_ASSERT(%struct.ip_fw_chain* %8)
  %10 = load %struct.ipfw_ifc*, %struct.ipfw_ifc** %4, align 8
  %11 = getelementptr inbounds %struct.ipfw_ifc, %struct.ipfw_ifc* %10, i32 0, i32 2
  %12 = load %struct.ipfw_iface*, %struct.ipfw_iface** %11, align 8
  store %struct.ipfw_iface* %12, %struct.ipfw_iface** %5, align 8
  %13 = load %struct.ipfw_iface*, %struct.ipfw_iface** %5, align 8
  %14 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %13, i32 0, i32 2
  %15 = load %struct.ipfw_ifc*, %struct.ipfw_ifc** %4, align 8
  %16 = load i32, i32* @next, align 4
  %17 = call i32 @TAILQ_INSERT_TAIL(i32* %14, %struct.ipfw_ifc* %15, i32 %16)
  %18 = load %struct.ipfw_iface*, %struct.ipfw_iface** %5, align 8
  %19 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.ipfw_ifc*, %struct.ipfw_ifc** %4, align 8
  %24 = getelementptr inbounds %struct.ipfw_ifc, %struct.ipfw_ifc* %23, i32 0, i32 1
  %25 = load i32 (%struct.ip_fw_chain.0*, i32, i32)*, i32 (%struct.ip_fw_chain.0*, i32, i32)** %24, align 8
  %26 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %27 = bitcast %struct.ip_fw_chain* %26 to %struct.ip_fw_chain.0*
  %28 = load %struct.ipfw_ifc*, %struct.ipfw_ifc** %4, align 8
  %29 = getelementptr inbounds %struct.ipfw_ifc, %struct.ipfw_ifc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ipfw_iface*, %struct.ipfw_iface** %5, align 8
  %32 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %25(%struct.ip_fw_chain.0* %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ipfw_ifc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
