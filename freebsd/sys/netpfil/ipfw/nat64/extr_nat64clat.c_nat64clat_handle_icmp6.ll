; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat.c_nat64clat_handle_icmp6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat.c_nat64clat_handle_icmp6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.nat64clat_cfg = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, %struct.nat64_counters }
%struct.nat64_counters = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mbuf = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.pfloghdr = type { i32 }
%struct.ip6_hdr = type { i32 }
%struct.icmp6_hdr = type { i32 }

@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@dropped = common dso_local global i32 0, align 4
@NAT64MFREE = common dso_local global i32 0, align 4
@ICMP_MINLEN = common dso_local global i64 0, align 8
@nomem = common dso_local global i32 0, align 4
@NAT64RETURN = common dso_local global i32 0, align 4
@NAT64_LOG = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.nat64clat_cfg*, %struct.mbuf*)* @nat64clat_handle_icmp6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64clat_handle_icmp6(%struct.ip_fw_chain* %0, %struct.nat64clat_cfg* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.nat64clat_cfg*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.pfloghdr, align 4
  %9 = alloca %struct.pfloghdr*, align 8
  %10 = alloca %struct.nat64_counters*, align 8
  %11 = alloca %struct.ip6_hdr*, align 8
  %12 = alloca %struct.icmp6_hdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.nat64clat_cfg* %1, %struct.nat64clat_cfg** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %6, align 8
  %17 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store %struct.nat64_counters* %18, %struct.nat64_counters** %10, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %20 = call i32 @nat64_getlasthdr(%struct.mbuf* %19, i32* %14)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.nat64_counters*, %struct.nat64_counters** %10, align 8
  %26 = load i32, i32* @dropped, align 4
  %27 = call i32 @NAT64STAT_INC(%struct.nat64_counters* %25, i32 %26)
  %28 = load i32, i32* @NAT64MFREE, align 4
  store i32 %28, i32* %4, align 4
  br label %133

29:                                               ; preds = %3
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i8* @mtodo(%struct.mbuf* %30, i32 %31)
  %33 = bitcast i8* %32 to %struct.icmp6_hdr*
  store %struct.icmp6_hdr* %33, %struct.icmp6_hdr** %12, align 8
  %34 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %12, align 8
  %35 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %38 [
    i32 131, label %37
    i32 130, label %37
    i32 128, label %37
    i32 129, label %37
  ]

37:                                               ; preds = %29, %29, %29, %29
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.nat64_counters*, %struct.nat64_counters** %10, align 8
  %40 = load i32, i32* @dropped, align 4
  %41 = call i32 @NAT64STAT_INC(%struct.nat64_counters* %39, i32 %40)
  %42 = load i32, i32* @NAT64MFREE, align 4
  store i32 %42, i32* %4, align 4
  br label %133

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 4
  %55 = load i64, i64* @ICMP_MINLEN, align 8
  %56 = add i64 %54, %55
  %57 = icmp ult i64 %51, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.nat64_counters*, %struct.nat64_counters** %10, align 8
  %60 = load i32, i32* @dropped, align 4
  %61 = call i32 @NAT64STAT_INC(%struct.nat64_counters* %59, i32 %60)
  %62 = load i32, i32* @NAT64MFREE, align 4
  store i32 %62, i32* %4, align 4
  br label %133

63:                                               ; preds = %43
  %64 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 4
  %70 = load i64, i64* @ICMP_MINLEN, align 8
  %71 = add i64 %69, %70
  %72 = icmp ult i64 %66, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 4
  %78 = load i64, i64* @ICMP_MINLEN, align 8
  %79 = add i64 %77, %78
  %80 = call %struct.mbuf* @m_pullup(%struct.mbuf* %74, i64 %79)
  store %struct.mbuf* %80, %struct.mbuf** %7, align 8
  br label %81

81:                                               ; preds = %73, %63
  %82 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %83 = icmp eq %struct.mbuf* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.nat64_counters*, %struct.nat64_counters** %10, align 8
  %86 = load i32, i32* @nomem, align 4
  %87 = call i32 @NAT64STAT_INC(%struct.nat64_counters* %85, i32 %86)
  %88 = load i32, i32* @NAT64RETURN, align 4
  store i32 %88, i32* %4, align 4
  br label %133

89:                                               ; preds = %81
  %90 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i8* @mtodo(%struct.mbuf* %90, i32 %91)
  %93 = bitcast i8* %92 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %93, %struct.ip6_hdr** %11, align 8
  %94 = load %struct.ip6_hdr*, %struct.ip6_hdr** %11, align 8
  %95 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %94, i32 0, i32 0
  %96 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %6, align 8
  %97 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @nat64_extract_ip4(i32* %95, i32 %99)
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load %struct.nat64_counters*, %struct.nat64_counters** %10, align 8
  %105 = load i32, i32* @dropped, align 4
  %106 = call i32 @NAT64STAT_INC(%struct.nat64_counters* %104, i32 %105)
  %107 = load i32, i32* @NAT64MFREE, align 4
  store i32 %107, i32* %4, align 4
  br label %133

108:                                              ; preds = %89
  %109 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %6, align 8
  %110 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NAT64_LOG, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  store %struct.pfloghdr* %8, %struct.pfloghdr** %9, align 8
  %117 = load %struct.pfloghdr*, %struct.pfloghdr** %9, align 8
  %118 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %119 = load i32, i32* @AF_INET6, align 4
  %120 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %6, align 8
  %121 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @nat64clat_log(%struct.pfloghdr* %117, %struct.mbuf* %118, i32 %119, i32 %123)
  br label %126

125:                                              ; preds = %108
  store %struct.pfloghdr* null, %struct.pfloghdr** %9, align 8
  br label %126

126:                                              ; preds = %125, %116
  %127 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %6, align 8
  %130 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %129, i32 0, i32 0
  %131 = load %struct.pfloghdr*, %struct.pfloghdr** %9, align 8
  %132 = call i32 @nat64_handle_icmp6(%struct.mbuf* %127, i32 0, i64 %128, i32 0, %struct.TYPE_6__* %130, %struct.pfloghdr* %131)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %126, %103, %84, %58, %38, %24
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @nat64_getlasthdr(%struct.mbuf*, i32*) #1

declare dso_local i32 @NAT64STAT_INC(%struct.nat64_counters*, i32) #1

declare dso_local i8* @mtodo(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i64) #1

declare dso_local i64 @nat64_extract_ip4(i32*, i32) #1

declare dso_local i32 @nat64clat_log(%struct.pfloghdr*, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @nat64_handle_icmp6(%struct.mbuf*, i32, i64, i32, %struct.TYPE_6__*, %struct.pfloghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
