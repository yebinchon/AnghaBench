; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_getvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_getvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ksem_getvalue_args = type { i32, i32 }
%struct.file = type { i32, %struct.ksem* }
%struct.ksem = type { i32, i32 }

@CAP_SEM_GETVALUE = common dso_local global i32 0, align 4
@sem_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ksem_getvalue(%struct.thread* %0, %struct.ksem_getvalue_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ksem_getvalue_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.ksem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ksem_getvalue_args* %1, %struct.ksem_getvalue_args** %5, align 8
  %11 = load %struct.ksem_getvalue_args*, %struct.ksem_getvalue_args** %5, align 8
  %12 = getelementptr inbounds %struct.ksem_getvalue_args, %struct.ksem_getvalue_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @AUDIT_ARG_FD(i32 %13)
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = load %struct.ksem_getvalue_args*, %struct.ksem_getvalue_args** %5, align 8
  %17 = getelementptr inbounds %struct.ksem_getvalue_args, %struct.ksem_getvalue_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CAP_SEM_GETVALUE, align 4
  %20 = call i32 @cap_rights_init(i32* %6, i32 %19)
  %21 = call i32 @ksem_get(%struct.thread* %15, i32 %18, i32 %20, %struct.file** %7)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.file*, %struct.file** %7, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 1
  %29 = load %struct.ksem*, %struct.ksem** %28, align 8
  store %struct.ksem* %29, %struct.ksem** %8, align 8
  %30 = call i32 @mtx_lock(i32* @sem_lock)
  %31 = load %struct.ksem*, %struct.ksem** %8, align 8
  %32 = getelementptr inbounds %struct.ksem, %struct.ksem* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.ksem*, %struct.ksem** %8, align 8
  %35 = getelementptr inbounds %struct.ksem, %struct.ksem* %34, i32 0, i32 1
  %36 = call i32 @vfs_timestamp(i32* %35)
  %37 = call i32 @mtx_unlock(i32* @sem_lock)
  %38 = load %struct.file*, %struct.file** %7, align 8
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = call i32 @fdrop(%struct.file* %38, %struct.thread* %39)
  %41 = load %struct.ksem_getvalue_args*, %struct.ksem_getvalue_args** %5, align 8
  %42 = getelementptr inbounds %struct.ksem_getvalue_args, %struct.ksem_getvalue_args* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @copyout(i32* %10, i32 %43, i32 4)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %26, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @ksem_get(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
