; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_selectroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_selectroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.ip6_pktopts = type { i32 }
%struct.ip6_moptions = type { i32 }
%struct.route_in6 = type { i32 }
%struct.ifnet = type { i32 }
%struct.rtentry = type { i32 }

@RT_DEFAULT_FIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_selectroute(%struct.sockaddr_in6* %0, %struct.ip6_pktopts* %1, %struct.ip6_moptions* %2, %struct.route_in6* %3, %struct.ifnet** %4, %struct.rtentry** %5) #0 {
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.ip6_pktopts*, align 8
  %9 = alloca %struct.ip6_moptions*, align 8
  %10 = alloca %struct.route_in6*, align 8
  %11 = alloca %struct.ifnet**, align 8
  %12 = alloca %struct.rtentry**, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %7, align 8
  store %struct.ip6_pktopts* %1, %struct.ip6_pktopts** %8, align 8
  store %struct.ip6_moptions* %2, %struct.ip6_moptions** %9, align 8
  store %struct.route_in6* %3, %struct.route_in6** %10, align 8
  store %struct.ifnet** %4, %struct.ifnet*** %11, align 8
  store %struct.rtentry** %5, %struct.rtentry*** %12, align 8
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %14 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %8, align 8
  %15 = load %struct.ip6_moptions*, %struct.ip6_moptions** %9, align 8
  %16 = load %struct.route_in6*, %struct.route_in6** %10, align 8
  %17 = load %struct.ifnet**, %struct.ifnet*** %11, align 8
  %18 = load %struct.rtentry**, %struct.rtentry*** %12, align 8
  %19 = load i32, i32* @RT_DEFAULT_FIB, align 4
  %20 = call i32 @selectroute(%struct.sockaddr_in6* %13, %struct.ip6_pktopts* %14, %struct.ip6_moptions* %15, %struct.route_in6* %16, %struct.ifnet** %17, %struct.rtentry** %18, i32 0, i32 %19)
  ret i32 %20
}

declare dso_local i32 @selectroute(%struct.sockaddr_in6*, %struct.ip6_pktopts*, %struct.ip6_moptions*, %struct.route_in6*, %struct.ifnet**, %struct.rtentry**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
