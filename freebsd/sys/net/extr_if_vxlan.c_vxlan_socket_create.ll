; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%union.vxlan_sockaddr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vxlan_socket = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, %union.vxlan_sockaddr*, %struct.vxlan_socket**)* @vxlan_socket_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_socket_create(%struct.ifnet* %0, i32 %1, %union.vxlan_sockaddr* %2, %struct.vxlan_socket** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.vxlan_sockaddr*, align 8
  %9 = alloca %struct.vxlan_socket**, align 8
  %10 = alloca %union.vxlan_sockaddr, align 4
  %11 = alloca %struct.vxlan_socket*, align 8
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.vxlan_sockaddr* %2, %union.vxlan_sockaddr** %8, align 8
  store %struct.vxlan_socket** %3, %struct.vxlan_socket*** %9, align 8
  %13 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %8, align 8
  %14 = bitcast %union.vxlan_sockaddr* %10 to i8*
  %15 = bitcast %union.vxlan_sockaddr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = call i64 @VXLAN_SOCKADDR_IS_IPV4(%union.vxlan_sockaddr* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @INADDR_ANY, align 4
  %23 = bitcast %union.vxlan_sockaddr* %10 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %18
  br label %27

27:                                               ; preds = %26, %4
  %28 = call %struct.vxlan_socket* @vxlan_socket_alloc(%union.vxlan_sockaddr* %10)
  store %struct.vxlan_socket* %28, %struct.vxlan_socket** %11, align 8
  %29 = load %struct.vxlan_socket*, %struct.vxlan_socket** %11, align 8
  %30 = icmp eq %struct.vxlan_socket* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %5, align 4
  br label %56

33:                                               ; preds = %27
  %34 = load %struct.vxlan_socket*, %struct.vxlan_socket** %11, align 8
  %35 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %36 = call i32 @vxlan_socket_init(%struct.vxlan_socket* %34, %struct.ifnet* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %52

40:                                               ; preds = %33
  %41 = load %struct.vxlan_socket*, %struct.vxlan_socket** %11, align 8
  %42 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %43 = call i32 @vxlan_socket_bind(%struct.vxlan_socket* %41, %struct.ifnet* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %52

47:                                               ; preds = %40
  %48 = load %struct.vxlan_socket*, %struct.vxlan_socket** %11, align 8
  %49 = call i32 @vxlan_socket_insert(%struct.vxlan_socket* %48)
  %50 = load %struct.vxlan_socket*, %struct.vxlan_socket** %11, align 8
  %51 = load %struct.vxlan_socket**, %struct.vxlan_socket*** %9, align 8
  store %struct.vxlan_socket* %50, %struct.vxlan_socket** %51, align 8
  store i32 0, i32* %5, align 4
  br label %56

52:                                               ; preds = %46, %39
  %53 = load %struct.vxlan_socket*, %struct.vxlan_socket** %11, align 8
  %54 = call i32 @vxlan_socket_destroy(%struct.vxlan_socket* %53)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %47, %31
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV4(%union.vxlan_sockaddr*) #2

declare dso_local %struct.vxlan_socket* @vxlan_socket_alloc(%union.vxlan_sockaddr*) #2

declare dso_local i32 @vxlan_socket_init(%struct.vxlan_socket*, %struct.ifnet*) #2

declare dso_local i32 @vxlan_socket_bind(%struct.vxlan_socket*, %struct.ifnet*) #2

declare dso_local i32 @vxlan_socket_insert(%struct.vxlan_socket*) #2

declare dso_local i32 @vxlan_socket_destroy(%struct.vxlan_socket*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
