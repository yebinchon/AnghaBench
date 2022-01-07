; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_update_ifa_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_update_ifa_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_aliasreq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i8*, i8* }
%struct.in6_ifaddr = type { i32, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i32 }

@time_uptime = common dso_local global i8* null, align 8
@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8
@IN6_IFF_DEPRECATED = common dso_local global i32 0, align 4
@IN6_IFF_DUPLICATED = common dso_local global i32 0, align 4
@ND6_IFF_IFDISABLED = common dso_local global i32 0, align 4
@IN6_IFF_TENTATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in6_aliasreq*, %struct.in6_ifaddr*, i32, i32)* @in6_update_ifa_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_update_ifa_internal(%struct.ifnet* %0, %struct.in6_aliasreq* %1, %struct.in6_ifaddr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in6_aliasreq*, align 8
  %8 = alloca %struct.in6_ifaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.in6_aliasreq* %1, %struct.in6_aliasreq** %7, align 8
  store %struct.in6_ifaddr* %2, %struct.in6_ifaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** @time_uptime, align 8
  %13 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %14 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %16 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %15, i32 0, i32 1
  %17 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %18 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %17, i32 0, i32 1
  %19 = bitcast %struct.TYPE_3__* %16 to i8*
  %20 = bitcast %struct.TYPE_3__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false)
  %21 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %22 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load i8*, i8** @time_uptime, align 8
  %29 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %30 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr i8, i8* %28, i64 %32
  %34 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %35 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i8* %33, i8** %36, align 8
  br label %41

37:                                               ; preds = %5
  %38 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %39 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i8* null, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %27
  %42 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %43 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i8*, i8** @time_uptime, align 8
  %50 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %51 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr i8, i8* %49, i64 %53
  %55 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %56 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  br label %62

58:                                               ; preds = %41
  %59 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %60 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i8* null, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %48
  %63 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %64 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IN6_IFF_DEPRECATED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %71 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** @time_uptime, align 8
  %74 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %75 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %69, %62
  %78 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %79 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %82 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @IN6_IFF_DUPLICATED, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %86 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %90 = call i64 @in6if_do_dad(%struct.ifnet* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %77
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %97 = call %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet* %96)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %95, %92
  %104 = load i32, i32* @IN6_IFF_TENTATIVE, align 4
  %105 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %106 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %95, %77
  %110 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %111 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %112 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @in6_notify_ifa(%struct.ifnet* %110, %struct.in6_ifaddr* %111, %struct.in6_aliasreq* %112, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @in6if_do_dad(%struct.ifnet*) #2

declare dso_local %struct.TYPE_4__* @ND_IFINFO(%struct.ifnet*) #2

declare dso_local i32 @in6_notify_ifa(%struct.ifnet*, %struct.in6_ifaddr*, %struct.in6_aliasreq*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
