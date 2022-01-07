; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_swap_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_swap_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, %struct.ip_fw**, i32 }
%struct.ip_fw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_fw** (%struct.ip_fw_chain*, %struct.ip_fw**, i32)* @swap_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_fw** @swap_map(%struct.ip_fw_chain* %0, %struct.ip_fw** %1, i32 %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.ip_fw**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw**, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.ip_fw** %1, %struct.ip_fw*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %9 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %8)
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %11 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %16 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %18 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %17, i32 0, i32 1
  %19 = load %struct.ip_fw**, %struct.ip_fw*** %18, align 8
  store %struct.ip_fw** %19, %struct.ip_fw*** %7, align 8
  %20 = load %struct.ip_fw**, %struct.ip_fw*** %5, align 8
  %21 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %22 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %21, i32 0, i32 1
  store %struct.ip_fw** %20, %struct.ip_fw*** %22, align 8
  %23 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %24 = call i32 @swap_skipto_cache(%struct.ip_fw_chain* %23)
  %25 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %26 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %25)
  %27 = load %struct.ip_fw**, %struct.ip_fw*** %7, align 8
  ret %struct.ip_fw** %27
}

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @swap_skipto_cache(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
