; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.vxlan_sockaddr = type { %struct.sockaddr }
%struct.sockaddr = type { i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.vxlan_sockaddr*, i32)* @vxlan_sockaddr_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_sockaddr_supported(%union.vxlan_sockaddr* %0, i32 %1) #0 {
  %3 = alloca %union.vxlan_sockaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  store %union.vxlan_sockaddr* %0, %union.vxlan_sockaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %8 = bitcast %union.vxlan_sockaddr* %7 to %struct.sockaddr*
  store %struct.sockaddr* %8, %struct.sockaddr** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AF_UNSPEC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %34

18:                                               ; preds = %14, %2
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AF_INET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %33

25:                                               ; preds = %18
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32, %24
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
