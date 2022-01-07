; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksem = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucred = type { i32, i32 }

@ksem_count_lock = common dso_local global i32 0, align 4
@nsems = common dso_local global i64 0, align 8
@CTL_P1003_1B_SEM_NSEMS_MAX = common dso_local global i32 0, align 4
@ksem_dead = common dso_local global i64 0, align 8
@M_KSEM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ksem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ksem* (%struct.ucred*, i32, i32)* @ksem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ksem* @ksem_alloc(%struct.ucred* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksem*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ksem*, align 8
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @mtx_lock(i32* @ksem_count_lock)
  %10 = load i64, i64* @nsems, align 8
  %11 = load i32, i32* @CTL_P1003_1B_SEM_NSEMS_MAX, align 4
  %12 = call i64 @p31b_getcfg(i32 %11)
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @ksem_dead, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = call i32 @mtx_unlock(i32* @ksem_count_lock)
  store %struct.ksem* null, %struct.ksem** %4, align 8
  br label %63

19:                                               ; preds = %14
  %20 = load i64, i64* @nsems, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @nsems, align 8
  %22 = call i32 @mtx_unlock(i32* @ksem_count_lock)
  %23 = load i32, i32* @M_KSEM, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.ksem* @malloc(i32 40, i32 %23, i32 %26)
  store %struct.ksem* %27, %struct.ksem** %8, align 8
  %28 = load %struct.ucred*, %struct.ucred** %5, align 8
  %29 = getelementptr inbounds %struct.ucred, %struct.ucred* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ksem*, %struct.ksem** %8, align 8
  %32 = getelementptr inbounds %struct.ksem, %struct.ksem* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ucred*, %struct.ucred** %5, align 8
  %34 = getelementptr inbounds %struct.ucred, %struct.ucred* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ksem*, %struct.ksem** %8, align 8
  %37 = getelementptr inbounds %struct.ksem, %struct.ksem* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ksem*, %struct.ksem** %8, align 8
  %40 = getelementptr inbounds %struct.ksem, %struct.ksem* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ksem*, %struct.ksem** %8, align 8
  %43 = getelementptr inbounds %struct.ksem, %struct.ksem* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ksem*, %struct.ksem** %8, align 8
  %45 = getelementptr inbounds %struct.ksem, %struct.ksem* %44, i32 0, i32 6
  %46 = call i32 @cv_init(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.ksem*, %struct.ksem** %8, align 8
  %48 = getelementptr inbounds %struct.ksem, %struct.ksem* %47, i32 0, i32 2
  %49 = call i32 @vfs_timestamp(i32* %48)
  %50 = load %struct.ksem*, %struct.ksem** %8, align 8
  %51 = getelementptr inbounds %struct.ksem, %struct.ksem* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ksem*, %struct.ksem** %8, align 8
  %54 = getelementptr inbounds %struct.ksem, %struct.ksem* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ksem*, %struct.ksem** %8, align 8
  %56 = getelementptr inbounds %struct.ksem, %struct.ksem* %55, i32 0, i32 4
  store i32 %52, i32* %56, align 4
  %57 = load %struct.ksem*, %struct.ksem** %8, align 8
  %58 = getelementptr inbounds %struct.ksem, %struct.ksem* %57, i32 0, i32 5
  store i32 %52, i32* %58, align 4
  %59 = load %struct.ksem*, %struct.ksem** %8, align 8
  %60 = getelementptr inbounds %struct.ksem, %struct.ksem* %59, i32 0, i32 1
  %61 = call i32 @refcount_init(i32* %60, i32 1)
  %62 = load %struct.ksem*, %struct.ksem** %8, align 8
  store %struct.ksem* %62, %struct.ksem** %4, align 8
  br label %63

63:                                               ; preds = %19, %17
  %64 = load %struct.ksem*, %struct.ksem** %4, align 8
  ret %struct.ksem* %64
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @p31b_getcfg(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.ksem* @malloc(i32, i32, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
