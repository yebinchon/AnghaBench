; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_bpfdesc_check_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_bpfdesc_check_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i32 }
%struct.ifnet = type { i32 }

@mac_policy_count = common dso_local global i64 0, align 8
@bpfdesc_check_receive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_bpfdesc_check_receive(%struct.bpf_d* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_d*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_d* %0, %struct.bpf_d** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %8 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %9 = call i32 @BPFD_LOCK_ASSERT(%struct.bpf_d* %8)
  %10 = load i64, i64* @mac_policy_count, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @MAC_IFNET_LOCK(%struct.ifnet* %14, i32 %15)
  %17 = load i32, i32* @bpfdesc_check_receive, align 4
  %18 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %19 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %20 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %17, %struct.bpf_d* %18, i32 %21, %struct.ifnet* %22, i32 %25)
  %27 = load i32, i32* @bpfdesc_check_receive, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %31 = call i32 @MAC_CHECK_PROBE2(i32 %27, i32 %28, %struct.bpf_d* %29, %struct.ifnet* %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @MAC_IFNET_UNLOCK(%struct.ifnet* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %13, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @BPFD_LOCK_ASSERT(%struct.bpf_d*) #1

declare dso_local i32 @MAC_IFNET_LOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.bpf_d*, i32, %struct.ifnet*, i32) #1

declare dso_local i32 @MAC_CHECK_PROBE2(i32, i32, %struct.bpf_d*, %struct.ifnet*) #1

declare dso_local i32 @MAC_IFNET_UNLOCK(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
