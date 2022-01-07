; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_icmp6.c_icmp6_mtudisc_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_icmp6.c_icmp6_mtudisc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6ctlparam = type { %struct.mbuf*, %struct.icmp6_hdr*, %struct.in6_addr* }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.icmp6_hdr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.in_conninfo = type { %struct.in6_addr, i32, i32 }

@IPV6_MMTU = common dso_local global i32 0, align 4
@INC_ISIPV6 = common dso_local global i32 0, align 4
@icp6s_pmtuchg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @icmp6_mtudisc_update(%struct.ip6ctlparam* %0, i32 %1) #0 {
  %3 = alloca %struct.ip6ctlparam*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.icmp6_hdr*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in_conninfo, align 4
  store %struct.ip6ctlparam* %0, %struct.ip6ctlparam** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %3, align 8
  %11 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %10, i32 0, i32 2
  %12 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  store %struct.in6_addr* %12, %struct.in6_addr** %5, align 8
  %13 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %3, align 8
  %14 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %13, i32 0, i32 1
  %15 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %14, align 8
  store %struct.icmp6_hdr* %15, %struct.icmp6_hdr** %6, align 8
  %16 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %3, align 8
  %17 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %16, i32 0, i32 0
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  store %struct.mbuf* %18, %struct.mbuf** %7, align 8
  %19 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 16
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %68

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %68

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @IPV6_MMTU, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @IPV6_MMTU, align 4
  %37 = sub nsw i32 %36, 8
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = call i32 @bzero(%struct.in_conninfo* %9, i32 12)
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = call i32 @M_GETFIB(%struct.mbuf* %40)
  %42 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %9, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @INC_ISIPV6, align 4
  %44 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %9, i32 0, i32 0
  %48 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %49 = bitcast %struct.in6_addr* %47 to i8*
  %50 = bitcast %struct.in6_addr* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %9, i32 0, i32 0
  %52 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @in6_setscope(%struct.in6_addr* %51, i32 %55, i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %68

59:                                               ; preds = %38
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @tcp_maxmtu6(%struct.in_conninfo* %9, i32* null)
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @tcp_hc_updatemtu(%struct.in_conninfo* %9, i32 %64)
  %66 = load i32, i32* @icp6s_pmtuchg, align 4
  %67 = call i32 @ICMP6STAT_INC(i32 %66)
  br label %68

68:                                               ; preds = %26, %30, %58, %63, %59
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @bzero(%struct.in_conninfo*, i32) #1

declare dso_local i32 @M_GETFIB(%struct.mbuf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @in6_setscope(%struct.in6_addr*, i32, i32*) #1

declare dso_local i32 @tcp_maxmtu6(%struct.in_conninfo*, i32*) #1

declare dso_local i32 @tcp_hc_updatemtu(%struct.in_conninfo*, i32) #1

declare dso_local i32 @ICMP6STAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
