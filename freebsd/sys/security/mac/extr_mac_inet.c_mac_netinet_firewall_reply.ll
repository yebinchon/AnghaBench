; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_netinet_firewall_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_netinet_firewall_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.label = type { i32 }

@mac_policy_count = common dso_local global i64 0, align 8
@netinet_firewall_reply = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_netinet_firewall_reply(%struct.mbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.label*, align 8
  %6 = alloca %struct.label*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %7)
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %9)
  %11 = load i64, i64* @mac_policy_count, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %16 = call %struct.label* @mac_mbuf_to_label(%struct.mbuf* %15)
  store %struct.label* %16, %struct.label** %5, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %18 = call %struct.label* @mac_mbuf_to_label(%struct.mbuf* %17)
  store %struct.label* %18, %struct.label** %6, align 8
  %19 = load i32, i32* @netinet_firewall_reply, align 4
  %20 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %21 = load %struct.label*, %struct.label** %5, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = load %struct.label*, %struct.label** %6, align 8
  %24 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %19, %struct.mbuf* %20, %struct.label* %21, %struct.mbuf* %22, %struct.label* %23)
  br label %25

25:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local %struct.label* @mac_mbuf_to_label(%struct.mbuf*) #1

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.mbuf*, %struct.label*, %struct.mbuf*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
