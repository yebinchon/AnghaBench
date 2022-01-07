; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_getpmtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_getpmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_in6 = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }
%struct.nhop6_basic = type { i64 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.route_in6*, i32, %struct.ifnet*, %struct.in6_addr*, i64*, i32*, i32, i32)* @ip6_getpmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_getpmtu(%struct.route_in6* %0, i32 %1, %struct.ifnet* %2, %struct.in6_addr* %3, i64* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.route_in6*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nhop6_basic, align 8
  %18 = alloca %struct.in6_addr, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sockaddr_in6*, align 8
  %21 = alloca i64, align 8
  store %struct.route_in6* %0, %struct.route_in6** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.ifnet* %2, %struct.ifnet** %11, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %8
  %25 = load %struct.route_in6*, %struct.route_in6** %9, align 8
  %26 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %25, i32 0, i32 2
  %27 = bitcast i32* %26 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %27, %struct.sockaddr_in6** %20, align 8
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 1
  %30 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %31 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %29, %struct.in6_addr* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load %struct.route_in6*, %struct.route_in6** %9, align 8
  %35 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %24
  %37 = load %struct.route_in6*, %struct.route_in6** %9, align 8
  %38 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %43 = call i32 @bzero(%struct.sockaddr_in6* %42, i32 12)
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 0
  store i32 12, i32* %48, align 4
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 1
  %51 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %52 = bitcast %struct.in6_addr* %50 to i8*
  %53 = bitcast %struct.in6_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %55 = call i32 @in6_splitscope(%struct.in6_addr* %54, %struct.in6_addr* %18, i32* %19)
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %19, align 4
  %58 = call i64 @fib6_lookup_nh_basic(i32 %56, %struct.in6_addr* %18, i32 %57, i32 0, i32 0, %struct.nhop6_basic* %17)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.nhop6_basic, %struct.nhop6_basic* %17, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.route_in6*, %struct.route_in6** %9, align 8
  %64 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %41
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.route_in6*, %struct.route_in6** %9, align 8
  %68 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %21, align 8
  br label %70

70:                                               ; preds = %66, %8
  %71 = load %struct.route_in6*, %struct.route_in6** %9, align 8
  %72 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp ne %struct.TYPE_2__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.route_in6*, %struct.route_in6** %9, align 8
  %77 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %21, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %83 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %84 = load i64, i64* %21, align 8
  %85 = load i64*, i64** %13, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @ip6_calcmtu(%struct.ifnet* %82, %struct.in6_addr* %83, i64 %84, i64* %85, i32* %86, i32 %87)
  ret i32 %88
}

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @in6_splitscope(%struct.in6_addr*, %struct.in6_addr*, i32*) #1

declare dso_local i64 @fib6_lookup_nh_basic(i32, %struct.in6_addr*, i32, i32, i32, %struct.nhop6_basic*) #1

declare dso_local i32 @ip6_calcmtu(%struct.ifnet*, %struct.in6_addr*, i64, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
