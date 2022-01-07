; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncookie_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncookie_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32** }
%struct.in_conninfo = type { i32 }
%struct.syncache_head = type { i32 }
%struct.syncache = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.tcphdr = type { i32, i32 }
%struct.tcpopt = type { i32, i32 }
%struct.socket = type { i32 }
%union.syncookie = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@V_tcp_syncache = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@tcp_sc_msstab = common dso_local global i32* null, align 8
@TCP_MAX_WINSHIFT = common dso_local global i32 0, align 4
@TCP_MAXWIN = common dso_local global i32 0, align 4
@sb_max = common dso_local global i32 0, align 4
@tcp_sc_wstab = common dso_local global i32* null, align 8
@SCF_WINSCALE = common dso_local global i32 0, align 4
@SCF_SACK = common dso_local global i32 0, align 4
@TOF_TS = common dso_local global i32 0, align 4
@SCF_TIMESTAMP = common dso_local global i32 0, align 4
@TOF_SIGNATURE = common dso_local global i32 0, align 4
@SCF_SIGNATURE = common dso_local global i32 0, align 4
@tcps_sc_recvcookie = common dso_local global i32 0, align 4
@IN6P_AUTOFLOWLABEL = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.syncache* (%struct.in_conninfo*, %struct.syncache_head*, %struct.syncache*, %struct.tcphdr*, %struct.tcpopt*, %struct.socket*)* @syncookie_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.syncache* @syncookie_lookup(%struct.in_conninfo* %0, %struct.syncache_head* %1, %struct.syncache* %2, %struct.tcphdr* %3, %struct.tcpopt* %4, %struct.socket* %5) #0 {
  %7 = alloca %struct.syncache*, align 8
  %8 = alloca %struct.in_conninfo*, align 8
  %9 = alloca %struct.syncache_head*, align 8
  %10 = alloca %struct.syncache*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca %struct.tcpopt*, align 8
  %13 = alloca %struct.socket*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.syncookie, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %8, align 8
  store %struct.syncache_head* %1, %struct.syncache_head** %9, align 8
  store %struct.syncache* %2, %struct.syncache** %10, align 8
  store %struct.tcphdr* %3, %struct.tcphdr** %11, align 8
  store %struct.tcpopt* %4, %struct.tcpopt** %12, align 8
  store %struct.socket* %5, %struct.socket** %13, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %22 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %16, align 4
  %25 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %26 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %16, align 4
  %30 = and i32 %29, 255
  %31 = load i32, i32* %16, align 4
  %32 = ashr i32 %31, 24
  %33 = xor i32 %30, %32
  %34 = bitcast %union.syncookie* %20 to i32*
  store i32 %33, i32* %34, align 8
  %35 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @V_tcp_syncache, i32 0, i32 0, i32 0), align 8
  %36 = bitcast %union.syncookie* %20 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32*, i32** %35, i64 %38
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %15, align 8
  %41 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %42 = load i32, i32* %17, align 4
  %43 = bitcast %union.syncookie* %20 to i32*
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load %struct.syncache_head*, %struct.syncache_head** %9, align 8
  %47 = ptrtoint %struct.syncache_head* %46 to i64
  %48 = call i32 @syncookie_mac(%struct.in_conninfo* %41, i32 %42, i32 %44, i32* %45, i64 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %16, align 4
  %50 = and i32 %49, -256
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, -256
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %6
  store %struct.syncache* null, %struct.syncache** %7, align 8
  br label %183

55:                                               ; preds = %6
  %56 = load %struct.syncache*, %struct.syncache** %10, align 8
  %57 = getelementptr inbounds %struct.syncache, %struct.syncache* %56, i32 0, i32 6
  store i32 0, i32* %57, align 8
  %58 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %59 = load %struct.syncache*, %struct.syncache** %10, align 8
  %60 = getelementptr inbounds %struct.syncache, %struct.syncache* %59, i32 0, i32 14
  %61 = call i32 @bcopy(%struct.in_conninfo* %58, i32* %60, i32 4)
  %62 = load %struct.syncache*, %struct.syncache** %10, align 8
  %63 = getelementptr inbounds %struct.syncache, %struct.syncache* %62, i32 0, i32 13
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.syncache*, %struct.syncache** %10, align 8
  %66 = getelementptr inbounds %struct.syncache, %struct.syncache* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.syncache*, %struct.syncache** %10, align 8
  %69 = getelementptr inbounds %struct.syncache, %struct.syncache* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %71 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 128
  switch i32 %73, label %74 [
  ]

74:                                               ; preds = %55
  %75 = load i32*, i32** @tcp_sc_msstab, align 8
  %76 = bitcast %union.syncookie* %20 to %struct.TYPE_6__*
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.syncache*, %struct.syncache** %10, align 8
  %82 = getelementptr inbounds %struct.syncache, %struct.syncache* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %95, %74
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* @TCP_MAXWIN, align 4
  %89 = load i32, i32* %19, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* @sb_max, align 4
  %92 = icmp slt i32 %90, %91
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i1 [ false, %83 ], [ %92, %87 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i32, i32* %19, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %19, align 4
  br label %83

98:                                               ; preds = %93
  %99 = bitcast %union.syncookie* %20 to %struct.TYPE_6__*
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ugt i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load i32, i32* %19, align 4
  %105 = load %struct.syncache*, %struct.syncache** %10, align 8
  %106 = getelementptr inbounds %struct.syncache, %struct.syncache* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** @tcp_sc_wstab, align 8
  %108 = bitcast %union.syncookie* %20 to %struct.TYPE_6__*
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.syncache*, %struct.syncache** %10, align 8
  %114 = getelementptr inbounds %struct.syncache, %struct.syncache* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @SCF_WINSCALE, align 4
  %116 = load %struct.syncache*, %struct.syncache** %10, align 8
  %117 = getelementptr inbounds %struct.syncache, %struct.syncache* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %103, %98
  %121 = load %struct.socket*, %struct.socket** %13, align 8
  %122 = getelementptr inbounds %struct.socket, %struct.socket* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @imax(i32 %124, i32 0)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @TCP_MAXWIN, align 4
  %128 = call i32 @imin(i32 %126, i32 %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load %struct.syncache*, %struct.syncache** %10, align 8
  %131 = getelementptr inbounds %struct.syncache, %struct.syncache* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = bitcast %union.syncookie* %20 to %struct.TYPE_6__*
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %120
  %137 = load i32, i32* @SCF_SACK, align 4
  %138 = load %struct.syncache*, %struct.syncache** %10, align 8
  %139 = getelementptr inbounds %struct.syncache, %struct.syncache* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %120
  %143 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %144 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @TOF_TS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %142
  %150 = load i32, i32* @SCF_TIMESTAMP, align 4
  %151 = load %struct.syncache*, %struct.syncache** %10, align 8
  %152 = getelementptr inbounds %struct.syncache, %struct.syncache* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %156 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.syncache*, %struct.syncache** %10, align 8
  %159 = getelementptr inbounds %struct.syncache, %struct.syncache* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 8
  %160 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %161 = call i32 @tcp_new_ts_offset(%struct.in_conninfo* %160)
  %162 = load %struct.syncache*, %struct.syncache** %10, align 8
  %163 = getelementptr inbounds %struct.syncache, %struct.syncache* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %149, %142
  %165 = load %struct.tcpopt*, %struct.tcpopt** %12, align 8
  %166 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TOF_SIGNATURE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i32, i32* @SCF_SIGNATURE, align 4
  %173 = load %struct.syncache*, %struct.syncache** %10, align 8
  %174 = getelementptr inbounds %struct.syncache, %struct.syncache* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %164
  %178 = load %struct.syncache*, %struct.syncache** %10, align 8
  %179 = getelementptr inbounds %struct.syncache, %struct.syncache* %178, i32 0, i32 5
  store i64 0, i64* %179, align 8
  %180 = load i32, i32* @tcps_sc_recvcookie, align 4
  %181 = call i32 @TCPSTAT_INC(i32 %180)
  %182 = load %struct.syncache*, %struct.syncache** %10, align 8
  store %struct.syncache* %182, %struct.syncache** %7, align 8
  br label %183

183:                                              ; preds = %177, %54
  %184 = load %struct.syncache*, %struct.syncache** %7, align 8
  ret %struct.syncache* %184
}

declare dso_local i32 @syncookie_mac(%struct.in_conninfo*, i32, i32, i32*, i64) #1

declare dso_local i32 @bcopy(%struct.in_conninfo*, i32*, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @tcp_new_ts_offset(%struct.in_conninfo*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
