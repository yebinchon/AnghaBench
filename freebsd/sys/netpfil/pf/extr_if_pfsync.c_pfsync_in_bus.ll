; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pfsync_pkt = type { i32 }
%struct.mbuf = type { i64 }
%struct.pfsync_bus = type { i32, i32 }

@V_pfsyncif = common dso_local global %struct.pfsync_softc* null, align 8
@V_pfsyncstats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@hz = common dso_local global i32 0, align 4
@V_pf_limits = common dso_local global %struct.TYPE_8__* null, align 8
@PF_LIMIT_STATES = common dso_local global i64 0, align 8
@PFSYNC_MINPKT = common dso_local global i32 0, align 4
@pfsync_bulk_fail = common dso_local global i32 0, align 4
@V_pf_status = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@PF_DEBUG_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pfsync: received bulk update start\0A\00", align 1
@time_uptime = common dso_local global i64 0, align 8
@PFSYNCF_OK = common dso_local global i32 0, align 4
@V_pfsync_carp_adj = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"pfsync bulk done\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"pfsync: received valid bulk update end\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"pfsync: received invalid bulk update end: bad timestamp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfsync_pkt*, %struct.mbuf*, i32, i32)* @pfsync_in_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsync_in_bus(%struct.pfsync_pkt* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfsync_pkt*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfsync_softc*, align 8
  %11 = alloca %struct.pfsync_bus*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pfsync_pkt* %0, %struct.pfsync_pkt** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pfsync_softc*, %struct.pfsync_softc** @V_pfsyncif, align 8
  store %struct.pfsync_softc* %15, %struct.pfsync_softc** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %21 = call i32 @PFSYNC_BLOCK(%struct.pfsync_softc* %20)
  %22 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %23 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %28 = call i32 @PFSYNC_BUNLOCK(%struct.pfsync_softc* %27)
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %140

30:                                               ; preds = %4
  %31 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call %struct.mbuf* @m_pulldown(%struct.mbuf* %31, i32 %32, i32 %33, i32* %14)
  store %struct.mbuf* %34, %struct.mbuf** %12, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %36 = icmp eq %struct.mbuf* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %39 = call i32 @PFSYNC_BUNLOCK(%struct.pfsync_softc* %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_pfsyncstats, i32 0, i32 0), align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_pfsyncstats, i32 0, i32 0), align 4
  store i32 -1, i32* %5, align 4
  br label %140

42:                                               ; preds = %30
  %43 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = inttoptr i64 %48 to %struct.pfsync_bus*
  store %struct.pfsync_bus* %49, %struct.pfsync_bus** %11, align 8
  %50 = load %struct.pfsync_bus*, %struct.pfsync_bus** %11, align 8
  %51 = getelementptr inbounds %struct.pfsync_bus, %struct.pfsync_bus* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %136 [
    i32 128, label %53
    i32 129, label %86
  ]

53:                                               ; preds = %42
  %54 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %55 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %54, i32 0, i32 2
  %56 = load i32, i32* @hz, align 4
  %57 = mul nsw i32 4, %56
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @V_pf_limits, align 8
  %60 = load i64, i64* @PF_LIMIT_STATES, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %66 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PFSYNC_MINPKT, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %72, 4
  %74 = udiv i64 %64, %73
  %75 = add i64 %58, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @pfsync_bulk_fail, align 4
  %78 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %79 = call i32 @callout_reset(i32* %55, i32 %76, i32 %77, %struct.pfsync_softc* %78)
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_pf_status, i32 0, i32 0), align 4
  %81 = load i32, i32* @PF_DEBUG_MISC, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %53
  %84 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %53
  br label %136

86:                                               ; preds = %42
  %87 = load i64, i64* @time_uptime, align 8
  %88 = load %struct.pfsync_bus*, %struct.pfsync_bus** %11, align 8
  %89 = getelementptr inbounds %struct.pfsync_bus, %struct.pfsync_bus* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ntohl(i32 %90)
  %92 = sub nsw i64 %87, %91
  %93 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %94 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %92, %95
  br i1 %96, label %97, label %128

97:                                               ; preds = %86
  %98 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %99 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %101 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %100, i32 0, i32 3
  store i32 0, i32* %101, align 8
  %102 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %103 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %102, i32 0, i32 2
  %104 = call i32 @callout_stop(i32* %103)
  %105 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %106 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PFSYNCF_OK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %97
  br i1 true, label %112, label %116

112:                                              ; preds = %111
  %113 = load i32, i32* @V_pfsync_carp_adj, align 4
  %114 = sub nsw i32 0, %113
  %115 = call i32 @carp_demote_adj_p(i32 %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %111, %97
  %117 = load i32, i32* @PFSYNCF_OK, align 4
  %118 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %119 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_pf_status, i32 0, i32 0), align 4
  %123 = load i32, i32* @PF_DEBUG_MISC, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %116
  br label %135

128:                                              ; preds = %86
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @V_pf_status, i32 0, i32 0), align 4
  %130 = load i32, i32* @PF_DEBUG_MISC, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %128
  br label %135

135:                                              ; preds = %134, %127
  br label %136

136:                                              ; preds = %42, %135, %85
  %137 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  %138 = call i32 @PFSYNC_BUNLOCK(%struct.pfsync_softc* %137)
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %37, %26
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @PFSYNC_BLOCK(%struct.pfsync_softc*) #1

declare dso_local i32 @PFSYNC_BUNLOCK(%struct.pfsync_softc*) #1

declare dso_local %struct.mbuf* @m_pulldown(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.pfsync_softc*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @carp_demote_adj_p(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
