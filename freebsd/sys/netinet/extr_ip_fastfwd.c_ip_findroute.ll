; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_fastfwd.c_ip_findroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_fastfwd.c_ip_findroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nhop4_basic = type { i32 }
%struct.mbuf = type { i32 }
%struct.in_addr = type { i32 }

@ips_noroute = common dso_local global i32 0, align 4
@ips_cantforward = common dso_local global i32 0, align 4
@ICMP_UNREACH = common dso_local global i32 0, align 4
@ICMP_UNREACH_HOST = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@NHF_BLACKHOLE = common dso_local global i32 0, align 4
@NHF_BROADCAST = common dso_local global i32 0, align 4
@NHF_REJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nhop4_basic*, i32, %struct.mbuf*)* @ip_findroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_findroute(%struct.nhop4_basic* %0, i32 %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.nhop4_basic*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.nhop4_basic* %0, %struct.nhop4_basic** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %9 = load %struct.nhop4_basic*, %struct.nhop4_basic** %6, align 8
  %10 = call i32 @bzero(%struct.nhop4_basic* %9, i32 4)
  %11 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %12 = call i32 @M_GETFIB(%struct.mbuf* %11)
  %13 = load %struct.nhop4_basic*, %struct.nhop4_basic** %6, align 8
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @fib4_lookup_nh_basic(i32 %12, i32 %15, i32 0, i32 0, %struct.nhop4_basic* %13)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32, i32* @ips_noroute, align 4
  %20 = call i32 @IPSTAT_INC(i32 %19)
  %21 = load i32, i32* @ips_cantforward, align 4
  %22 = call i32 @IPSTAT_INC(i32 %21)
  %23 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %24 = load i32, i32* @ICMP_UNREACH, align 4
  %25 = load i32, i32* @ICMP_UNREACH_HOST, align 4
  %26 = call i32 @icmp_error(%struct.mbuf* %23, i32 %24, i32 %25, i32 0, i32 0)
  %27 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %3
  %29 = load %struct.nhop4_basic*, %struct.nhop4_basic** %6, align 8
  %30 = getelementptr inbounds %struct.nhop4_basic, %struct.nhop4_basic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NHF_BLACKHOLE, align 4
  %33 = load i32, i32* @NHF_BROADCAST, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* @ips_cantforward, align 4
  %39 = call i32 @IPSTAT_INC(i32 %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = call i32 @m_freem(%struct.mbuf* %40)
  %42 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %42, i32* %4, align 4
  br label %59

43:                                               ; preds = %28
  %44 = load %struct.nhop4_basic*, %struct.nhop4_basic** %6, align 8
  %45 = getelementptr inbounds %struct.nhop4_basic, %struct.nhop4_basic* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NHF_REJECT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i32, i32* @ips_cantforward, align 4
  %52 = call i32 @IPSTAT_INC(i32 %51)
  %53 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %54 = load i32, i32* @ICMP_UNREACH, align 4
  %55 = load i32, i32* @ICMP_UNREACH_HOST, align 4
  %56 = call i32 @icmp_error(%struct.mbuf* %53, i32 %54, i32 %55, i32 0, i32 0)
  %57 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %50, %37, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @bzero(%struct.nhop4_basic*, i32) #1

declare dso_local i64 @fib4_lookup_nh_basic(i32, i32, i32, i32, %struct.nhop4_basic*) #1

declare dso_local i32 @M_GETFIB(%struct.mbuf*) #1

declare dso_local i32 @IPSTAT_INC(i32) #1

declare dso_local i32 @icmp_error(%struct.mbuf*, i32, i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
