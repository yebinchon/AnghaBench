; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_pcbconnect_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_pcbconnect_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, i32, i32, i32, i32, %struct.in6_addr, %struct.inpcbinfo* }
%struct.in6_addr = type { i32 }
%struct.inpcbinfo = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ucred = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@EADDRINUSE = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@IN6P_AUTOFLOWLABEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_pcbconnect_mbuf(%struct.inpcb* %0, %struct.sockaddr* %1, %struct.ucred* %2, %struct.mbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.inpcbinfo*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca %struct.in6_addr, align 4
  %13 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  %14 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %15 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %14, i32 0, i32 6
  %16 = load %struct.inpcbinfo*, %struct.inpcbinfo** %15, align 8
  store %struct.inpcbinfo* %16, %struct.inpcbinfo** %10, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %18, %struct.sockaddr_in6** %11, align 8
  %19 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %20 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %19)
  %21 = load %struct.inpcbinfo*, %struct.inpcbinfo** %10, align 8
  %22 = call i32 @INP_HASH_WLOCK_ASSERT(%struct.inpcbinfo* %21)
  %23 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %25 = call i32 @in6_pcbladdr(%struct.inpcb* %23, %struct.sockaddr* %24, %struct.in6_addr* %12)
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %113

29:                                               ; preds = %4
  %30 = load %struct.inpcbinfo*, %struct.inpcbinfo** %10, align 8
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 1
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %37 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %36, i32 0, i32 5
  %38 = call i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 5
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi %struct.in6_addr* [ %12, %40 ], [ %43, %41 ]
  %46 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %47 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32* @in6_pcblookup_hash_locked(%struct.inpcbinfo* %30, i32* %32, i32 %35, %struct.in6_addr* %45, i64 %48, i32 0, i32* null)
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @EADDRINUSE, align 4
  store i32 %52, i32* %5, align 4
  br label %113

53:                                               ; preds = %44
  %54 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %55 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %54, i32 0, i32 5
  %56 = call i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %60 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %65 = load %struct.ucred*, %struct.ucred** %8, align 8
  %66 = call i32 @in6_pcbbind(%struct.inpcb* %64, %struct.sockaddr* null, %struct.ucred* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %113

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %58
  %73 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %74 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %73, i32 0, i32 5
  %75 = bitcast %struct.in6_addr* %74 to i8*
  %76 = bitcast %struct.in6_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 4 %76, i64 4, i1 false)
  br label %77

77:                                               ; preds = %72, %53
  %78 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %82 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %87 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %91 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %95 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IN6P_AUTOFLOWLABEL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %77
  %101 = call i32 (...) @ip6_randomflowlabel()
  %102 = call i32 @htonl(i32 %101)
  %103 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %106 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %100, %77
  %110 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %111 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %112 = call i32 @in_pcbrehash_mbuf(%struct.inpcb* %110, %struct.mbuf* %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %109, %69, %51, %27
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @INP_HASH_WLOCK_ASSERT(%struct.inpcbinfo*) #1

declare dso_local i32 @in6_pcbladdr(%struct.inpcb*, %struct.sockaddr*, %struct.in6_addr*) #1

declare dso_local i32* @in6_pcblookup_hash_locked(%struct.inpcbinfo*, i32*, i32, %struct.in6_addr*, i64, i32, i32*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr*) #1

declare dso_local i32 @in6_pcbbind(%struct.inpcb*, %struct.sockaddr*, %struct.ucred*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ip6_randomflowlabel(...) #1

declare dso_local i32 @in_pcbrehash_mbuf(%struct.inpcb*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
