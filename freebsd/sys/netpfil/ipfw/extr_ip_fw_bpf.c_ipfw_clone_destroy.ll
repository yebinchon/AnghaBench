; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_bpf.c_ipfw_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_bpf.c_ipfw_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }

@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@V_log_if = common dso_local global i32* null, align 8
@V_pflog_if = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @ipfw_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipfw_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %3 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %4 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ETHER_HDR_LEN, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** @V_log_if, align 8
  br label %10

9:                                                ; preds = %1
  store i32* null, i32** @V_pflog_if, align 8
  br label %10

10:                                               ; preds = %9, %8
  %11 = call i32 (...) @NET_EPOCH_WAIT()
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = call i32 @bpfdetach(%struct.ifnet* %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = call i32 @if_detach(%struct.ifnet* %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %17 = call i32 @if_free(%struct.ifnet* %16)
  ret void
}

declare dso_local i32 @NET_EPOCH_WAIT(...) #1

declare dso_local i32 @bpfdetach(%struct.ifnet*) #1

declare dso_local i32 @if_detach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
