; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_mc_info_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_mc_info_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_socket_mc_info = type { i32, i32, i32 }
%union.vxlan_sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_socket_mc_info*, %union.vxlan_sockaddr*, %union.vxlan_sockaddr*, i32)* @vxlan_sockaddr_mc_info_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_sockaddr_mc_info_match(%struct.vxlan_socket_mc_info* %0, %union.vxlan_sockaddr* %1, %union.vxlan_sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxlan_socket_mc_info*, align 8
  %7 = alloca %union.vxlan_sockaddr*, align 8
  %8 = alloca %union.vxlan_sockaddr*, align 8
  %9 = alloca i32, align 4
  store %struct.vxlan_socket_mc_info* %0, %struct.vxlan_socket_mc_info** %6, align 8
  store %union.vxlan_sockaddr* %1, %union.vxlan_sockaddr** %7, align 8
  store %union.vxlan_sockaddr* %2, %union.vxlan_sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %11 = call i32 @vxlan_sockaddr_in_any(%union.vxlan_sockaddr* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %6, align 8
  %15 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %14, i32 0, i32 2
  %16 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %17 = bitcast %union.vxlan_sockaddr* %16 to i32*
  %18 = call i32 @vxlan_sockaddr_in_equal(i32* %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %40

21:                                               ; preds = %13, %4
  %22 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %6, align 8
  %23 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %22, i32 0, i32 1
  %24 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %7, align 8
  %25 = bitcast %union.vxlan_sockaddr* %24 to i32*
  %26 = call i32 @vxlan_sockaddr_in_equal(i32* %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %40

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.vxlan_socket_mc_info*, %struct.vxlan_socket_mc_info** %6, align 8
  %35 = getelementptr inbounds %struct.vxlan_socket_mc_info, %struct.vxlan_socket_mc_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %40

39:                                               ; preds = %32, %29
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %38, %28, %20
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @vxlan_sockaddr_in_any(%union.vxlan_sockaddr*) #1

declare dso_local i32 @vxlan_sockaddr_in_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
