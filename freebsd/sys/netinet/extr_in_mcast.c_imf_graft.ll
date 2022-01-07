; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_imf_graft.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_imf_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_msource = type { i32*, i32 }
%struct.in_mfilter = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip_msource = type { i32 }

@M_INMFILTER = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@ip_msource_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in_msource* (%struct.in_mfilter*, i32, %struct.sockaddr_in*)* @imf_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in_msource* @imf_graft(%struct.in_mfilter* %0, i32 %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca %struct.in_msource*, align 8
  %5 = alloca %struct.in_mfilter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.ip_msource*, align 8
  %9 = alloca %struct.in_msource*, align 8
  store %struct.in_mfilter* %0, %struct.in_mfilter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  %10 = load i32, i32* @M_INMFILTER, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.ip_msource* @malloc(i32 16, i32 %10, i32 %13)
  store %struct.ip_msource* %14, %struct.ip_msource** %8, align 8
  %15 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  %16 = icmp eq %struct.ip_msource* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.in_msource* null, %struct.in_msource** %4, align 8
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  %20 = bitcast %struct.ip_msource* %19 to %struct.in_msource*
  store %struct.in_msource* %20, %struct.in_msource** %9, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = load %struct.in_msource*, %struct.in_msource** %9, align 8
  %27 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @MCAST_UNDEFINED, align 4
  %29 = load %struct.in_msource*, %struct.in_msource** %9, align 8
  %30 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.in_msource*, %struct.in_msource** %9, align 8
  %35 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @ip_msource_tree, align 4
  %39 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %40 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %39, i32 0, i32 1
  %41 = load %struct.ip_msource*, %struct.ip_msource** %8, align 8
  %42 = call i32 @RB_INSERT(i32 %38, i32* %40, %struct.ip_msource* %41)
  %43 = load %struct.in_mfilter*, %struct.in_mfilter** %5, align 8
  %44 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.in_msource*, %struct.in_msource** %9, align 8
  store %struct.in_msource* %47, %struct.in_msource** %4, align 8
  br label %48

48:                                               ; preds = %18, %17
  %49 = load %struct.in_msource*, %struct.in_msource** %4, align 8
  ret %struct.in_msource* %49
}

declare dso_local %struct.ip_msource* @malloc(i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.ip_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
