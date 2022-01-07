; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ksem_post_args = type { i32 }
%struct.file = type { i32, %struct.ksem* }
%struct.ksem = type { i64, i64, i32, i32 }

@CAP_SEM_POST = common dso_local global i32 0, align 4
@sem_lock = common dso_local global i32 0, align 4
@SEM_VALUE_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ksem_post(%struct.thread* %0, %struct.ksem_post_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ksem_post_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.ksem*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ksem_post_args* %1, %struct.ksem_post_args** %5, align 8
  %10 = load %struct.ksem_post_args*, %struct.ksem_post_args** %5, align 8
  %11 = getelementptr inbounds %struct.ksem_post_args, %struct.ksem_post_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @AUDIT_ARG_FD(i32 %12)
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = load %struct.ksem_post_args*, %struct.ksem_post_args** %5, align 8
  %16 = getelementptr inbounds %struct.ksem_post_args, %struct.ksem_post_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CAP_SEM_POST, align 4
  %19 = call i32 @cap_rights_init(i32* %6, i32 %18)
  %20 = call i32 @ksem_get(%struct.thread* %14, i32 %17, i32 %19, %struct.file** %7)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 1
  %28 = load %struct.ksem*, %struct.ksem** %27, align 8
  store %struct.ksem* %28, %struct.ksem** %8, align 8
  %29 = call i32 @mtx_lock(i32* @sem_lock)
  %30 = load %struct.ksem*, %struct.ksem** %8, align 8
  %31 = getelementptr inbounds %struct.ksem, %struct.ksem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SEM_VALUE_MAX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @EOVERFLOW, align 4
  store i32 %36, i32* %9, align 4
  br label %54

37:                                               ; preds = %25
  %38 = load %struct.ksem*, %struct.ksem** %8, align 8
  %39 = getelementptr inbounds %struct.ksem, %struct.ksem* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.ksem*, %struct.ksem** %8, align 8
  %43 = getelementptr inbounds %struct.ksem, %struct.ksem* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.ksem*, %struct.ksem** %8, align 8
  %48 = getelementptr inbounds %struct.ksem, %struct.ksem* %47, i32 0, i32 3
  %49 = call i32 @cv_signal(i32* %48)
  br label %50

50:                                               ; preds = %46, %37
  store i32 0, i32* %9, align 4
  %51 = load %struct.ksem*, %struct.ksem** %8, align 8
  %52 = getelementptr inbounds %struct.ksem, %struct.ksem* %51, i32 0, i32 2
  %53 = call i32 @vfs_timestamp(i32* %52)
  br label %54

54:                                               ; preds = %50, %35
  %55 = call i32 @mtx_unlock(i32* @sem_lock)
  %56 = load %struct.file*, %struct.file** %7, align 8
  %57 = load %struct.thread*, %struct.thread** %4, align 8
  %58 = call i32 @fdrop(%struct.file* %56, %struct.thread* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %23
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @ksem_get(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
