; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_broadcast_ifa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_broadcast_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_aliasreq = type { i32 }
%struct.in6_ifaddr = type { i32, i32 }
%struct.in6_multi = type { i64, i32 }
%struct.ifaddr = type { i32 }

@IFF_MULTICAST = common dso_local global i32 0, align 4
@IN6_IFF_TENTATIVE = common dso_local global i32 0, align 4
@IN6_IFAUPDATE_DADDELAY = common dso_local global i32 0, align 4
@MLD_REPORTING_MEMBER = common dso_local global i64 0, align 8
@MAX_RTR_SOLICITATION_DELAY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@RTM_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in6_aliasreq*, %struct.in6_ifaddr*, i32)* @in6_broadcast_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_broadcast_ifa(%struct.ifnet* %0, %struct.in6_aliasreq* %1, %struct.in6_ifaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in6_aliasreq*, align 8
  %8 = alloca %struct.in6_ifaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_multi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.in6_aliasreq* %1, %struct.in6_aliasreq** %7, align 8
  store %struct.in6_ifaddr* %2, %struct.in6_ifaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %16 = call i32 @nd6_add_ifa_lle(%struct.in6_ifaddr* %15)
  store i32 %16, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %20 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %19, i32 0, i32 1
  %21 = call i32 @in6_purgeaddr(i32* %20)
  %22 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %23 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %22, i32 0, i32 1
  %24 = call i32 @ifa_free(i32* %23)
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %106

26:                                               ; preds = %4
  store %struct.in6_multi* null, %struct.in6_multi** %10, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_MULTICAST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %35 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %36 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @in6_update_ifa_join_mc(%struct.ifnet* %34, %struct.in6_aliasreq* %35, %struct.in6_ifaddr* %36, i32 %37, %struct.in6_multi** %10)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %43 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %42, i32 0, i32 1
  %44 = call i32 @in6_purgeaddr(i32* %43)
  %45 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %46 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %45, i32 0, i32 1
  %47 = call i32 @ifa_free(i32* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %106

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %52 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IN6_IFF_TENTATIVE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @IN6_IFAUPDATE_DADDELAY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  %63 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %64 = icmp ne %struct.in6_multi* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %67 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MLD_REPORTING_MEMBER, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.in6_multi*, %struct.in6_multi** %10, align 8
  %73 = getelementptr inbounds %struct.in6_multi, %struct.in6_multi* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %71, %65, %62
  %76 = load i32, i32* @MAX_RTR_SOLICITATION_DELAY, align 4
  %77 = load i32, i32* @hz, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %92

84:                                               ; preds = %75
  %85 = call i32 (...) @arc4random()
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %86, %87
  %89 = srem i32 %85, %88
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %84, %83
  br label %93

93:                                               ; preds = %92, %57
  %94 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %95 = bitcast %struct.in6_ifaddr* %94 to %struct.ifaddr*
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @nd6_dad_start(%struct.ifaddr* %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %50
  %99 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %100 = load i32, i32* @RTM_ADD, align 4
  %101 = call i32 @in6_newaddrmsg(%struct.in6_ifaddr* %99, i32 %100)
  %102 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %103 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %102, i32 0, i32 1
  %104 = call i32 @ifa_free(i32* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %98, %41, %18
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @nd6_add_ifa_lle(%struct.in6_ifaddr*) #1

declare dso_local i32 @in6_purgeaddr(i32*) #1

declare dso_local i32 @ifa_free(i32*) #1

declare dso_local i32 @in6_update_ifa_join_mc(%struct.ifnet*, %struct.in6_aliasreq*, %struct.in6_ifaddr*, i32, %struct.in6_multi**) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @nd6_dad_start(%struct.ifaddr*, i32) #1

declare dso_local i32 @in6_newaddrmsg(%struct.in6_ifaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
