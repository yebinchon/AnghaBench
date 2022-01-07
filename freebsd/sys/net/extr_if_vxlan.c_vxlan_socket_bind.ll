; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vxlan_socket = type { i32, %union.vxlan_sockaddr }
%union.vxlan_sockaddr = type { i32 }
%struct.ifnet = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot bind socket: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_socket*, %struct.ifnet*)* @vxlan_socket_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_socket_bind(%struct.vxlan_socket* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxlan_socket*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %union.vxlan_sockaddr, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  store %struct.vxlan_socket* %0, %struct.vxlan_socket** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %7, align 8
  %10 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %11 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %10, i32 0, i32 1
  %12 = bitcast %union.vxlan_sockaddr* %6 to i8*
  %13 = bitcast %union.vxlan_sockaddr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %15 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %union.vxlan_sockaddr* %6 to i32*
  %18 = load %struct.thread*, %struct.thread** %7, align 8
  %19 = call i32 @sobind(i32 %16, i32* %17, %struct.thread* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EADDRINUSE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @if_printf(%struct.ifnet* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sobind(i32, i32*, %struct.thread*) #2

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
