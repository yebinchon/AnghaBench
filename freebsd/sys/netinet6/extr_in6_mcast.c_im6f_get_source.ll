; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_im6f_get_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_mcast.c_im6f_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_mfilter = type { i64, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.in6_msource = type { i32*, i32 }
%struct.ip6_msource = type { i32 }

@ip6_msource_tree = common dso_local global i32 0, align 4
@in6_mcast_maxsocksrc = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@M_IN6MFILTER = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_mfilter*, %struct.sockaddr_in6*, %struct.in6_msource**)* @im6f_get_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @im6f_get_source(%struct.in6_mfilter* %0, %struct.sockaddr_in6* %1, %struct.in6_msource** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_mfilter*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.in6_msource**, align 8
  %8 = alloca %struct.ip6_msource, align 4
  %9 = alloca %struct.ip6_msource*, align 8
  %10 = alloca %struct.ip6_msource*, align 8
  %11 = alloca %struct.in6_msource*, align 8
  %12 = alloca i32, align 4
  store %struct.in6_mfilter* %0, %struct.in6_mfilter** %5, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %6, align 8
  store %struct.in6_msource** %2, %struct.in6_msource*** %7, align 8
  store i32 0, i32* %12, align 4
  store %struct.ip6_msource* null, %struct.ip6_msource** %9, align 8
  store %struct.in6_msource* null, %struct.in6_msource** %11, align 8
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @ip6_msource_tree, align 4
  %18 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %19 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %18, i32 0, i32 1
  %20 = call %struct.ip6_msource* @RB_FIND(i32 %17, i32* %19, %struct.ip6_msource* %8)
  store %struct.ip6_msource* %20, %struct.ip6_msource** %9, align 8
  %21 = load %struct.ip6_msource*, %struct.ip6_msource** %9, align 8
  %22 = bitcast %struct.ip6_msource* %21 to %struct.in6_msource*
  store %struct.in6_msource* %22, %struct.in6_msource** %11, align 8
  %23 = load %struct.in6_msource*, %struct.in6_msource** %11, align 8
  %24 = icmp eq %struct.in6_msource* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %3
  %26 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %27 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @in6_mcast_maxsocksrc, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOSPC, align 4
  store i32 %32, i32* %4, align 4
  br label %68

33:                                               ; preds = %25
  %34 = load i32, i32* @M_IN6MFILTER, align 4
  %35 = load i32, i32* @M_NOWAIT, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.ip6_msource* @malloc(i32 16, i32 %34, i32 %37)
  store %struct.ip6_msource* %38, %struct.ip6_msource** %10, align 8
  %39 = load %struct.ip6_msource*, %struct.ip6_msource** %10, align 8
  %40 = icmp eq %struct.ip6_msource* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %4, align 4
  br label %68

43:                                               ; preds = %33
  %44 = load %struct.ip6_msource*, %struct.ip6_msource** %10, align 8
  %45 = bitcast %struct.ip6_msource* %44 to %struct.in6_msource*
  store %struct.in6_msource* %45, %struct.in6_msource** %11, align 8
  %46 = getelementptr inbounds %struct.ip6_msource, %struct.ip6_msource* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.in6_msource*, %struct.in6_msource** %11, align 8
  %49 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @MCAST_UNDEFINED, align 4
  %51 = load %struct.in6_msource*, %struct.in6_msource** %11, align 8
  %52 = getelementptr inbounds %struct.in6_msource, %struct.in6_msource* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @ip6_msource_tree, align 4
  %56 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %57 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %56, i32 0, i32 1
  %58 = load %struct.ip6_msource*, %struct.ip6_msource** %10, align 8
  %59 = call i32 @RB_INSERT(i32 %55, i32* %57, %struct.ip6_msource* %58)
  %60 = load %struct.in6_mfilter*, %struct.in6_mfilter** %5, align 8
  %61 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %43, %3
  %65 = load %struct.in6_msource*, %struct.in6_msource** %11, align 8
  %66 = load %struct.in6_msource**, %struct.in6_msource*** %7, align 8
  store %struct.in6_msource* %65, %struct.in6_msource** %66, align 8
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %41, %31
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.ip6_msource* @RB_FIND(i32, i32*, %struct.ip6_msource*) #1

declare dso_local %struct.ip6_msource* @malloc(i32, i32, i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip6_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
