; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_im6f_graft.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_im6f_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_msource = type { i32*, i32 }
%struct.in6_mfilter = type { i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.ip6_msource = type { i32 }

@M_IN6MFILTER = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@ip6_msource_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_msource* (%struct.in6_mfilter*, i32, %struct.sockaddr_in6*)* @im6f_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_msource* @im6f_graft(%struct.in6_mfilter* %0, i32 %1, %struct.sockaddr_in6* %2) #0 {
  %4 = alloca %struct.in6_msource*, align 8
  %5 = alloca %struct.in6_mfilter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.ip6_msource*, align 8
  %9 = alloca %struct.in6_msource*, align 8
  store %struct.in6_mfilter* %0, %struct.in6_mfilter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %7, align 8
  %10 = load i32, i32* @M_IN6MFILTER, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.ip6_msource* @malloc(i32 16, i32 %10, i32 %13)
  store %struct.ip6_msource* %14, %struct.ip6_msource** %8, align 8
  %15 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  %16 = icmp eq %struct.ip6_msource* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.in6_msource* null, %struct.in6_msource** %4, align 8
  br label %46

18:                                               ; preds = %3
  %19 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  %20 = bitcast %struct.ip6_msource* %19 to %struct.in6_msource*
  store %struct.in6_msource* %20, %struct.in6_msource** %9, align 8
  %21 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.in6_msource*, %struct.in6_msource** %9, align 8
  %25 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @MCAST_UNDEFINED, align 4
  %27 = load %struct.in6_msource*, %struct.in6_msource** %9, align 8
  %28 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.in6_msource*, %struct.in6_msource** %9, align 8
  %33 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @ip6_msource_tree, align 4
  %37 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %38 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %37, i32 0, i32 1
  %39 = load %struct.ip6_msource*, %struct.ip6_msource** %8, align 8
  %40 = call i32 @RB_INSERT(i32 %36, i32* %38, %struct.ip6_msource* %39)
  %41 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %42 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.in6_msource*, %struct.in6_msource** %9, align 8
  store %struct.in6_msource* %45, %struct.in6_msource** %4, align 8
  br label %46

46:                                               ; preds = %18, %17
  %47 = load %struct.in6_msource*, %struct.in6_msource** %4, align 8
  ret %struct.in6_msource* %47
}

declare dso_local %struct.ip6_msource* @malloc(i32, i32, i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip6_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
