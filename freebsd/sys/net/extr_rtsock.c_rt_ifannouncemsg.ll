; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rt_ifannouncemsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rt_ifannouncemsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.rt_addrinfo = type { i32 }

@RTM_IFANNOUNCE = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_ifannouncemsg(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.rt_addrinfo, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = load i32, i32* @RTM_IFANNOUNCE, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.mbuf* @rt_makeifannouncemsg(%struct.ifnet* %7, i32 %8, i32 %9, %struct.rt_addrinfo* %6)
  store %struct.mbuf* %10, %struct.mbuf** %5, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = load i32, i32* @AF_UNSPEC, align 4
  %16 = call i32 @rt_dispatch(%struct.mbuf* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %2
  ret void
}

declare dso_local %struct.mbuf* @rt_makeifannouncemsg(%struct.ifnet*, i32, i32, %struct.rt_addrinfo*) #1

declare dso_local i32 @rt_dispatch(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
