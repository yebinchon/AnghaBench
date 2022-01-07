; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_defrouter_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_defrouter_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ifnet = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nd_defrouter* @defrouter_lookup(%struct.in6_addr* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.nd_defrouter*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %6 = call i32 (...) @ND6_RLOCK()
  %7 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = call %struct.nd_defrouter* @defrouter_lookup_locked(%struct.in6_addr* %7, %struct.ifnet* %8)
  store %struct.nd_defrouter* %9, %struct.nd_defrouter** %5, align 8
  %10 = call i32 (...) @ND6_RUNLOCK()
  %11 = load %struct.nd_defrouter*, %struct.nd_defrouter** %5, align 8
  ret %struct.nd_defrouter* %11
}

declare dso_local i32 @ND6_RLOCK(...) #1

declare dso_local %struct.nd_defrouter* @defrouter_lookup_locked(%struct.in6_addr*, %struct.ifnet*) #1

declare dso_local i32 @ND6_RUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
