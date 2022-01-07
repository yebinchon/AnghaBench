; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vxlan_socket = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.sockopt = type { i32*, i32, i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot create socket: %d\0A\00", align 1
@vxlan_rcv_udp_packet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot set tunneling function: %d\0A\00", align 1
@vxlan_reuse_port = common dso_local global i64 0, align 8
@SOPT_SET = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot set REUSEADDR socket opt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_socket*, %struct.ifnet*)* @vxlan_socket_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_socket_init(%struct.vxlan_socket* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxlan_socket*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockopt, align 8
  %9 = alloca i32, align 4
  store %struct.vxlan_socket* %0, %struct.vxlan_socket** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %6, align 8
  %11 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %12 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %17 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %16, i32 0, i32 0
  %18 = load i32, i32* @SOCK_DGRAM, align 4
  %19 = load i32, i32* @IPPROTO_UDP, align 4
  %20 = load %struct.thread*, %struct.thread** %6, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.thread*, %struct.thread** %6, align 8
  %24 = call i32 @socreate(i32 %15, i32* %17, i32 %18, i32 %19, i32 %22, %struct.thread* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @if_printf(%struct.ifnet* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %72

32:                                               ; preds = %2
  %33 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %34 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @vxlan_rcv_udp_packet, align 4
  %37 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %38 = call i32 @udp_set_kernel_tunneling(i32 %35, i32 %36, i32* null, %struct.vxlan_socket* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @if_printf(%struct.ifnet* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %72

46:                                               ; preds = %32
  %47 = load i64, i64* @vxlan_reuse_port, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  %50 = call i32 @bzero(%struct.sockopt* %8, i32 24)
  %51 = load i32, i32* @SOPT_SET, align 4
  %52 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %8, i32 0, i32 4
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IPPROTO_IP, align 4
  %54 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %8, i32 0, i32 3
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @SO_REUSEPORT, align 4
  %56 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %8, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %8, i32 0, i32 0
  store i32* %9, i32** %57, align 8
  %58 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %8, i32 0, i32 1
  store i32 4, i32* %58, align 8
  %59 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %60 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sosetopt(i32 %61, %struct.sockopt* %8)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @if_printf(%struct.ifnet* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70, %46
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %65, %41, %27
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @socreate(i32, i32*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @udp_set_kernel_tunneling(i32, i32, i32*, %struct.vxlan_socket*) #1

declare dso_local i32 @bzero(%struct.sockopt*, i32) #1

declare dso_local i32 @sosetopt(i32, %struct.sockopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
