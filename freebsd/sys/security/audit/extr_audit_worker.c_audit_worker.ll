; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_worker.c_audit_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_worker.c_audit_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_queue = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.kaudit_record = type { i32 }

@audit_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@audit_q = common dso_local global %struct.kaudit_queue zeroinitializer, align 4
@audit_worker_cv = common dso_local global i32 0, align 4
@k_q = common dso_local global i32 0, align 4
@audit_q_len = common dso_local global i64 0, align 8
@audit_qctrl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@audit_watermark_cv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @audit_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kaudit_queue, align 4
  %4 = alloca %struct.kaudit_record*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 @TAILQ_INIT(%struct.kaudit_queue* %3)
  %7 = call i32 @mtx_lock(i32* @audit_mtx)
  br label %8

8:                                                ; preds = %1, %54
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* @audit_mtx, i32 %9)
  br label %11

11:                                               ; preds = %14, %8
  %12 = call i64 @TAILQ_EMPTY(%struct.kaudit_queue* @audit_q)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @cv_wait(i32* @audit_worker_cv, i32* @audit_mtx)
  br label %11

16:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = call %struct.kaudit_record* @TAILQ_FIRST(%struct.kaudit_queue* @audit_q)
  store %struct.kaudit_record* %18, %struct.kaudit_record** %4, align 8
  %19 = icmp ne %struct.kaudit_record* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %22 = load i32, i32* @k_q, align 4
  %23 = call i32 @TAILQ_REMOVE(%struct.kaudit_queue* @audit_q, %struct.kaudit_record* %21, i32 %22)
  %24 = load i64, i64* @audit_q_len, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* @audit_q_len, align 8
  %26 = load i64, i64* @audit_q_len, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audit_qctrl, i32 0, i32 0), align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %34 = load i32, i32* @k_q, align 4
  %35 = call i32 @TAILQ_INSERT_TAIL(%struct.kaudit_queue* %3, %struct.kaudit_record* %33, i32 %34)
  br label %17

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @cv_broadcast(i32* @audit_watermark_cv)
  br label %41

41:                                               ; preds = %39, %36
  %42 = call i32 @mtx_unlock(i32* @audit_mtx)
  br label %43

43:                                               ; preds = %46, %41
  %44 = call %struct.kaudit_record* @TAILQ_FIRST(%struct.kaudit_queue* %3)
  store %struct.kaudit_record* %44, %struct.kaudit_record** %4, align 8
  %45 = icmp ne %struct.kaudit_record* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %48 = load i32, i32* @k_q, align 4
  %49 = call i32 @TAILQ_REMOVE(%struct.kaudit_queue* %3, %struct.kaudit_record* %47, i32 %48)
  %50 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %51 = call i32 @audit_worker_process_record(%struct.kaudit_record* %50)
  %52 = load %struct.kaudit_record*, %struct.kaudit_record** %4, align 8
  %53 = call i32 @audit_free(%struct.kaudit_record* %52)
  br label %43

54:                                               ; preds = %43
  %55 = call i32 @mtx_lock(i32* @audit_mtx)
  br label %8
}

declare dso_local i32 @TAILQ_INIT(%struct.kaudit_queue*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(%struct.kaudit_queue*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local %struct.kaudit_record* @TAILQ_FIRST(%struct.kaudit_queue*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.kaudit_queue*, %struct.kaudit_record*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.kaudit_queue*, %struct.kaudit_record*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @audit_worker_process_record(%struct.kaudit_record*) #1

declare dso_local i32 @audit_free(%struct.kaudit_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
