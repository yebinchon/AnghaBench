; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_in6_joingroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_in6_joingroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }
%struct.in6_mfilter = type { i32 }
%struct.in6_multi = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_joingroup(%struct.ifnet* %0, %struct.in6_addr* %1, %struct.in6_mfilter* %2, %struct.in6_multi** %3, i32 %4) #0 {
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_mfilter*, align 8
  %9 = alloca %struct.in6_multi**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store %struct.in6_mfilter* %2, %struct.in6_mfilter** %8, align 8
  store %struct.in6_multi** %3, %struct.in6_multi*** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = call i32 (...) @IN6_MULTI_LOCK()
  %13 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %14 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %15 = load %struct.in6_multi**, %struct.in6_multi*** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @in6_joingroup_locked(%struct.ifnet* %13, %struct.in6_addr* %14, i32* null, %struct.in6_multi** %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = call i32 (...) @IN6_MULTI_UNLOCK()
  %19 = load i32, i32* %11, align 4
  ret i32 %19
}

declare dso_local i32 @IN6_MULTI_LOCK(...) #1

declare dso_local i32 @in6_joingroup_locked(%struct.ifnet*, %struct.in6_addr*, i32*, %struct.in6_multi**, i32) #1

declare dso_local i32 @IN6_MULTI_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
