; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_dispatch_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_dispatch_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.lio_droq = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%union.octeon_rh = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.lio_droq_info = type { i64 }
%struct.lio_recv_info = type { %struct.TYPE_4__*, %struct.__dispatch* }
%struct.TYPE_4__ = type { %union.octeon_rh }
%struct.__dispatch = type { i32, i64, %struct.lio_recv_info* }

@entries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DROQ: No dispatch function (opcode %u/%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, %struct.lio_droq*, %union.octeon_rh*, %struct.lio_droq_info*)* @lio_droq_dispatch_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_droq_dispatch_pkt(%struct.octeon_device* %0, %struct.lio_droq* %1, %union.octeon_rh* %2, %struct.lio_droq_info* %3) #0 {
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.lio_droq*, align 8
  %7 = alloca %union.octeon_rh*, align 8
  %8 = alloca %struct.lio_droq_info*, align 8
  %9 = alloca %struct.lio_recv_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.__dispatch*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store %struct.lio_droq* %1, %struct.lio_droq** %6, align 8
  store %union.octeon_rh* %2, %union.octeon_rh** %7, align 8
  store %struct.lio_droq_info* %3, %struct.lio_droq_info** %8, align 8
  %13 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %14 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %17 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @lio_droq_get_bufcount(i32 %15, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %22 = load %union.octeon_rh*, %union.octeon_rh** %7, align 8
  %23 = bitcast %union.octeon_rh* %22 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %union.octeon_rh*, %union.octeon_rh** %7, align 8
  %28 = bitcast %union.octeon_rh* %27 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 @lio_get_dispatch(%struct.octeon_device* %21, i32 %26, i32 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %4
  %36 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %37 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %40 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.lio_recv_info* @lio_create_recv_info(%struct.octeon_device* %36, %struct.lio_droq* %37, i32 %38, i32 %41)
  store %struct.lio_recv_info* %42, %struct.lio_recv_info** %9, align 8
  %43 = load %struct.lio_recv_info*, %struct.lio_recv_info** %9, align 8
  %44 = icmp ne %struct.lio_recv_info* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %35
  %46 = load %struct.lio_recv_info*, %struct.lio_recv_info** %9, align 8
  %47 = getelementptr inbounds %struct.lio_recv_info, %struct.lio_recv_info* %46, i32 0, i32 1
  %48 = load %struct.__dispatch*, %struct.__dispatch** %47, align 8
  store %struct.__dispatch* %48, %struct.__dispatch** %12, align 8
  %49 = load %struct.lio_recv_info*, %struct.lio_recv_info** %9, align 8
  %50 = load %struct.__dispatch*, %struct.__dispatch** %12, align 8
  %51 = getelementptr inbounds %struct.__dispatch, %struct.__dispatch* %50, i32 0, i32 2
  store %struct.lio_recv_info* %49, %struct.lio_recv_info** %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.__dispatch*, %struct.__dispatch** %12, align 8
  %54 = getelementptr inbounds %struct.__dispatch, %struct.__dispatch* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.lio_recv_info*, %struct.lio_recv_info** %9, align 8
  %56 = getelementptr inbounds %struct.lio_recv_info, %struct.lio_recv_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %union.octeon_rh*, %union.octeon_rh** %7, align 8
  %60 = bitcast %union.octeon_rh* %58 to i8*
  %61 = bitcast %union.octeon_rh* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %63 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %62, i32 0, i32 1
  %64 = load %struct.__dispatch*, %struct.__dispatch** %12, align 8
  %65 = getelementptr inbounds %struct.__dispatch, %struct.__dispatch* %64, i32 0, i32 0
  %66 = load i32, i32* @entries, align 4
  %67 = call i32 @STAILQ_INSERT_TAIL(i32* %63, i32* %65, i32 %66)
  br label %74

68:                                               ; preds = %35
  %69 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %70 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %45
  br label %93

75:                                               ; preds = %4
  %76 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %77 = load %union.octeon_rh*, %union.octeon_rh** %7, align 8
  %78 = bitcast %union.octeon_rh* %77 to %struct.TYPE_5__*
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %union.octeon_rh*, %union.octeon_rh** %7, align 8
  %83 = bitcast %union.octeon_rh* %82 to %struct.TYPE_5__*
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @lio_dev_err(%struct.octeon_device* %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %89 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %75, %74
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i32 @lio_droq_get_bufcount(i32, i32) #1

declare dso_local i64 @lio_get_dispatch(%struct.octeon_device*, i32, i32) #1

declare dso_local %struct.lio_recv_info* @lio_create_recv_info(%struct.octeon_device*, %struct.lio_droq*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
