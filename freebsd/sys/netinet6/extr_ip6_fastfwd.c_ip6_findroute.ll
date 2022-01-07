; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_fastfwd.c_ip6_findroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_fastfwd.c_ip6_findroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nhop6_basic = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.mbuf = type { i32 }

@ip6s_noroute = common dso_local global i32 0, align 4
@ip6s_cantforward = common dso_local global i32 0, align 4
@ICMP6_DST_UNREACH = common dso_local global i32 0, align 4
@ICMP6_DST_UNREACH_NOROUTE = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@NHF_BLACKHOLE = common dso_local global i32 0, align 4
@NHF_REJECT = common dso_local global i32 0, align 4
@ICMP6_DST_UNREACH_REJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nhop6_basic*, %struct.sockaddr_in6*, %struct.mbuf*)* @ip6_findroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_findroute(%struct.nhop6_basic* %0, %struct.sockaddr_in6* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nhop6_basic*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.nhop6_basic* %0, %struct.nhop6_basic** %5, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %9 = call i32 @M_GETFIB(%struct.mbuf* %8)
  %10 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %11 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 2
  %12 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nhop6_basic*, %struct.nhop6_basic** %5, align 8
  %19 = call i64 @fib6_lookup_nh_basic(i32 %9, i32* %11, i32 %14, i32 0, i32 %17, %struct.nhop6_basic* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i32, i32* @ip6s_noroute, align 4
  %23 = call i32 @IP6STAT_INC(i32 %22)
  %24 = load i32, i32* @ip6s_cantforward, align 4
  %25 = call i32 @IP6STAT_INC(i32 %24)
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %27 = load i32, i32* @ICMP6_DST_UNREACH, align 4
  %28 = load i32, i32* @ICMP6_DST_UNREACH_NOROUTE, align 4
  %29 = call i32 @icmp6_error(%struct.mbuf* %26, i32 %27, i32 %28, i32 0)
  %30 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %30, i32* %4, align 4
  br label %60

31:                                               ; preds = %3
  %32 = load %struct.nhop6_basic*, %struct.nhop6_basic** %5, align 8
  %33 = getelementptr inbounds %struct.nhop6_basic, %struct.nhop6_basic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NHF_BLACKHOLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @ip6s_cantforward, align 4
  %40 = call i32 @IP6STAT_INC(i32 %39)
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = call i32 @m_freem(%struct.mbuf* %41)
  %43 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %43, i32* %4, align 4
  br label %60

44:                                               ; preds = %31
  %45 = load %struct.nhop6_basic*, %struct.nhop6_basic** %5, align 8
  %46 = getelementptr inbounds %struct.nhop6_basic, %struct.nhop6_basic* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NHF_REJECT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i32, i32* @ip6s_cantforward, align 4
  %53 = call i32 @IP6STAT_INC(i32 %52)
  %54 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %55 = load i32, i32* @ICMP6_DST_UNREACH, align 4
  %56 = load i32, i32* @ICMP6_DST_UNREACH_REJECT, align 4
  %57 = call i32 @icmp6_error(%struct.mbuf* %54, i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %51, %38, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @fib6_lookup_nh_basic(i32, i32*, i32, i32, i32, %struct.nhop6_basic*) #1

declare dso_local i32 @M_GETFIB(%struct.mbuf*) #1

declare dso_local i32 @IP6STAT_INC(i32) #1

declare dso_local i32 @icmp6_error(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
