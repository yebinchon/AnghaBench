; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_extra.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_mbufc2pkt_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xnb_pkt = type { i64, i64, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_7__, %struct.mbuf*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@MCLBYTES = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@TCP_MSS = common dso_local global i32 0, align 4
@NETRXF_extra_info = common dso_local global i32 0, align 4
@NETRXF_data_validated = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_GSO = common dso_local global i64 0, align 8
@XEN_NETIF_EXTRA_FLAG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_mbufc2pkt_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_mbufc2pkt_extra(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @MCLBYTES, align 4
  %13 = mul nsw i32 14, %12
  %14 = sdiv i32 %13, 3
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  store i32 15, i32* %8, align 4
  store i64 3, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @MT_DATA, align 4
  %19 = call %struct.mbuf* @m_getm(i32* null, i64 %16, i32 %17, i32 %18)
  store %struct.mbuf* %19, %struct.mbuf** %10, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %21 = icmp ne %struct.mbuf* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @XNB_ASSERT(i32 %22)
  %24 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %25 = icmp eq %struct.mbuf* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %138

27:                                               ; preds = %2
  %28 = load i32, i32* @M_PKTHDR, align 4
  %29 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load i32, i32* @CSUM_TSO, align 4
  %38 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @TCP_MSS, align 4
  %44 = sub nsw i32 %43, 40
  %45 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %7, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %49, %struct.mbuf** %11, align 8
  br label %50

50:                                               ; preds = %66, %27
  %51 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %52 = icmp ne %struct.mbuf* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %55 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %54)
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @MAX(i32 %55, i64 %56)
  %58 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %53
  %67 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 2
  %69 = load %struct.mbuf*, %struct.mbuf** %68, align 8
  store %struct.mbuf* %69, %struct.mbuf** %11, align 8
  br label %50

70:                                               ; preds = %50
  %71 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @xnb_mbufc2pkt(%struct.mbuf* %71, %struct.xnb_pkt* %5, i64 %72, i32 %73)
  %75 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %76 = call i32 @XNB_ASSERT(i32 %75)
  %77 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @XNB_ASSERT(i32 %81)
  %83 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @XNB_ASSERT(i32 %87)
  %89 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = call i32 @XNB_ASSERT(i32 %91)
  %94 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NETRXF_extra_info, align 4
  %97 = and i32 %95, %96
  %98 = call i32 @XNB_ASSERT(i32 %97)
  %99 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NETRXF_data_validated, align 4
  %102 = and i32 %100, %101
  %103 = call i32 @XNB_ASSERT(i32 %102)
  %104 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 2
  %109 = icmp eq i64 %105, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @XNB_ASSERT(i32 %110)
  %112 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %113 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 4
  %120 = call i32 @XNB_ASSERT(i32 %115)
  %121 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @XEN_NETIF_EXTRA_TYPE_GSO, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @XNB_ASSERT(i32 %126)
  %128 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @XEN_NETIF_EXTRA_FLAG_MORE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i32 @XNB_ASSERT(i32 %135)
  %137 = call i32 @safe_m_freem(%struct.mbuf** %10)
  br label %138

138:                                              ; preds = %70, %26
  ret void
}

declare dso_local %struct.mbuf* @m_getm(i32*, i64, i32, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @xnb_mbufc2pkt(%struct.mbuf*, %struct.xnb_pkt*, i64, i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
