; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_imf_prune.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_imf_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_mfilter = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip_msource = type { i32 }
%struct.in_msource = type { i32* }

@ip_msource_tree = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_mfilter*, %struct.sockaddr_in*)* @imf_prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imf_prune(%struct.in_mfilter* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_mfilter*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.ip_msource, align 4
  %7 = alloca %struct.ip_msource*, align 8
  %8 = alloca %struct.in_msource*, align 8
  store %struct.in_mfilter* %0, %struct.in_mfilter** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  %9 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ntohl(i32 %12)
  %14 = getelementptr inbounds %struct.ip_msource, %struct.ip_msource* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @ip_msource_tree, align 4
  %16 = load %struct.in_mfilter*, %struct.in_mfilter** %4, align 8
  %17 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %16, i32 0, i32 0
  %18 = call %struct.ip_msource* @RB_FIND(i32 %15, i32* %17, %struct.ip_msource* %6)
  store %struct.ip_msource* %18, %struct.ip_msource** %7, align 8
  %19 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %20 = icmp eq %struct.ip_msource* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.ip_msource*, %struct.ip_msource** %7, align 8
  %25 = bitcast %struct.ip_msource* %24 to %struct.in_msource*
  store %struct.in_msource* %25, %struct.in_msource** %8, align 8
  %26 = load i32, i32* @MCAST_UNDEFINED, align 4
  %27 = load %struct.in_msource*, %struct.in_msource** %8, align 8
  %28 = getelementptr inbounds %struct.in_msource, %struct.in_msource* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %26, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.ip_msource* @RB_FIND(i32, i32*, %struct.ip_msource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
