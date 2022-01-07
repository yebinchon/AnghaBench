; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_ipq_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_ipq_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ipq = type { i32 }
%struct.label = type { i32 }

@mac_policy_count = common dso_local global i64 0, align 8
@ipq_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_ipq_update(%struct.mbuf* %0, %struct.ipq* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ipq*, align 8
  %5 = alloca %struct.label*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.ipq* %1, %struct.ipq** %4, align 8
  %6 = load i64, i64* @mac_policy_count, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %20

9:                                                ; preds = %2
  %10 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %11 = call %struct.label* @mac_mbuf_to_label(%struct.mbuf* %10)
  store %struct.label* %11, %struct.label** %5, align 8
  %12 = load i32, i32* @ipq_update, align 4
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = load %struct.label*, %struct.label** %5, align 8
  %15 = load %struct.ipq*, %struct.ipq** %4, align 8
  %16 = load %struct.ipq*, %struct.ipq** %4, align 8
  %17 = getelementptr inbounds %struct.ipq, %struct.ipq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %12, %struct.mbuf* %13, %struct.label* %14, %struct.ipq* %15, i32 %18)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.label* @mac_mbuf_to_label(%struct.mbuf*) #1

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.mbuf*, %struct.label*, %struct.ipq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
