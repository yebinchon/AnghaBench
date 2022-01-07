; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_sockaddr_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.vxlan_sockaddr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.TYPE_4__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.vxlan_sockaddr*, %struct.sockaddr*)* @vxlan_sockaddr_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_sockaddr_copy(%union.vxlan_sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %union.vxlan_sockaddr*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  store %union.vxlan_sockaddr* %0, %union.vxlan_sockaddr** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %5 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AF_INET, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %12 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET6, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ true, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %21 = call i32 @bzero(%union.vxlan_sockaddr* %20, i32 4)
  %22 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  %28 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %29 = bitcast %union.vxlan_sockaddr* %28 to %struct.TYPE_4__*
  %30 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %31 = call %struct.TYPE_4__* @satoconstsin(%struct.sockaddr* %30)
  %32 = bitcast %struct.TYPE_4__* %29 to i8*
  %33 = bitcast %struct.TYPE_4__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %35 = bitcast %union.vxlan_sockaddr* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 4, i32* %36, align 4
  br label %54

37:                                               ; preds = %16
  %38 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_INET6, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %45 = bitcast %union.vxlan_sockaddr* %44 to %struct.TYPE_3__*
  %46 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %47 = call %struct.TYPE_3__* @satoconstsin6(%struct.sockaddr* %46)
  %48 = bitcast %struct.TYPE_3__* %45 to i8*
  %49 = bitcast %struct.TYPE_3__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %3, align 8
  %51 = bitcast %union.vxlan_sockaddr* %50 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %37
  br label %54

54:                                               ; preds = %53, %27
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bzero(%union.vxlan_sockaddr*, i32) #1

declare dso_local %struct.TYPE_4__* @satoconstsin(%struct.sockaddr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_3__* @satoconstsin6(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
