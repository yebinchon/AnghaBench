; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_duplicated.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_duplicated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.dadq = type { i32, i32, i32, i32 }
%struct.in6_ifaddr = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"%s: DAD detected duplicate IPv6 address %s: NS in/out/loopback=%d/%d/%d, NA in=%d\0A\00", align 1
@IN6_IFF_TENTATIVE = common dso_local global i32 0, align 4
@IN6_IFF_DUPLICATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: DAD complete for %s - duplicate found\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: manual intervention required\0A\00", align 1
@ND6_IFF_IFDISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"%s: possible hardware address duplication detected, disable IPv6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddr*, %struct.dadq*)* @nd6_dad_duplicated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_duplicated(%struct.ifaddr* %0, %struct.dadq* %1) #0 {
  %3 = alloca %struct.ifaddr*, align 8
  %4 = alloca %struct.dadq*, align 8
  %5 = alloca %struct.in6_ifaddr*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.in6_addr, align 4
  store %struct.ifaddr* %0, %struct.ifaddr** %3, align 8
  store %struct.dadq* %1, %struct.dadq** %4, align 8
  %10 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %11 = bitcast %struct.ifaddr* %10 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %11, %struct.in6_ifaddr** %5, align 8
  %12 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %18 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %17, i32 0, i32 0
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %20 = call i32 @if_name(%struct.ifnet* %19)
  %21 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %22 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @ip6_sprintf(i8* %15, %struct.in6_addr* %23)
  %25 = load %struct.dadq*, %struct.dadq** %4, align 8
  %26 = getelementptr inbounds %struct.dadq, %struct.dadq* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dadq*, %struct.dadq** %4, align 8
  %29 = getelementptr inbounds %struct.dadq, %struct.dadq* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dadq*, %struct.dadq** %4, align 8
  %32 = getelementptr inbounds %struct.dadq, %struct.dadq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dadq*, %struct.dadq** %4, align 8
  %35 = getelementptr inbounds %struct.dadq, %struct.dadq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @log(i32 %16, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* @IN6_IFF_TENTATIVE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %41 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @IN6_IFF_DUPLICATED, align 4
  %45 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %46 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %50 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %49, i32 0, i32 0
  %51 = load %struct.ifnet*, %struct.ifnet** %50, align 8
  store %struct.ifnet* %51, %struct.ifnet** %6, align 8
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %54 = call i32 @if_name(%struct.ifnet* %53)
  %55 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %56 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @ip6_sprintf(i8* %15, %struct.in6_addr* %57)
  %59 = call i32 (i32, i8*, i32, ...) @log(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %58)
  %60 = load i32, i32* @LOG_ERR, align 4
  %61 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %62 = call i32 @if_name(%struct.ifnet* %61)
  %63 = call i32 (i32, i8*, i32, ...) @log(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %65 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %2
  %70 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %100 [
    i32 130, label %73
    i32 131, label %73
    i32 129, label %73
    i32 128, label %73
  ]

73:                                               ; preds = %69, %69, %69, %69
  %74 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %75 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = bitcast %struct.in6_addr* %9 to i8*
  %78 = bitcast %struct.in6_addr* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %80 = call i32 @in6_get_hw_ifid(%struct.ifnet* %79, %struct.in6_addr* %9)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %73
  %83 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %5, align 8
  %84 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %85, %struct.in6_addr* %9)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %90 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %91 = call %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @LOG_ERR, align 4
  %96 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %97 = call i32 @if_name(%struct.ifnet* %96)
  %98 = call i32 (i32, i8*, i32, ...) @log(i32 %95, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %88, %82, %73
  br label %100

100:                                              ; preds = %69, %99
  br label %101

101:                                              ; preds = %100, %2
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log(i32, i8*, i32, ...) #2

declare dso_local i32 @if_name(%struct.ifnet*) #2

declare dso_local i32 @ip6_sprintf(i8*, %struct.in6_addr*) #2

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @in6_get_hw_ifid(%struct.ifnet*, %struct.in6_addr*) #2

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*) #2

declare dso_local %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
