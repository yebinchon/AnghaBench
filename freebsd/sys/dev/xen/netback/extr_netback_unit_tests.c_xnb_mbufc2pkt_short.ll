; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xnb_pkt = type { i64, i64, i32, i32, i64 }
%struct.mbuf = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@NETRXF_more_data = common dso_local global i32 0, align 4
@NETRXF_extra_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_mbufc2pkt_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_mbufc2pkt_short(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 128, i64* %6, align 8
  store i32 64, i32* %7, align 4
  store i64 9, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @MT_DATA, align 4
  %13 = call %struct.mbuf* @m_getm(i32* null, i64 %10, i32 %11, i32 %12)
  store %struct.mbuf* %13, %struct.mbuf** %9, align 8
  %14 = load i32, i32* @M_PKTHDR, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %26, %struct.xnb_pkt* %5, i64 %27, i32 %28)
  %30 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %31 = call i32 @XNB_ASSERT(i32 %30)
  %32 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @XNB_ASSERT(i32 %36)
  %38 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @XNB_ASSERT(i32 %42)
  %44 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NETRXF_more_data, align 4
  %47 = load i32, i32* @NETRXF_extra_info, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @XNB_ASSERT(i32 %52)
  %54 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = call i32 @XNB_ASSERT(i32 %57)
  %59 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @XNB_ASSERT(i32 %63)
  %65 = call i32 @safe_m_freem(%struct.mbuf** %9)
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
