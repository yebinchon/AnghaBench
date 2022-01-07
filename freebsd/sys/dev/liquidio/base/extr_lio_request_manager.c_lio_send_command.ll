; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_send_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.lio_instr_queue** }
%struct.lio_instr_queue = type { i32 }
%struct.lio_iq_post_status = type { i64, i32 }

@LIO_IQ_SEND_FAILED = common dso_local global i64 0, align 8
@bytes_sent = common dso_local global i32 0, align 4
@instr_posted = common dso_local global i32 0, align 4
@LIO_IQ_SEND_STOP = common dso_local global i64 0, align 8
@instr_dropped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_send_command(%struct.octeon_device* %0, i64 %1, i64 %2, i8* %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.lio_iq_post_status, align 8
  %16 = alloca %struct.lio_instr_queue*, align 8
  %17 = alloca %struct.lio_iq_post_status, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 0
  %20 = load %struct.lio_instr_queue**, %struct.lio_instr_queue*** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.lio_instr_queue*, %struct.lio_instr_queue** %20, i64 %21
  %23 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %22, align 8
  store %struct.lio_instr_queue* %23, %struct.lio_instr_queue** %16, align 8
  %24 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %16, align 8
  %25 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %24, i32 0, i32 0
  %26 = call i32 @mtx_lock(i32* %25)
  %27 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %16, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call { i64, i32 } @__lio_post_command2(%struct.lio_instr_queue* %27, i8* %28)
  %30 = bitcast %struct.lio_iq_post_status* %17 to { i64, i32 }*
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i32 } %29, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i32 } %29, 1
  store i32 %34, i32* %33, align 8
  %35 = bitcast %struct.lio_iq_post_status* %15 to i8*
  %36 = bitcast %struct.lio_iq_post_status* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = getelementptr inbounds %struct.lio_iq_post_status, %struct.lio_iq_post_status* %15, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LIO_IQ_SEND_FAILED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %7
  %42 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %16, align 8
  %43 = getelementptr inbounds %struct.lio_iq_post_status, %struct.lio_iq_post_status* %15, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @__lio_add_to_request_list(%struct.lio_instr_queue* %42, i32 %44, i8* %45, i64 %46)
  %48 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* @bytes_sent, align 4
  %51 = load i64, i64* %13, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @LIO_INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device* %48, i64 %49, i32 %50, i32 %52)
  %54 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* @instr_posted, align 4
  %57 = call i32 @LIO_INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device* %54, i64 %55, i32 %56, i32 1)
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.lio_iq_post_status, %struct.lio_iq_post_status* %15, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LIO_IQ_SEND_STOP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60, %41
  %66 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %67 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %16, align 8
  %68 = call i32 @lio_ring_doorbell(%struct.octeon_device* %66, %struct.lio_instr_queue* %67)
  br label %69

69:                                               ; preds = %65, %60
  br label %75

70:                                               ; preds = %7
  %71 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* @instr_dropped, align 4
  %74 = call i32 @LIO_INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device* %71, i64 %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %70, %69
  %76 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %16, align 8
  %77 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %76, i32 0, i32 0
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = getelementptr inbounds %struct.lio_iq_post_status, %struct.lio_iq_post_status* %15, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  ret i32 %81
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local { i64, i32 } @__lio_post_command2(%struct.lio_instr_queue*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__lio_add_to_request_list(%struct.lio_instr_queue*, i32, i8*, i64) #1

declare dso_local i32 @LIO_INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device*, i64, i32, i32) #1

declare dso_local i32 @lio_ring_doorbell(%struct.octeon_device*, %struct.lio_instr_queue*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
