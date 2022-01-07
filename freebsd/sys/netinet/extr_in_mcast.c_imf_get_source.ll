; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_imf_get_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_imf_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_mfilter = type { i64, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.in_msource = type { i32*, i32 }
%struct.ip_msource = type { i32 }

@ip_msource_tree = common dso_local global i32 0, align 4
@in_mcast_maxsocksrc = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@M_INMFILTER = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_mfilter*, %struct.sockaddr_in*, %struct.in_msource**)* @imf_get_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imf_get_source(%struct.in_mfilter* %0, %struct.sockaddr_in* %1, %struct.in_msource** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_mfilter*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.in_msource**, align 8
  %8 = alloca %struct.ip_msource, align 4
  %9 = alloca %struct.ip_msource*, align 8
  %10 = alloca %struct.ip_msource*, align 8
  %11 = alloca %struct.in_msource*, align 8
  %12 = alloca i32, align 4
  store %struct.in_mfilter* %0, %struct.in_mfilter** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store %struct.in_msource** %2, %struct.in_msource*** %7, align 8
  store i32 0, i32* %12, align 4
  store %struct.ip_msource* null, %struct.ip_msource** %9, align 8
  store %struct.in_msource* null, %struct.in_msource** %11, align 8
  %13 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohl(i32 %16)
  %18 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @ip_msource_tree, align 4
  %20 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %21 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %20, i32 0, i32 1
  %22 = call %struct.ip_msource* @RB_FIND(i32 %19, i32* %21, %struct.ip_msource* %8)
  store %struct.ip_msource* %22, %struct.ip_msource** %9, align 8
  %23 = load %struct.ip_msource*, %struct.ip_msource** %9, align 8
  %24 = bitcast %struct.ip_msource* %23 to %struct.in_msource*
  store %struct.in_msource* %24, %struct.in_msource** %11, align 8
  %25 = load %struct.in_msource*, %struct.in_msource** %11, align 8
  %26 = icmp eq %struct.in_msource* %25, null
  br i1 %26, label %27, label %66

27:                                               ; preds = %3
  %28 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %29 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @in_mcast_maxsocksrc, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOSPC, align 4
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %27
  %36 = load i32, i32* @M_INMFILTER, align 4
  %37 = load i32, i32* @M_NOWAIT, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call %struct.ip_msource* @malloc(i32 16, i32 %36, i32 %39)
  store %struct.ip_msource* %40, %struct.ip_msource** %10, align 8
  %41 = load %struct.ip_msource*, %struct.ip_msource** %10, align 8
  %42 = icmp eq %struct.ip_msource* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %4, align 4
  br label %70

45:                                               ; preds = %35
  %46 = load %struct.ip_msource*, %struct.ip_msource** %10, align 8
  %47 = bitcast %struct.ip_msource* %46 to %struct.in_msource*
  store %struct.in_msource* %47, %struct.in_msource** %11, align 8
  %48 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.in_msource*, %struct.in_msource** %11, align 8
  %51 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @MCAST_UNDEFINED, align 4
  %53 = load %struct.in_msource*, %struct.in_msource** %11, align 8
  %54 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @ip_msource_tree, align 4
  %58 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %59 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %58, i32 0, i32 1
  %60 = load %struct.ip_msource*, %struct.ip_msource** %10, align 8
  %61 = call i32 @RB_INSERT(i32 %57, i32* %59, %struct.ip_msource* %60)
  %62 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %63 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %45, %3
  %67 = load %struct.in_msource*, %struct.in_msource** %11, align 8
  %68 = load %struct.in_msource**, %struct.in_msource*** %7, align 8
  store %struct.in_msource* %67, %struct.in_msource** %68, align 8
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %43, %33
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.ip_msource* @RB_FIND(i32, i32*, %struct.ip_msource*) #1

declare dso_local %struct.ip_msource* @malloc(i32, i32, i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
