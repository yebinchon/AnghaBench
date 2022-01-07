; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_inpcb_check_deliver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_inpcb_check_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.mbuf = type { i32 }
%struct.label = type { i32 }

@mac_policy_count = common dso_local global i64 0, align 8
@inpcb_check_deliver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_inpcb_check_deliver(%struct.inpcb* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %9 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %8)
  %10 = load i64, i64* @mac_policy_count, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = call %struct.label* @mac_mbuf_to_label(%struct.mbuf* %14)
  store %struct.label* %15, %struct.label** %6, align 8
  %16 = load i32, i32* @inpcb_check_deliver, align 4
  %17 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %18 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %19 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = load %struct.label*, %struct.label** %6, align 8
  %23 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %16, %struct.inpcb* %17, i32 %20, %struct.mbuf* %21, %struct.label* %22)
  %24 = load i32, i32* @inpcb_check_deliver, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = call i32 @MAC_CHECK_PROBE2(i32 %24, i32 %25, %struct.inpcb* %26, %struct.mbuf* %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %13, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local %struct.label* @mac_mbuf_to_label(%struct.mbuf*) #1

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.inpcb*, i32, %struct.mbuf*, %struct.label*) #1

declare dso_local i32 @MAC_CHECK_PROBE2(i32, i32, %struct.inpcb*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
