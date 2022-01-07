; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_ipfw_iface_unref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_ipfw_iface_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ipfw_ifc = type { %struct.ipfw_iface* }
%struct.ipfw_iface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_iface_unref(%struct.ip_fw_chain* %0, %struct.ipfw_ifc* %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.ipfw_ifc*, align 8
  %5 = alloca %struct.ipfw_iface*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.ipfw_ifc* %1, %struct.ipfw_ifc** %4, align 8
  %6 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %7 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %6)
  %8 = load %struct.ipfw_ifc*, %struct.ipfw_ifc** %4, align 8
  %9 = getelementptr inbounds %struct.ipfw_ifc, %struct.ipfw_ifc* %8, i32 0, i32 0
  %10 = load %struct.ipfw_iface*, %struct.ipfw_iface** %9, align 8
  store %struct.ipfw_iface* %10, %struct.ipfw_iface** %5, align 8
  %11 = load %struct.ipfw_ifc*, %struct.ipfw_ifc** %4, align 8
  %12 = getelementptr inbounds %struct.ipfw_ifc, %struct.ipfw_ifc* %11, i32 0, i32 0
  store %struct.ipfw_iface* null, %struct.ipfw_iface** %12, align 8
  %13 = load %struct.ipfw_iface*, %struct.ipfw_iface** %5, align 8
  %14 = getelementptr inbounds %struct.ipfw_iface, %struct.ipfw_iface* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
