; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_pkt2mbufc_csum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_pkt2mbufc_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MINCLSIZE = common dso_local global i32 0, align 4
@NETTXF_data_validated = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_pkt2mbufc_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_pkt2mbufc_csum(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xnb_pkt, align 4
  %7 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @MINCLSIZE, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @NETTXF_data_validated, align 4
  %13 = call i32 @xnb_get1pkt(%struct.xnb_pkt* %6, i64 %11, i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xnb_unit_pvt, i32 0, i32 0), align 4
  %15 = call %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt* %6, i32 %14)
  store %struct.mbuf* %15, %struct.mbuf** %7, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %17 = call i64 @M_TRAILINGSPACE(%struct.mbuf* %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp uge i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @XNB_ASSERT(i32 %20)
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @XNB_ASSERT(i32 %27)
  %29 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CSUM_IP_VALID, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @XNB_ASSERT(i32 %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CSUM_DATA_VALID, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @XNB_ASSERT(i32 %41)
  %43 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @XNB_ASSERT(i32 %48)
  %50 = call i32 @safe_m_freem(%struct.mbuf** %7)
  ret void
}

declare dso_local i32 @xnb_get1pkt(%struct.xnb_pkt*, i64, i32) #1

declare dso_local %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i64 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
