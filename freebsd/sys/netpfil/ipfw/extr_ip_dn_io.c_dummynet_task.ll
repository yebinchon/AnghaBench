; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_dummynet_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_dummynet_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_5__, %struct.timeval }
%struct.TYPE_5__ = type { i64 }
%struct.timeval = type { i32, i32 }
%struct.mq = type { i32*, i32*, i32* }
%struct.dn_id = type { i64 }
%struct.vnet = type { i32 }
%struct.TYPE_7__ = type { %struct.dn_id*, i32 }
%struct.dn_sch_inst = type { i32 }
%struct.delay_line = type { i32 }

@tick_lost = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@tick_last = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@tick_delta = common dso_local global i64 0, align 8
@tick_delta_sum = common dso_local global i64 0, align 8
@tick = common dso_local global i64 0, align 8
@tick_diff = common dso_local global i64 0, align 8
@tick_adjustment = common dso_local global i32 0, align 4
@DN_SCH_I = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dummynet_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.mq, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_id*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %struct.mq* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.vnet*
  %12 = call i32 @CURVNET_SET(%struct.vnet* %11)
  %13 = call i32 (...) @DN_BH_WLOCK()
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* @tick_lost, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* @tick_lost, align 4
  %18 = call i32 @getmicrouptime(%struct.timeval* %5)
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 4, i32 0), align 8
  %22 = sub nsw i32 %20, %21
  %23 = mul nsw i32 %22, 1000000
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 4, i32 1), align 4
  %27 = sub nsw i32 %25, %26
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* @tick_last, align 4
  %29 = load i32, i32* @tick_last, align 4
  %30 = load i32, i32* @hz, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sub nsw i32 %31, 1000000
  %33 = load i32, i32* @hz, align 4
  %34 = sdiv i32 %32, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* @tick_delta, align 8
  %36 = load i64, i64* @tick_delta, align 8
  %37 = load i64, i64* @tick_delta_sum, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* @tick_delta_sum, align 8
  %39 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 4) to i8*), i8* align 4 %39, i64 8, i1 false)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 2), align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 2), align 8
  %42 = load i64, i64* @tick_delta_sum, align 8
  %43 = load i64, i64* @tick, align 8
  %44 = sub nsw i64 %42, %43
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %2
  %47 = load i64, i64* @tick_delta_sum, align 8
  %48 = load i64, i64* @tick, align 8
  %49 = sdiv i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 2), align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 2), align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @tick_diff, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* @tick_diff, align 8
  %59 = load i64, i64* @tick, align 8
  %60 = load i64, i64* @tick_delta_sum, align 8
  %61 = srem i64 %60, %59
  store i64 %61, i64* @tick_delta_sum, align 8
  %62 = load i32, i32* @tick_adjustment, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @tick_adjustment, align 4
  br label %80

64:                                               ; preds = %2
  %65 = load i64, i64* @tick_delta_sum, align 8
  %66 = load i64, i64* @tick, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 2), align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 2), align 8
  %72 = load i64, i64* @tick_diff, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* @tick_diff, align 8
  %74 = load i64, i64* @tick, align 8
  %75 = load i64, i64* @tick_delta_sum, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* @tick_delta_sum, align 8
  %77 = load i32, i32* @tick_adjustment, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @tick_adjustment, align 4
  br label %79

79:                                               ; preds = %69, %64
  br label %80

80:                                               ; preds = %79, %46
  br label %81

81:                                               ; preds = %112, %80
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 3, i32 0), align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 2), align 8
  %86 = call %struct.TYPE_7__* @HEAP_TOP(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 3))
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @DN_KEY_LT(i64 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84, %81
  br label %113

92:                                               ; preds = %84
  %93 = call %struct.TYPE_7__* @HEAP_TOP(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 3))
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.dn_id*, %struct.dn_id** %94, align 8
  store %struct.dn_id* %95, %struct.dn_id** %8, align 8
  %96 = call i32 @heap_extract(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 3), i32* null)
  %97 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %98 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DN_SCH_I, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %104 = bitcast %struct.dn_id* %103 to %struct.dn_sch_inst*
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 2), align 8
  %106 = call i32 @serve_sched(%struct.mq* %6, %struct.dn_sch_inst* %104, i64 %105)
  br label %112

107:                                              ; preds = %92
  %108 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %109 = bitcast %struct.dn_id* %108 to %struct.delay_line*
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 2), align 8
  %111 = call i32 @transmit_event(%struct.mq* %6, %struct.delay_line* %109, i64 %110)
  br label %112

112:                                              ; preds = %107, %102
  br label %81

113:                                              ; preds = %91
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 0), align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 1), align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 1), align 8
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 0), align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 1), align 8
  %122 = call i32 (...) @dn_drain_scheduler()
  %123 = call i32 (...) @dn_drain_queue()
  br label %124

124:                                              ; preds = %121, %116, %113
  %125 = call i32 (...) @dn_reschedule()
  %126 = call i32 (...) @DN_BH_WUNLOCK()
  %127 = getelementptr inbounds %struct.mq, %struct.mq* %6, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.mq, %struct.mq* %6, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @dummynet_send(i32* %132)
  br label %134

134:                                              ; preds = %130, %124
  %135 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CURVNET_SET(%struct.vnet*) #2

declare dso_local i32 @DN_BH_WLOCK(...) #2

declare dso_local i32 @getmicrouptime(%struct.timeval*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @DN_KEY_LT(i64, i32) #2

declare dso_local %struct.TYPE_7__* @HEAP_TOP(%struct.TYPE_5__*) #2

declare dso_local i32 @heap_extract(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @serve_sched(%struct.mq*, %struct.dn_sch_inst*, i64) #2

declare dso_local i32 @transmit_event(%struct.mq*, %struct.delay_line*, i64) #2

declare dso_local i32 @dn_drain_scheduler(...) #2

declare dso_local i32 @dn_drain_queue(...) #2

declare dso_local i32 @dn_reschedule(...) #2

declare dso_local i32 @DN_BH_WUNLOCK(...) #2

declare dso_local i32 @dummynet_send(i32*) #2

declare dso_local i32 @CURVNET_RESTORE(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
