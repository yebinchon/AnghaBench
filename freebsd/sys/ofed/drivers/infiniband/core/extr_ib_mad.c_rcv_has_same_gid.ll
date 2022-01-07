; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_rcv_has_same_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_rcv_has_same_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_mad_send_wr_private = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_11__, %struct.TYPE_16__* }
%struct.TYPE_11__ = type { %struct.TYPE_20__*, %struct.TYPE_13__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.ib_mad_hdr }
%struct.ib_mad_hdr = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.ib_ah_attr = type { i32, i32, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }
%union.ib_gid = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_agent_private*, %struct.ib_mad_send_wr_private*, %struct.ib_mad_recv_wc*)* @rcv_has_same_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcv_has_same_gid(%struct.ib_mad_agent_private* %0, %struct.ib_mad_send_wr_private* %1, %struct.ib_mad_recv_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_mad_agent_private*, align 8
  %6 = alloca %struct.ib_mad_send_wr_private*, align 8
  %7 = alloca %struct.ib_mad_recv_wc*, align 8
  %8 = alloca %struct.ib_ah_attr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.ib_gid, align 4
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %5, align 8
  store %struct.ib_mad_send_wr_private* %1, %struct.ib_mad_send_wr_private** %6, align 8
  store %struct.ib_mad_recv_wc* %2, %struct.ib_mad_recv_wc** %7, align 8
  %15 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %16 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.ib_device*, %struct.ib_device** %17, align 8
  store %struct.ib_device* %18, %struct.ib_device** %12, align 8
  %19 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %20 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %6, align 8
  %24 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ib_mad_hdr*
  %28 = call i64 @ib_response_mad(%struct.ib_mad_hdr* %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %30 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = call i64 @ib_response_mad(%struct.ib_mad_hdr* %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %164

39:                                               ; preds = %3
  %40 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %6, align 8
  %41 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ib_query_ah(i32 %43, %struct.ib_ah_attr* %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %164

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IB_AH_GRH, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %57 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IB_WC_GRH, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %55, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %164

69:                                               ; preds = %47
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %132, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %132

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IB_AH_GRH, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %109, label %81

81:                                               ; preds = %75
  %82 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i64 @ib_get_cached_lmc(%struct.ib_device* %82, i64 %83, i64* %14)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %164

87:                                               ; preds = %81
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %94 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %92, %97
  %99 = load i64, i64* %14, align 8
  %100 = trunc i64 %99 to i32
  %101 = shl i32 1, %100
  %102 = sub nsw i32 %101, 1
  %103 = and i32 %98, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %90, %87
  %107 = phi i1 [ true, %87 ], [ %105, %90 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %4, align 4
  br label %164

109:                                              ; preds = %75
  %110 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @ib_get_cached_gid(%struct.ib_device* %110, i64 %111, i32 %114, %union.ib_gid* %11, i32* null)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %164

118:                                              ; preds = %109
  %119 = bitcast %union.ib_gid* %11 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %122 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @memcmp(i32 %120, i32 %127, i32 16)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %4, align 4
  br label %164

132:                                              ; preds = %72, %69
  %133 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IB_AH_GRH, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %142 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %141, i32 0, i32 1
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %140, %145
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %4, align 4
  br label %164

148:                                              ; preds = %132
  %149 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %154 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @memcmp(i32 %152, i32 %159, i32 16)
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %148, %138, %118, %117, %106, %86, %68, %46, %38
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @ib_response_mad(%struct.ib_mad_hdr*) #1

declare dso_local i64 @ib_query_ah(i32, %struct.ib_ah_attr*) #1

declare dso_local i64 @ib_get_cached_lmc(%struct.ib_device*, i64, i64*) #1

declare dso_local i64 @ib_get_cached_gid(%struct.ib_device*, i64, i32, %union.ib_gid*, i32*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
