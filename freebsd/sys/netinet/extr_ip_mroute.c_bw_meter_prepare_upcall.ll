; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_bw_meter_prepare_upcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_bw_meter_prepare_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bw_upcall = type { i32, %struct.TYPE_9__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.timeval }
%struct.timeval = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.bw_meter = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@V_bw_upcalls_n = common dso_local global i64 0, align 8
@BW_UPCALLS_MAX = common dso_local global i64 0, align 8
@V_bw_upcalls = common dso_local global %struct.bw_upcall* null, align 8
@BW_METER_UNIT_PACKETS = common dso_local global i32 0, align 4
@BW_UPCALL_UNIT_PACKETS = common dso_local global i32 0, align 4
@BW_METER_UNIT_BYTES = common dso_local global i32 0, align 4
@BW_UPCALL_UNIT_BYTES = common dso_local global i32 0, align 4
@BW_METER_GEQ = common dso_local global i32 0, align 4
@BW_UPCALL_GEQ = common dso_local global i32 0, align 4
@BW_METER_LEQ = common dso_local global i32 0, align 4
@BW_UPCALL_LEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bw_meter*, %struct.timeval*)* @bw_meter_prepare_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bw_meter_prepare_upcall(%struct.bw_meter* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.bw_meter*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.bw_upcall*, align 8
  store %struct.bw_meter* %0, %struct.bw_meter** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %7 = call i32 (...) @MFC_LOCK_ASSERT()
  %8 = load %struct.timeval*, %struct.timeval** %4, align 8
  %9 = bitcast %struct.timeval* %5 to i8*
  %10 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %12 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %11, i32 0, i32 4
  %13 = call i32 @BW_TIMEVALDECR(%struct.timeval* %5, i32* %12)
  %14 = load i64, i64* @V_bw_upcalls_n, align 8
  %15 = load i64, i64* @BW_UPCALLS_MAX, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @bw_upcalls_send()
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.bw_upcall*, %struct.bw_upcall** @V_bw_upcalls, align 8
  %21 = load i64, i64* @V_bw_upcalls_n, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @V_bw_upcalls_n, align 8
  %23 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %20, i64 %21
  store %struct.bw_upcall* %23, %struct.bw_upcall** %6, align 8
  %24 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %25 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %30 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %32 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %37 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %39 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %43 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %46 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %50 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %53 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %57 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %60 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = bitcast %struct.timeval* %61 to i8*
  %63 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %65 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %69 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %72 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %76 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %79 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %81 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BW_METER_UNIT_PACKETS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %19
  %87 = load i32, i32* @BW_UPCALL_UNIT_PACKETS, align 4
  %88 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %89 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %19
  %93 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %94 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BW_METER_UNIT_BYTES, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* @BW_UPCALL_UNIT_BYTES, align 4
  %101 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %102 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %92
  %106 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %107 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BW_METER_GEQ, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load i32, i32* @BW_UPCALL_GEQ, align 4
  %114 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %115 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %105
  %119 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %120 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BW_METER_LEQ, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32, i32* @BW_UPCALL_LEQ, align 4
  %127 = load %struct.bw_upcall*, %struct.bw_upcall** %6, align 8
  %128 = getelementptr inbounds %struct.bw_upcall, %struct.bw_upcall* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %118
  ret void
}

declare dso_local i32 @MFC_LOCK_ASSERT(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BW_TIMEVALDECR(%struct.timeval*, i32*) #1

declare dso_local i32 @bw_upcalls_send(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
