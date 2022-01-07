; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_ifnet_check_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_ifnet_check_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.label = type { i32 }

@mac_policy_count = common dso_local global i64 0, align 8
@ifnet_check_transmit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_ifnet_check_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %9)
  %11 = load i64, i64* @mac_policy_count, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %16 = call %struct.label* @mac_mbuf_to_label(%struct.mbuf* %15)
  store %struct.label* %16, %struct.label** %6, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @MAC_IFNET_LOCK(%struct.ifnet* %17, i32 %18)
  %20 = load i32, i32* @ifnet_check_transmit, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = load %struct.label*, %struct.label** %6, align 8
  %27 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %20, %struct.ifnet* %21, i32 %24, %struct.mbuf* %25, %struct.label* %26)
  %28 = load i32, i32* @ifnet_check_transmit, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = call i32 @MAC_CHECK_PROBE2(i32 %28, i32 %29, %struct.ifnet* %30, %struct.mbuf* %31)
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @MAC_IFNET_UNLOCK(%struct.ifnet* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %14, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local %struct.label* @mac_mbuf_to_label(%struct.mbuf*) #1

declare dso_local i32 @MAC_IFNET_LOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.ifnet*, i32, %struct.mbuf*, %struct.label*) #1

declare dso_local i32 @MAC_CHECK_PROBE2(i32, i32, %struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @MAC_IFNET_UNLOCK(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
