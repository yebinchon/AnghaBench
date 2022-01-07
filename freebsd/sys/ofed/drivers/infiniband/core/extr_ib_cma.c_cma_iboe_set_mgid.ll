; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_iboe_set_mgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_iboe_set_mgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%union.ib_gid = type { i32* }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, %union.ib_gid*, i32)* @cma_iboe_set_mgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_iboe_set_mgid(%struct.sockaddr* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %10, %struct.sockaddr_in** %7, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %12, %struct.sockaddr_in6** %8, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %14 = call i64 @cma_any_addr(%struct.sockaddr* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %18 = call i32 @memset(%union.ib_gid* %17, i32 0, i32 8)
  br label %98

19:                                               ; preds = %3
  %20 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 0
  %29 = call i32 @memcpy(%union.ib_gid* %26, i32* %28, i32 8)
  br label %97

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 255
  %36 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %37 = bitcast %union.ib_gid* %36 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 14
  %45 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %46 = bitcast %union.ib_gid* %45 to i32**
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %50 = bitcast %union.ib_gid* %49 to i32**
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 0, i32* %52, align 4
  %53 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %54 = bitcast %union.ib_gid* %53 to i32**
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 0, i32* %56, align 4
  %57 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %58 = bitcast %union.ib_gid* %57 to i32**
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 0, i32* %60, align 4
  %61 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %62 = bitcast %union.ib_gid* %61 to i32**
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 0, i32* %64, align 4
  %65 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %66 = bitcast %union.ib_gid* %65 to i32**
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  store i32 0, i32* %68, align 4
  %69 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %70 = bitcast %union.ib_gid* %69 to i32**
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  store i32 0, i32* %72, align 4
  %73 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %74 = bitcast %union.ib_gid* %73 to i32**
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  store i32 0, i32* %76, align 4
  %77 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %78 = bitcast %union.ib_gid* %77 to i32**
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 9
  store i32 0, i32* %80, align 4
  %81 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %82 = bitcast %union.ib_gid* %81 to i32**
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 10
  store i32 255, i32* %84, align 4
  %85 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %86 = bitcast %union.ib_gid* %85 to i32**
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 11
  store i32 255, i32* %88, align 4
  %89 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %94 = bitcast %union.ib_gid* %93 to i32**
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 12
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %30, %25
  br label %98

98:                                               ; preds = %97, %16
  ret void
}

declare dso_local i64 @cma_any_addr(%struct.sockaddr*) #1

declare dso_local i32 @memset(%union.ib_gid*, i32, i32) #1

declare dso_local i32 @memcpy(%union.ib_gid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
