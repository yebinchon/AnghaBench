; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_socket_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_socket = type { %union.vxlan_sockaddr, i32*, i32, i32 }
%union.vxlan_sockaddr = type { i32 }

@M_VXLAN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"vxlansorm\00", align 1
@VXLAN_SO_VNI_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vxlan_socket* (%union.vxlan_sockaddr*)* @vxlan_socket_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vxlan_socket* @vxlan_socket_alloc(%union.vxlan_sockaddr* %0) #0 {
  %2 = alloca %union.vxlan_sockaddr*, align 8
  %3 = alloca %struct.vxlan_socket*, align 8
  %4 = alloca i32, align 4
  store %union.vxlan_sockaddr* %0, %union.vxlan_sockaddr** %2, align 8
  %5 = load i32, i32* @M_VXLAN, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.vxlan_socket* @malloc(i32 24, i32 %5, i32 %8)
  store %struct.vxlan_socket* %9, %struct.vxlan_socket** %3, align 8
  %10 = load %struct.vxlan_socket*, %struct.vxlan_socket** %3, align 8
  %11 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %10, i32 0, i32 3
  %12 = call i32 @rm_init(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vxlan_socket*, %struct.vxlan_socket** %3, align 8
  %14 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %13, i32 0, i32 2
  %15 = call i32 @refcount_init(i32* %14, i32 0)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @VXLAN_SO_VNI_HASH_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.vxlan_socket*, %struct.vxlan_socket** %3, align 8
  %22 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @LIST_INIT(i32* %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load %struct.vxlan_socket*, %struct.vxlan_socket** %3, align 8
  %33 = getelementptr inbounds %struct.vxlan_socket, %struct.vxlan_socket* %32, i32 0, i32 0
  %34 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %2, align 8
  %35 = bitcast %union.vxlan_sockaddr* %33 to i8*
  %36 = bitcast %union.vxlan_sockaddr* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load %struct.vxlan_socket*, %struct.vxlan_socket** %3, align 8
  ret %struct.vxlan_socket* %37
}

declare dso_local %struct.vxlan_socket* @malloc(i32, i32, i32) #1

declare dso_local i32 @rm_init(i32*, i8*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
