; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_classify_flow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_classify_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.fq_codel_si = type { i32 }
%struct.ip = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.ip6_hdr = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@HASHINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32, %struct.fq_codel_si*)* @fq_codel_classify_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_codel_classify_flow(%struct.mbuf* %0, i32 %1, %struct.fq_codel_si* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fq_codel_si*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.udphdr*, align 8
  %11 = alloca [41 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip6_hdr*, align 8
  %14 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fq_codel_si* %2, %struct.fq_codel_si** %7, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %17 = call %struct.TYPE_10__* @dn_tag_get(%struct.mbuf* %16)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @mtodo(%struct.mbuf* %15, i32 %19)
  %21 = inttoptr i64 %20 to %struct.ip*
  store %struct.ip* %21, %struct.ip** %8, align 8
  %22 = load %struct.ip*, %struct.ip** %8, align 8
  %23 = getelementptr inbounds %struct.ip, %struct.ip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 6
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %3
  %30 = load %struct.ip*, %struct.ip** %8, align 8
  %31 = bitcast %struct.ip* %30 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %31, %struct.ip6_hdr** %13, align 8
  %32 = load %struct.ip6_hdr*, %struct.ip6_hdr** %13, align 8
  %33 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  %36 = load %struct.fq_codel_si*, %struct.fq_codel_si** %7, align 8
  %37 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 5
  %41 = load %struct.ip6_hdr*, %struct.ip6_hdr** %13, align 8
  %42 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32* %40, i32 %44, i32 16)
  %46 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 21
  %47 = load %struct.ip6_hdr*, %struct.ip6_hdr** %13, align 8
  %48 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i32* %46, i32 %50, i32 16)
  %52 = load %struct.ip6_hdr*, %struct.ip6_hdr** %13, align 8
  %53 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %79 [
    i32 129, label %55
    i32 128, label %67
  ]

55:                                               ; preds = %29
  %56 = load %struct.ip6_hdr*, %struct.ip6_hdr** %13, align 8
  %57 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %56, i64 1
  %58 = bitcast %struct.ip6_hdr* %57 to %struct.tcphdr*
  store %struct.tcphdr* %58, %struct.tcphdr** %9, align 8
  %59 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %60 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 37
  store i32 %61, i32* %62, align 4
  %63 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %64 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 39
  store i32 %65, i32* %66, align 4
  br label %82

67:                                               ; preds = %29
  %68 = load %struct.ip6_hdr*, %struct.ip6_hdr** %13, align 8
  %69 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %68, i64 1
  %70 = bitcast %struct.ip6_hdr* %69 to %struct.udphdr*
  store %struct.udphdr* %70, %struct.udphdr** %10, align 8
  %71 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %72 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 37
  store i32 %73, i32* %74, align 4
  %75 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %76 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 39
  store i32 %77, i32* %78, align 4
  br label %82

79:                                               ; preds = %29
  %80 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 37
  %81 = call i32 @memset(i32* %80, i32 0, i32 4)
  br label %82

82:                                               ; preds = %79, %67, %55
  %83 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 0
  %84 = load i32, i32* @HASHINIT, align 4
  %85 = call i32 @jenkins_hash(i32* %83, i32 41, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = srem i32 %85, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %145

89:                                               ; preds = %3
  %90 = load %struct.ip*, %struct.ip** %8, align 8
  %91 = getelementptr inbounds %struct.ip, %struct.ip* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 0
  store i32 %92, i32* %93, align 16
  %94 = load %struct.fq_codel_si*, %struct.fq_codel_si** %7, align 8
  %95 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 1
  store i32 %96, i32* %97, align 4
  %98 = load %struct.ip*, %struct.ip** %8, align 8
  %99 = getelementptr inbounds %struct.ip, %struct.ip* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 5
  store i32 %101, i32* %102, align 4
  %103 = load %struct.ip*, %struct.ip** %8, align 8
  %104 = getelementptr inbounds %struct.ip, %struct.ip* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 9
  store i32 %106, i32* %107, align 4
  %108 = load %struct.ip*, %struct.ip** %8, align 8
  %109 = getelementptr inbounds %struct.ip, %struct.ip* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %135 [
    i32 129, label %111
    i32 128, label %123
  ]

111:                                              ; preds = %89
  %112 = load %struct.ip*, %struct.ip** %8, align 8
  %113 = getelementptr inbounds %struct.ip, %struct.ip* %112, i64 1
  %114 = bitcast %struct.ip* %113 to %struct.tcphdr*
  store %struct.tcphdr* %114, %struct.tcphdr** %9, align 8
  %115 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 13
  store i32 %117, i32* %118, align 4
  %119 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %120 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 15
  store i32 %121, i32* %122, align 4
  br label %138

123:                                              ; preds = %89
  %124 = load %struct.ip*, %struct.ip** %8, align 8
  %125 = getelementptr inbounds %struct.ip, %struct.ip* %124, i64 1
  %126 = bitcast %struct.ip* %125 to %struct.udphdr*
  store %struct.udphdr* %126, %struct.udphdr** %10, align 8
  %127 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %128 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 13
  store i32 %129, i32* %130, align 4
  %131 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %132 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 15
  store i32 %133, i32* %134, align 4
  br label %138

135:                                              ; preds = %89
  %136 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 13
  %137 = call i32 @memset(i32* %136, i32 0, i32 4)
  br label %138

138:                                              ; preds = %135, %123, %111
  %139 = getelementptr inbounds [41 x i32], [41 x i32]* %11, i64 0, i64 0
  %140 = load i32, i32* @HASHINIT, align 4
  %141 = call i32 @jenkins_hash(i32* %139, i32 17, i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = srem i32 %141, %142
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %138, %82
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @mtodo(%struct.mbuf*, i32) #1

declare dso_local %struct.TYPE_10__* @dn_tag_get(%struct.mbuf*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @jenkins_hash(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
