; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.vi_info* }
%struct.vi_info = type { i64, i32, i32, %struct.port_info* }
%struct.port_info = type { i32, %struct.TYPE_5__, %struct.adapter* }
%struct.TYPE_5__ = type { i32 }
%struct.adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sge_txq* }
%struct.sge_txq = type { i32 }
%struct.mbuf = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ifnet* }

@ENETDOWN = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@CSUM_SND_TAG = common dso_local global i32 0, align 4
@IF_SND_TAG_TYPE_RATE_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @cxgbe_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbe_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.vi_info*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.sge_txq*, align 8
  %10 = alloca [1 x i8*], align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load %struct.vi_info*, %struct.vi_info** %13, align 8
  store %struct.vi_info* %14, %struct.vi_info** %6, align 8
  %15 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %16 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %15, i32 0, i32 3
  %17 = load %struct.port_info*, %struct.port_info** %16, align 8
  store %struct.port_info* %17, %struct.port_info** %7, align 8
  %18 = load %struct.port_info*, %struct.port_info** %7, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 2
  %20 = load %struct.adapter*, %struct.adapter** %19, align 8
  store %struct.adapter* %20, %struct.adapter** %8, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %21)
  %23 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @MPASS(i32 %27)
  %29 = load %struct.port_info*, %struct.port_info** %7, align 8
  %30 = getelementptr inbounds %struct.port_info, %struct.port_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @__predict_false(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = call i32 @m_freem(%struct.mbuf* %38)
  %40 = load i32, i32* @ENETDOWN, align 4
  store i32 %40, i32* %3, align 4
  br label %110

41:                                               ; preds = %2
  %42 = load %struct.adapter*, %struct.adapter** %8, align 8
  %43 = call i32 @parse_pkt(%struct.adapter* %42, %struct.mbuf** %5)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @__predict_false(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %51 = icmp eq %struct.mbuf* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @MPASS(i32 %52)
  %54 = load %struct.port_info*, %struct.port_info** %7, align 8
  %55 = getelementptr inbounds %struct.port_info, %struct.port_info* %54, i32 0, i32 0
  %56 = call i32 @atomic_add_int(i32* %55, i32 1)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  br label %110

58:                                               ; preds = %41
  %59 = load %struct.adapter*, %struct.adapter** %8, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.sge_txq*, %struct.sge_txq** %61, align 8
  %63 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %64 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %62, i64 %65
  store %struct.sge_txq* %66, %struct.sge_txq** %9, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %68 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %67)
  %69 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %58
  %72 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %77 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %80 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = srem i32 %75, %82
  %84 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %85 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %88, i64 %89
  store %struct.sge_txq* %90, %struct.sge_txq** %9, align 8
  br label %91

91:                                               ; preds = %71, %58
  %92 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %93 = bitcast %struct.mbuf* %92 to i8*
  %94 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i64 0, i64 0
  store i8* %93, i8** %94, align 8
  %95 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %96 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i64 0, i64 0
  %99 = call i32 @mp_ring_enqueue(i32 %97, i8** %98, i32 1, i32 4096)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i64 @__predict_false(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %91
  %106 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %107 = call i32 @m_freem(%struct.mbuf* %106)
  br label %108

108:                                              ; preds = %105, %91
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %49, %37
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @parse_pkt(%struct.adapter*, %struct.mbuf**) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @mp_ring_enqueue(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
