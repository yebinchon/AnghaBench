; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_garp_timer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_garp_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.in_ifaddr = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@hz = common dso_local global i32 0, align 4
@garp_rexmit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddr*)* @garp_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @garp_timer_start(%struct.ifaddr* %0) #0 {
  %2 = alloca %struct.ifaddr*, align 8
  %3 = alloca %struct.in_ifaddr*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %2, align 8
  %4 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %5 = bitcast %struct.ifaddr* %4 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %5, %struct.in_ifaddr** %3, align 8
  %6 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %7 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IF_ADDR_WLOCK(i32 %9)
  %11 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %12 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %14 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %13, i32 0, i32 2
  %15 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %16 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* @hz, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* @garp_rexmit, align 4
  %22 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %23 = call i64 @callout_reset(i32* %14, i32 %20, i32 %21, %struct.in_ifaddr* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %27 = call i32 @ifa_ref(%struct.ifaddr* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.in_ifaddr*, %struct.in_ifaddr** %3, align 8
  %30 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IF_ADDR_WUNLOCK(i32 %32)
  ret void
}

declare dso_local i32 @IF_ADDR_WLOCK(i32) #1

declare dso_local i64 @callout_reset(i32*, i32, i32, %struct.in_ifaddr*) #1

declare dso_local i32 @ifa_ref(%struct.ifaddr*) #1

declare dso_local i32 @IF_ADDR_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
