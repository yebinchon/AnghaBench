; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c___lio_post_command2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c___lio_post_command2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_instr_queue = type { i32, i32, i32, i32 }
%struct.lio_iq_post_status = type { i32, i32 }

@LIO_IQ_SEND_OK = common dso_local global i32 0, align 4
@LIO_IQ_SEND_FAILED = common dso_local global i32 0, align 4
@LIO_IQ_SEND_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lio_instr_queue*, i32*)* @__lio_post_command2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__lio_post_command2(%struct.lio_instr_queue* %0, i32* %1) #0 {
  %3 = alloca %struct.lio_iq_post_status, align 4
  %4 = alloca %struct.lio_instr_queue*, align 8
  %5 = alloca i32*, align 8
  store %struct.lio_instr_queue* %0, %struct.lio_instr_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* @LIO_IQ_SEND_OK, align 4
  %7 = getelementptr inbounds %struct.lio_iq_post_status, %struct.lio_iq_post_status* %3, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %9 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %8, i32 0, i32 2
  %10 = call i64 @atomic_load_acq_int(i32* %9)
  %11 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %12 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = icmp sge i64 %10, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @LIO_IQ_SEND_FAILED, align 4
  %19 = getelementptr inbounds %struct.lio_iq_post_status, %struct.lio_iq_post_status* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.lio_iq_post_status, %struct.lio_iq_post_status* %3, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %23 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %22, i32 0, i32 2
  %24 = call i64 @atomic_load_acq_int(i32* %23)
  %25 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %26 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = icmp sge i64 %24, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @LIO_IQ_SEND_STOP, align 4
  %33 = getelementptr inbounds %struct.lio_iq_post_status, %struct.lio_iq_post_status* %3, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @__lio_copy_cmd_into_iq(%struct.lio_instr_queue* %35, i32* %36)
  %38 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %39 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.lio_iq_post_status, %struct.lio_iq_post_status* %3, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %43 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %46 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lio_incr_index(i32 %44, i32 1, i32 %47)
  %49 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %50 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %52 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = call i32 (...) @wmb()
  %56 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %57 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %56, i32 0, i32 2
  %58 = call i32 @atomic_add_int(i32* %57, i32 1)
  br label %59

59:                                               ; preds = %34, %17
  %60 = bitcast %struct.lio_iq_post_status* %3 to i64*
  %61 = load i64, i64* %60, align 4
  ret i64 %61
}

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @__lio_copy_cmd_into_iq(%struct.lio_instr_queue*, i32*) #1

declare dso_local i32 @lio_incr_index(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
