; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_in_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_in_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.vxlan_sockaddr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.in6_addr, i64 }
%struct.in6_addr = type { i32 }
%struct.sockaddr = type { i64 }
%struct.in_addr = type { i32 }
%struct.TYPE_8__ = type { %struct.in_addr }
%struct.TYPE_5__ = type { i32, %struct.in_addr, i64 }
%struct.TYPE_7__ = type { %struct.in6_addr }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.vxlan_sockaddr*, %struct.sockaddr*)* @vxlan_sockaddr_in_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_sockaddr_in_copy(%union.vxlan_sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %union.vxlan_sockaddr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  store %union.vxlan_sockaddr* %0, %union.vxlan_sockaddr** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %8 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AF_INET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET6, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @MPASS(i32 %20)
  %22 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %29 = call %struct.TYPE_8__* @satoconstsin(%struct.sockaddr* %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.in_addr* %30, %struct.in_addr** %5, align 8
  %31 = load i64, i64* @AF_INET, align 8
  %32 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %33 = bitcast %union.vxlan_sockaddr* %32 to %struct.TYPE_5__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i64 %31, i64* %34, align 8
  %35 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %36 = bitcast %union.vxlan_sockaddr* %35 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %39 = bitcast %union.vxlan_sockaddr* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %42 = bitcast %struct.in_addr* %40 to i8*
  %43 = bitcast %struct.in_addr* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %68

44:                                               ; preds = %18
  %45 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF_INET6, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %52 = call %struct.TYPE_7__* @satoconstsin6(%struct.sockaddr* %51)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store %struct.in6_addr* %53, %struct.in6_addr** %6, align 8
  %54 = load i64, i64* @AF_INET6, align 8
  %55 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %56 = bitcast %union.vxlan_sockaddr* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i64 %54, i64* %57, align 8
  %58 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %59 = bitcast %union.vxlan_sockaddr* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 4, i32* %60, align 8
  %61 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %62 = bitcast %union.vxlan_sockaddr* %61 to %struct.TYPE_6__*
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %65 = bitcast %struct.in6_addr* %63 to i8*
  %66 = bitcast %struct.in6_addr* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  br label %67

67:                                               ; preds = %50, %44
  br label %68

68:                                               ; preds = %67, %27
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.TYPE_8__* @satoconstsin(%struct.sockaddr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_7__* @satoconstsin6(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
