; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_1cluster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_1cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xnb_pkt = type { i64, i64, i32, i32, i64 }
%struct.mbuf = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@MCLBYTES = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@NETRXF_more_data = common dso_local global i32 0, align 4
@NETRXF_extra_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_mbufc2pkt_1cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_mbufc2pkt_1cluster(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* @MCLBYTES, align 8
  store i64 %10, i64* %6, align 8
  store i32 32, i32* %7, align 4
  store i64 12, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @MT_DATA, align 4
  %14 = call %struct.mbuf* @m_getm(i32* null, i64 %11, i32 %12, i32 %13)
  store %struct.mbuf* %14, %struct.mbuf** %9, align 8
  %15 = load i32, i32* @M_PKTHDR, align 4
  %16 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %27, %struct.xnb_pkt* %5, i64 %28, i32 %29)
  %31 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %32 = call i32 @XNB_ASSERT(i32 %31)
  %33 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @XNB_ASSERT(i32 %37)
  %39 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @XNB_ASSERT(i32 %43)
  %45 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NETRXF_more_data, align 4
  %48 = load i32, i32* @NETRXF_extra_info, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @XNB_ASSERT(i32 %53)
  %55 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = call i32 @XNB_ASSERT(i32 %58)
  %60 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @XNB_ASSERT(i32 %64)
  %66 = call i32 @safe_m_freem(%struct.mbuf** %9)
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i64, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
