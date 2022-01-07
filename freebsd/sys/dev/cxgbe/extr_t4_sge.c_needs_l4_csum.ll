; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_needs_l4_csum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_needs_l4_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*)* @needs_l4_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_l4_csum(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %3 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %4 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %3)
  %5 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %6 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CSUM_TCP, align 4
  %10 = load i32, i32* @CSUM_UDP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CSUM_TSO, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %8, %17
  ret i32 %18
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
