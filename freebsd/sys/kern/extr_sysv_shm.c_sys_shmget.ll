; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_sys_shmget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_sys_shmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.shmget_args = type { i32, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4
@IPC_PRIVATE = common dso_local global i64 0, align 8
@IPC_CREAT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_shmget(%struct.thread* %0, %struct.shmget_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.shmget_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.shmget_args* %1, %struct.shmget_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32* @shm_find_prison(%struct.TYPE_2__* %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOSYS, align 4
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.shmget_args*, %struct.shmget_args** %5, align 8
  %18 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ACCESSPERMS, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = call i32 (...) @SYSVSHM_LOCK()
  %23 = load %struct.shmget_args*, %struct.shmget_args** %5, align 8
  %24 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPC_PRIVATE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = load %struct.shmget_args*, %struct.shmget_args** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @shmget_allocate_segment(%struct.thread* %29, %struct.shmget_args* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %67

33:                                               ; preds = %16
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.shmget_args*, %struct.shmget_args** %5, align 8
  %40 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @shm_find_segment_by_key(i32 %38, i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = load %struct.shmget_args*, %struct.shmget_args** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @shmget_existing(%struct.thread* %46, %struct.shmget_args* %47, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %66

51:                                               ; preds = %33
  %52 = load %struct.shmget_args*, %struct.shmget_args** %5, align 8
  %53 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IPC_CREAT, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOENT, align 4
  store i32 %59, i32* %8, align 4
  br label %65

60:                                               ; preds = %51
  %61 = load %struct.thread*, %struct.thread** %4, align 8
  %62 = load %struct.shmget_args*, %struct.shmget_args** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @shmget_allocate_segment(%struct.thread* %61, %struct.shmget_args* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %60, %58
  br label %66

66:                                               ; preds = %65, %45
  br label %67

67:                                               ; preds = %66, %28
  %68 = call i32 (...) @SYSVSHM_UNLOCK()
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32* @shm_find_prison(%struct.TYPE_2__*) #1

declare dso_local i32 @SYSVSHM_LOCK(...) #1

declare dso_local i32 @shmget_allocate_segment(%struct.thread*, %struct.shmget_args*, i32) #1

declare dso_local i32 @shm_find_segment_by_key(i32, i64) #1

declare dso_local i32 @shmget_existing(%struct.thread*, %struct.shmget_args*, i32, i32) #1

declare dso_local i32 @SYSVSHM_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
