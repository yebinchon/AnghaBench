; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_pcbladdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_pcbladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in6 = type { i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@V_ip6_use_defzone = common dso_local global i32 0, align 4
@V_in6_ifaddrhead = common dso_local global i32 0, align 4
@in6addr_loopback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.sockaddr*, %struct.in6_addr*)* @in6_pcbladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_pcbladdr(%struct.inpcb* %0, %struct.sockaddr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr, align 4
  store %struct.inpcb* %0, %struct.inpcb** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %15 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %14)
  %16 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @INP_HASH_WLOCK_ASSERT(i32 %18)
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %100

27:                                               ; preds = %3
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %34, i32* %4, align 4
  br label %100

35:                                               ; preds = %27
  %36 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %41, i32* %4, align 4
  br label %100

42:                                               ; preds = %35
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @V_ip6_use_defzone, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %47, %42
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %53 = load i32, i32* @V_ip6_use_defzone, align 4
  %54 = call i32 @sa6_embedscope(%struct.sockaddr_in6* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %100

58:                                               ; preds = %51
  %59 = call i32 @CK_STAILQ_EMPTY(i32* @V_in6_ifaddrhead)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i32 0, i32 3
  %64 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @in6addr_loopback, align 4
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %73 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %75, i32 0, i32 3
  %77 = call i32 @prison_remote_ip6(i32 %74, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %100

81:                                               ; preds = %71
  %82 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %83 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %84 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %87 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %88 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @in6_selectsrc_socket(%struct.sockaddr_in6* %82, i32 %85, %struct.inpcb* %86, i32 %89, i32 %90, %struct.in6_addr* %11, i32* null)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %100

96:                                               ; preds = %81
  %97 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %98 = bitcast %struct.in6_addr* %97 to i8*
  %99 = bitcast %struct.in6_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %94, %79, %56, %40, %33, %25
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @INP_HASH_WLOCK_ASSERT(i32) #1

declare dso_local i32 @sa6_embedscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @CK_STAILQ_EMPTY(i32*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @prison_remote_ip6(i32, i32*) #1

declare dso_local i32 @in6_selectsrc_socket(%struct.sockaddr_in6*, i32, %struct.inpcb*, i32, i32, %struct.in6_addr*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
