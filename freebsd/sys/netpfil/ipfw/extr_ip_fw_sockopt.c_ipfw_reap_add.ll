; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_reap_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_reap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw = type { %struct.ip_fw* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_reap_add(%struct.ip_fw_chain* %0, %struct.ip_fw** %1, %struct.ip_fw* %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.ip_fw**, align 8
  %6 = alloca %struct.ip_fw*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.ip_fw** %1, %struct.ip_fw*** %5, align 8
  store %struct.ip_fw* %2, %struct.ip_fw** %6, align 8
  %7 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %8 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %7)
  %9 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %10 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %11 = call i32 @unref_rule_objects(%struct.ip_fw_chain* %9, %struct.ip_fw* %10)
  %12 = load %struct.ip_fw**, %struct.ip_fw*** %5, align 8
  %13 = load %struct.ip_fw*, %struct.ip_fw** %12, align 8
  %14 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %15 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %14, i32 0, i32 0
  store %struct.ip_fw* %13, %struct.ip_fw** %15, align 8
  %16 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %17 = load %struct.ip_fw**, %struct.ip_fw*** %5, align 8
  store %struct.ip_fw* %16, %struct.ip_fw** %17, align 8
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @unref_rule_objects(%struct.ip_fw_chain*, %struct.ip_fw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
